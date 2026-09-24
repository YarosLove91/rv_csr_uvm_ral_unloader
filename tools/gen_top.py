"""
Генератор csr_top_reg_block.svh из редуцированного монолита.

Сканирует монолит, собирает уникальные _group (кроме rv32_only),
генерирует класс csr_top_reg_block с submap'ами и build_<group>().
"""

import argparse
import os
import sys
from collections import defaultdict

import yaml

MONOLITH = "tools/csr_monolith_reduced.yaml"
OUT      = "src/csr/csr_top_reg_block.svh"

# Группы, которые НЕ включаются
EXCLUDE_GROUPS = {"rv32_only", "<none>"}


# ---------------------------------------------------------------------------
# Сбор групп из монолита
# ---------------------------------------------------------------------------
def collect_groups(monolith_path):
    """Возвращает список (group_name, class_name, count)."""
    with open(monolith_path) as f:
        monolith = yaml.safe_load(f)

    by_group = defaultdict(int)
    for csr in monolith:
        g = csr.get("_group")
        if g in EXCLUDE_GROUPS:
            continue
        by_group[g] += 1

    # Сортировка: Sm/S/H/U/VS сначала, затем прочие расширения по алфавиту
    priority = ["Sm", "S", "H", "U", "VS"]

    def sort_key(g):
        rank = priority.index(g) if g in priority else len(priority)
        return (rank, g)

    return sorted(by_group.items(), key=lambda x: sort_key(x[0]))


# ---------------------------------------------------------------------------
# Генерация
# ---------------------------------------------------------------------------
def gen_top(groups):
    lines = []

    lines.append("//" + "-" * 78)
    lines.append("// csr_top_reg_block.svh")
    lines.append("//")
    lines.append("// Единый RAL-блок для всех CSR RVA23S64.")
    lines.append("// Submap'ы по группам.")
    lines.append("//")
    lines.append("// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.")
    lines.append("//" + "-" * 78)
    lines.append("")
    lines.append("class csr_top_reg_block extends uvm_reg_block;")
    lines.append("  `uvm_object_utils( csr_top_reg_block )")
    lines.append("")

    # Поля
    lines.append("  //" + "-" * 74)
    lines.append("  // Подблоки (по группам)")
    lines.append("  //" + "-" * 74)
    for g, _ in groups:
        lines.append(f"  rand csr_{g.lower()}_reg_block {g};")
    lines.append("")

    # csr_map
    lines.append("  //" + "-" * 74)
    lines.append("  // Корневой map")
    lines.append("  //" + "-" * 74)
    lines.append("  uvm_reg_map csr_map;")
    lines.append("")

    # new
    lines.append("  //" + "-" * 74)
    lines.append("  // new")
    lines.append("  //" + "-" * 74)
    lines.append("  function new( string name = \"csr_top_reg_block\" );")
    lines.append("    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );")
    lines.append("  endfunction : new")
    lines.append("")

    # build
    lines.append("  //" + "-" * 74)
    lines.append("  // build")
    lines.append("  //" + "-" * 74)
    lines.append("  virtual function void build();")
    lines.append("    csr_map = create_map(\"csr_map\", 'h0, 8, UVM_LITTLE_ENDIAN, 1);")
    lines.append("")
    for g, _ in groups:
        lines.append(f"    build_{g.lower()}();")
    lines.append("")
    lines.append("    lock_model();")
    lines.append("  endfunction : build")
    lines.append("")

    # build_<group>
    for g, _ in groups:
        gl = g.lower()
        lines.append("  //" + "-" * 74)
        lines.append(f"  // {g}")
        lines.append("  //" + "-" * 74)
        lines.append(f"  protected function void build_{gl}();")
        lines.append(f"    {g} = csr_{gl}_reg_block::type_id::create(\"{g}\");")
        lines.append(f"    {g}.configure( this );")
        lines.append(f"    {g}.build();")
        lines.append("")
        lines.append(f"    csr_map.add_submap( {g}.csr_map, 12'h000 );")
        lines.append(f"  endfunction : build_{gl}")
        lines.append("")

    # get_reg_by_addr
    lines.append("  //" + "-" * 74)
    lines.append("  // Единый поиск регистра по адресу")
    lines.append("  //" + "-" * 74)
    lines.append("  function uvm_reg get_reg_by_addr( bit [31:0] addr );")
    lines.append("    return csr_map.get_reg_by_offset( addr );")
    lines.append("  endfunction : get_reg_by_addr")
    lines.append("")
    lines.append("endclass : csr_top_reg_block")
    lines.append("")

    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--monolith", default=MONOLITH)
    parser.add_argument("--out",      default=OUT)
    args = parser.parse_args()

    if not os.path.isfile(args.monolith):
        print(f"ERROR: {args.monolith} not found", file=sys.stderr)
        sys.exit(1)

    groups = collect_groups(args.monolith)
    if not groups:
        print("ERROR: no groups found", file=sys.stderr)
        sys.exit(1)

    code = gen_top(groups)
    with open(args.out, "w") as f:
        f.write(code)

    print(f"Generated {args.out}")
    print(f"  Groups: {len(groups)}")
    for g, n in groups:
        print(f"    {g:20s} {n:4d}")


if __name__ == "__main__":
    main()