"""
Ручной генератор CSR-классов из монолита.
Один CSR → одно поле на весь регистр.

Режимы:
  gen_one.py <csr_name> [out_file]               — один CSR
  gen_one.py --group <g> --out <f>               — все CSR группы
  gen_one.py --group <g> --reg-block --reg-block-out <f>
                                                 — сборка для csr_reg_block
  gen_one.py --group <g> --both --out <f> --reg-block-out <f2>
                                                 — и регистры, и сборка
"""

import argparse
import sys

import yaml

MONOLITH = "tools/csr_monolith_reduced.yaml"

# Зарезервированные слова SystemVerilog, недопустимые как имена переменных
SV_KEYWORDS = {
    "bit", "byte", "int", "integer", "logic", "reg", "time", "real",
    "realtime", "shortint", "longint", "string", "event", "chandle", "void",
}


def member_name(name):
    """Имя члена reg_block; для ключевых слов SV добавляет суффикс _f."""
    return f"{name}_f" if name in SV_KEYWORDS else name


def gen_class(csr):
    name   = csr["name"]
    addr   = csr["address"]
    length = csr["length"]

    lines = []
    lines.append("//" + "-" * 78)
    lines.append(f"// {name} (0x{addr:03x}) - {name}")
    lines.append("//" + "-" * 78)
    lines.append(f"class {name}_reg extends uvm_reg;")
    lines.append(f"  `uvm_object_utils( {name}_reg )")
    lines.append("")
    lines.append(f"  rand uvm_reg_field {name}_field;")
    lines.append("")
    lines.append(f"  function new( string name = \"{name}_reg\" );")
    lines.append(f"    super.new( .name(name), .n_bits({length}), .has_coverage(UVM_NO_COVERAGE) );")
    lines.append("  endfunction : new")
    lines.append("")
    lines.append("  virtual function void build();")
    lines.append(f"    {name}_field = uvm_reg_field::type_id::create(\"{name}_field\");")
    lines.append(f"    {name}_field.configure( .parent(this),")
    lines.append(f"                            .size({length}),")
    lines.append("                            .lsb_pos(0),")
    lines.append("                            .access(\"RW\"),")
    lines.append("                            .volatile(0),")
    lines.append("                            .reset(64'h0),")
    lines.append("                            .has_reset(1),")
    lines.append("                            .is_rand(1),")
    lines.append("                            .individually_accessible(1) );")
    lines.append("  endfunction : build")
    lines.append(f"endclass : {name}_reg")
    lines.append("")
    return "\n".join(lines)


def gen_reg_block_extension(group, csrs):
    """
    Генерирует csr_<group>_reg_block — uvm_reg_block для группы.
    """
    g = group.lower()
    cls_name = f"csr_{g}_reg_block"

    lines = []
    lines.append("//" + "-" * 78)
    lines.append(f"// {cls_name}.svh")
    lines.append("//")
    lines.append(f"// RAL-модель {group}.")
    lines.append("// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.")
    lines.append("//" + "-" * 78)
    lines.append("")
    lines.append(f"class {cls_name} extends uvm_reg_block;")
    lines.append(f"  `uvm_object_utils( {cls_name} )")
    lines.append("")

    # Поля
    for csr in csrs:
        n = csr["name"]
        lines.append(f"  rand {n}_reg {member_name(n)};")
    lines.append("")
    lines.append("  uvm_reg_map csr_map;")
    lines.append("")
    lines.append(f"  function new( string name = \"{cls_name}\" );")
    lines.append("    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );")
    lines.append("  endfunction : new")
    lines.append("")
    lines.append("  virtual function void build();")

    # Создание регистров
    for csr in csrs:
        n = csr["name"]
        m = member_name(n)
        lines.append(f"    {m} = {n}_reg::type_id::create(\"{n}\");")
        lines.append(f"    {m}.configure( .blk_parent(this) );")
        lines.append(f"    {m}.build();")
        lines.append("")

    # Map
    lines.append("    csr_map = create_map(\"csr_map\", 'h0, 8, UVM_LITTLE_ENDIAN, 1);")
    lines.append("")
    for csr in csrs:
        n = csr["name"]
        a = csr["address"]
        lines.append(f"    csr_map.add_reg({member_name(n)}, 12'h{a:03x}, \"RW\");")
    lines.append("")
    lines.append("    lock_model();")
    lines.append("  endfunction : build")
    lines.append("")
    lines.append(f"endclass : {cls_name}")
    lines.append("")

    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("name", nargs="?", help="Имя CSR (mstatus)")
    parser.add_argument("out", nargs="?", help="Выходной .sv файл (для одного CSR)")
    parser.add_argument("--group", help="Группа (Sm_base)")
    parser.add_argument("--out", dest="out_group", help="Выходной .svh для регистров группы")
    parser.add_argument("--reg-block", action="store_true", help="Генерировать сборку для csr_reg_block")
    parser.add_argument("--reg-block-out", help="Выходной .svh для сборки")
    parser.add_argument("--both", action="store_true", help="Генерировать и регистры, и сборку")
    parser.add_argument("--list", action="store_true",
                        help="Показать CSR группы (требует --group)")

    args = parser.parse_args()

    with open(MONOLITH) as f:
        monolith = yaml.safe_load(f)
    
    if args.list:
        if not args.group:
            print("ERROR: --list requires --group", file=sys.stderr)
            sys.exit(1)
        csrs = [c for c in monolith if c.get("_group") == args.group]
        csrs.sort(key=lambda c: c["address"])
        print(f"Group: {args.group}")
        print(f"Total CSRs: {len(csrs)}")
        for c in csrs:
            nf = len(c.get("fields", {}))
            print(f"  0x{c['address']:03x}  {c['name']:20s}  fields={nf}")
        return

    if args.group:
        csrs = [c for c in monolith if c.get("_group") == args.group]
        if not csrs:
            print(f"ERROR: no CSRs in group {args.group}", file=sys.stderr)
            sys.exit(1)
        csrs.sort(key=lambda c: c["address"])

        gen_regs   = args.both or not args.reg_block
        gen_block  = args.both or args.reg_block

        if gen_regs:
            if not args.out_group:
                print("ERROR: --out required for registers", file=sys.stderr)
                sys.exit(1)
            code = "\n\n".join(gen_class(c) for c in csrs)
            with open(args.out_group, "w") as f:
                f.write(code)
            print(f"Generated {args.out_group} ({len(csrs)} classes)")

        if gen_block:
            if not args.reg_block_out:
                print("ERROR: --reg-block-out required for reg-block", file=sys.stderr)
                sys.exit(1)
            code = gen_reg_block_extension(args.group, csrs)
            with open(args.reg_block_out, "w") as f:
                f.write(code)
            print(f"Generated {args.reg_block_out} ({args.group})")

        return

    if not args.name:
        print("Usage: gen_one.py <csr_name> [out_file]", file=sys.stderr)
        print("       gen_one.py --group <group> --out <file>", file=sys.stderr)
        print("       gen_one.py --group <group> --both --out <f> --reg-block-out <f2>", file=sys.stderr)
        sys.exit(1)

    csr = next((c for c in monolith if c["name"] == args.name), None)
    if csr is None:
        print(f"ERROR: {args.name} not found", file=sys.stderr)
        sys.exit(1)

    out_file = args.out or f"tools/batches/{args.name}_reg.sv"
    code = gen_class(csr)
    with open(out_file, "w") as f:
        f.write(code)
    print(f"Generated {out_file}")


if __name__ == "__main__":
    main()