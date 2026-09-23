"""
Ручной генератор одного CSR-класса из монолита.
Один CSR → одно поле на весь регистр.
"""

import argparse
import sys

import yaml

MONOLITH = "tools/csr_monolith_reduced.yaml"


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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("name", nargs="?", help="Имя CSR (mstatus)")
    parser.add_argument("out", nargs="?", help="Выходной .sv файл")
    parser.add_argument("--group", help="Группа (Sm_base) — все CSR в файл")
    parser.add_argument("--out", dest="out_group", help="Выходной файл для --group")
    args = parser.parse_args()

    with open(MONOLITH) as f:
        monolith = yaml.safe_load(f)

    if args.group:
        csrs = [c for c in monolith if c.get("_group") == args.group]
        if not csrs:
            print(f"ERROR: no CSRs in group {args.group}", file=sys.stderr)
            sys.exit(1)
        csrs.sort(key=lambda c: c["address"])
        out_file = args.out_group or f"tools/batches/batch_{args.group}.sv"
        code = "\n\n".join(gen_class(c) for c in csrs)
        with open(out_file, "w") as f:
            f.write(code)
        print(f"Generated {out_file} ({len(csrs)} classes)")
        return

    if not args.name:
        print("Usage: gen_one.py <csr_name> [out_file]", file=sys.stderr)
        print("       gen_one.py --group <group> --out <file>", file=sys.stderr)
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