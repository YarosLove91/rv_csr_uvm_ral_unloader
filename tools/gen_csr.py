"""
Профильный генератор RAL-модели CSR.

Читает профиль (RVA23U64.yaml), собирает mandatory_extensions,
обходит csr_spec/csr/*.yaml, фильтрует по definedBy,
раскладывает по файлам — одно расширение = один файл.
"""

import glob
import os
import sys
from collections import defaultdict

import yaml

PROFILE      = "csr_spec/profile/RVA23U64.yaml"
CSR_DIR      = "csr_spec/csr"
OUT_DIR      = "src/csr"

# Расширения, которые кладём в один файл (синонимы/семейства)
# Например, Smepmp и Sm — разные, но оба дают PMP
EXT_ALIASES = {
    # "Smepmp": "Sm",  # если хочешь объединять
}

# ============================================================================
# Чтение профиля
# ============================================================================
def load_profile(path):
    with open(path) as f:
        profile = yaml.safe_load(f)
    mandatory = {e["name"] for e in profile.get("mandatory_extensions", [])}
    params = {}
    reqs = profile.get("requirements", {}).get("param", {}).get("allOf", [])
    for req in reqs:
        name = req.get("name")
        if "equal" in req:
            params[name] = req["equal"]
        elif "includes" in req:
            params[name] = req["includes"]
    return mandatory, params

# ============================================================================
# Фильтрация CSR
# ============================================================================
def normalize_defined_by(value):
    """Приводит definedBy к списку строк."""
    if value is None:
        return []
    if isinstance(value, str):
        return [value]
    if isinstance(value, list):
        return [v for v in value if isinstance(v, str)]
    # Сложные условия (allOf/anyOf) — пока не поддерживаем
    return []

def csr_in_profile(csr, mandatory):
    """CSR входит в профиль, если его definedBy пересекается с mandatory."""
    exts = normalize_defined_by(csr.get("definedBy"))
    if not exts:
        # Если definedBy нет — считаем, что CSR входит по умолчанию
        return True
    return any(e in mandatory for e in exts)

def get_extension_for_csr(csr):
    """Определяет, в какой файл положить CSR — по его definedBy."""
    exts = normalize_defined_by(csr.get("definedBy"))
    if not exts:
        return "misc"
    # Берём первое расширение из definedBy, которое есть в EXT_ALIASES или само
    ext = exts[0]
    return EXT_ALIASES.get(ext, ext)

# ============================================================================
# Генерация UVM-полей
# ============================================================================
def map_access(udb_type):
    if udb_type in ("RO", "RO-H"):
        return "RO"
    return "RW"

def get_reset(fspec):
    rv = fspec.get("reset_value", fspec.get("reset_value()", 0))
    if rv == "UNDEFINED_LEGAL" or rv is None:
        return 0
    if isinstance(rv, str):
        try:
            return int(rv, 0)
        except ValueError:
            return 0
    return rv

def get_field_location(fspec, params):
    """Учитывает location_rv32 / location_rv64."""
    if "location" in fspec:
        return fspec["location"]
    if "location_rv64" in fspec:
        return fspec["location_rv64"]
    if "location_rv32" in fspec:
        return fspec["location_rv32"]
    return 0

# Зарезервированные слова SystemVerilog, которые нельзя использовать как имена
SV_KEYWORDS = {
    "int", "integer", "time", "bit", "logic", "reg", "byte",
    "shortint", "longint", "real", "shortreal", "realtime", "string",
    "chandle", "event", "void", "class", "module", "endmodule",
    "package", "endpackage", "function", "endfunction", "task", "endtask",
    "begin", "end", "if", "else", "case", "endcase", "for", "while",
    "do", "repeat", "forever", "fork", "join", "join_any", "join_none",
    "return", "break", "continue", "typedef", "enum", "struct", "union",
    "rand", "randc", "constraint", "virtual", "pure", "local", "protected",
    "static", "automatic", "new", "super", "this", "null",
    "input", "output", "inout", "ref", "wire", "tri", "wand", "wor",
    "supply0", "supply1", "signed", "unsigned", "parameter", "localparam",
    "genvar", "generate", "endgenerate", "assign", "initial", "final",
    "always", "always_comb", "always_ff", "always_latch",
    "posedge", "negedge", "edge", "or", "and", "not", "xor", "xnor",
    "nand", "nor", "buf", "bufif0", "bufif1", "notif0", "notif1",
    "casex", "casez", "endprimitive", "primitive", "specify", "endspecify",
    "table", "endtable", "config", "endconfig", "design", "instance",
    "liblist", "cell", "use", "library", "incdir", "include",
    "default", "clocking", "endclocking", "modport", "endmodport",
    "interface", "endinterface", "program", "endprogram",
    "property", "endproperty", "sequence", "endsequence",
    "covergroup", "endgroup", "coverpoint", "cross", "bins",
    "assert", "assume", "cover", "restrict", "expect",
    "wait", "disable", "iff", "unique", "unique0", "priority",
    "let", "checker", "endchecker", "randcase", "randsequence",
    "extern", "export", "import", "context", "type", "var",
    "with", "inside", "matches", "dist", "solve", "before",
    "soft", "hard", "std", "process", "mailbox", "semaphore",
    # типы из UVM
    "uvm_reg", "uvm_reg_field", "uvm_reg_block", "uvm_reg_map",
    "uvm_component", "uvm_object", "uvm_sequence", "uvm_driver",
    "uvm_monitor", "uvm_scoreboard", "uvm_env", "uvm_test",
}

def sanitize(name):
    """Приводит имя к нижнему регистру и экранирует SV-ключевые слова."""
    s = name.lower().replace(" ", "_")
    if s in SV_KEYWORDS:
        s = s + "_f"
    return s

# ============================================================================
# Генерация класса регистра
# ============================================================================
def gen_reg(f, csr, params):
    name   = csr["name"]
    addr   = csr.get("address", 0)
    length = csr.get("length", 64)
    if length in ("MXLEN", "SXLEN", "VSXLEN", "XLEN"):
        length = 64
    long_name = csr.get("long_name", "")
    cls = f"{name}_reg"

    f.write("//------------------------------------------------------------------------------\n")
    f.write(f"// {name} (0x{addr:03x}) - {long_name}\n")
    f.write("//------------------------------------------------------------------------------\n")
    f.write(f"class {cls} extends uvm_reg;\n")
    f.write(f"  `uvm_object_utils( {cls} )\n\n")

    fields = csr.get("fields", {})
    if not fields:
        fields = {f"{name}_field": {
            "location": 0, "length": length, "type": "RW", "reset_value": 0,
        }}

    for fname in fields:
        f.write(f"  rand uvm_reg_field {sanitize(fname)};\n")
    f.write("\n")

    f.write(f"  function new( string name = \"{cls}\" );\n")
    f.write(f"    super.new( .name(name), .n_bits({length}), .has_coverage(UVM_NO_COVERAGE) );\n")
    f.write("  endfunction : new\n\n")

    f.write("  virtual function void build();\n")
    for fname, fspec in fields.items():
        floc   = get_field_location(fspec, params)
        flen   = fspec.get("length", 1)
        ftype  = fspec.get("type", "RW")
        #freset = get_reset(fspec)
        faccess = map_access(ftype)
        fvar = sanitize(fname)

        f.write(f"    {fvar} = uvm_reg_field::type_id::create(\"{fvar}\");\n")
        f.write(f"    {fvar}.configure( .parent(this),\n")
        f.write(f"                       .size({flen}),\n")
        f.write(f"                       .lsb_pos({floc}),\n")
        f.write(f"                       .access(\"{faccess}\"),\n")
        f.write("                       .volatile(0),\n")
        f.write("                       .reset(64'h{freset:x}),\n")
        f.write("                       .has_reset(1),\n")
        f.write("                       .is_rand(1),\n")
        f.write("                       .individually_accessible(1) );\n\n")
    f.write("  endfunction : build\n")
    f.write(f"endclass : {cls}\n\n")

# ============================================================================
# Main
# ============================================================================
def main():
    if not os.path.isfile(PROFILE):
        print(f"ERROR: profile {PROFILE} not found", file=sys.stderr)
        sys.exit(1)

    mandatory, params = load_profile(PROFILE)
    print(f"Profile: {PROFILE}")
    print(f"  Mandatory extensions: {len(mandatory)}")
    print(f"  Params: {params}")

    # Сбор CSR по расширениям
    by_ext = defaultdict(list)
    total = 0
    filtered = 0

    for path in glob.glob(os.path.join(CSR_DIR, "**", "*.yaml"), recursive=True):
        try:
            with open(path) as fh:
                csr = yaml.safe_load(fh)
        except (OSError, yaml.YAMLError) as e:
            print(f"WARN: skip {path}: {e}", file=sys.stderr)
            continue
        if not isinstance(csr, dict):
            continue
        if csr.get("kind") != "csr":
            continue
        if "address" not in csr:
            continue

        # === ВРЕМЕННЫЙ КОСТЫЛЬ: только machine-регистры ===
        if csr.get("priv_mode") != "M":
            continue
        # =================================================

        total += 1

        if not csr_in_profile(csr, mandatory):
            continue

        filtered += 1
        ext = get_extension_for_csr(csr)
        by_ext[ext].append(csr)

    print(f"  Total CSRs scanned: {total}")
    print(f"  CSRs in profile: {filtered}")
    print(f"  Extensions found: {len(by_ext)}")

    # Генерация по расширениям
    os.makedirs(OUT_DIR, exist_ok=True)
    ext_files = []

    for ext, csrs in sorted(by_ext.items()):
        csrs.sort(key=lambda c: c.get("address", 0))
        fname = f"csr_{sanitize(ext)}_extension.svh"
        path  = os.path.join(OUT_DIR, fname)
        with open(path, "w") as f:
            f.write("//------------------------------------------------------------------------------\n")
            f.write(f"// {fname}\n")
            f.write("//\n")
            f.write("// АВТОГЕНЕРАЦИЯ из riscv-unified-db. Не редактировать вручную.\n")
            f.write(f"// Расширение: {ext}, регистров: {len(csrs)}\n")
            f.write("//------------------------------------------------------------------------------\n\n")
            for csr in csrs:
                gen_reg(f, csr, params)
        ext_files.append((ext, fname, len(csrs)))
        print(f"  Generated {fname}: {len(csrs)} CSRs")

    # Обновление csr_pkg.sv
    pkg_path = os.path.join(OUT_DIR, "csr_pkg.sv")
    with open(pkg_path, "w") as f:
        f.write("//------------------------------------------------------------------------------\n")
        f.write("// csr_pkg.sv\n")
        f.write("//\n")
        f.write("// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.\n")
        f.write("//------------------------------------------------------------------------------\n")
        f.write("package csr_pkg;\n")
        f.write("  import uvm_pkg::*;\n\n")
        for ext, fname, _ in ext_files:
            f.write(f"  `include \"{fname}\"\n")
        f.write("\n  `include \"csr_reg_block.svh\"\n")
        f.write("\nendpackage : csr_pkg\n")
    print(f"Generated {pkg_path}")

if __name__ == "__main__":
    main()