"""
Подсчёт регистров по группам-расширениям.

Один CSR -> одно расширение (поле `_group`, выставлено parse_csr.py).
`rv32_only` (регистры xlen:32) включается в список, но помечается как
негенерируемый.

Использование:
  python3 tools/csr_group_counts.py
  python3 tools/csr_group_counts.py --monolith tools/csr_monolith_reduced.yaml
  python3 tools/csr_group_counts.py --out tools/csr_groups_rva23s64.yaml
"""

import argparse
from collections import Counter

import yaml

MONOLITH = "tools/csr_monolith_reduced.yaml"

# Порядок вывода: Sm/S/H/U/VS, затем остальные по алфавиту
PRIORITY = ["Sm", "S", "H", "U", "VS"]

# Группы, которые не генерируются
EXCLUDE_FROM_GEN = {"rv32_only", "<none>"}


def rank(group):
    base = PRIORITY.index(group) if group in PRIORITY else len(PRIORITY)
    return (base, group)


def load_monolith(path):
    with open(path) as f:
        return yaml.safe_load(f)


def counts_by_group(monolith):
    """Возвращает [(group, count)] без '<none>', в порядке rank()."""
    cnt = Counter(c.get("_group") or "<none>" for c in monolith)
    items = [(g, n) for g, n in cnt.items() if g != "<none>"]
    return sorted(items, key=lambda x: rank(x[0]))


def write_manifest(path, items, profile="RVA23S64", source=MONOLITH):
    lines = [
        "# Группы CSR профиля %s для генерации RAL (по расширениям)." % profile,
        "# Один CSR -> одно расширение; rv32_only — регистры xlen:32.",
        "# Источник: %s" % source,
        "profile: %s" % profile,
        "source: %s" % source,
        "total: %d" % sum(n for _, n in items),
        "",
        "groups:",
    ]
    for g, n in items:
        gen = "false" if g in EXCLUDE_FROM_GEN else "true"
        lines.append(f"  {g}: {{ count: {n}, generate: {gen} }}")
    with open(path, "w") as f:
        f.write("\n".join(lines) + "\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--monolith", default=MONOLITH,
                    help="Редуцированный монолит")
    ap.add_argument("--out", help="Записать YAML-манифест групп")
    args = ap.parse_args()

    items = counts_by_group(load_monolith(args.monolith))
    total = sum(n for _, n in items)
    width = max((len(g) for g, _ in items), default=4)

    print(f"Groups: {len(items)}   Total: {total}")
    for g, n in items:
        tail = "  (generate: false)" if g in EXCLUDE_FROM_GEN else ""
        print(f"  {g:{width}} {n:4d}{tail}")

    if args.out:
        write_manifest(args.out, items, source=args.monolith)
        print(f"Written {args.out}")


if __name__ == "__main__":
    main()
