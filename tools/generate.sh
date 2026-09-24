#!/usr/bin/env bash
#
# Полная генерация RAL-модели CSR по профилю.
#
# Использование:
#   tools/generate.sh [профиль]
#
# Профиль по умолчанию: csr_spec/profile/RVA23S64.yaml
#
# Шаги:
#   1. parse_csr.py           -> tools/csr_monolith_filtered.yaml
#   2. reduce_csr.py          -> tools/csr_monolith_reduced.yaml
#   3. gen_one.py (на группу) -> src/csr/csr_<ext>_extension.svh (+ reg_block)
#   4. gen_top.py             -> src/csr/csr_top_reg_block.svh
#   5. csr_pkg.sv             -> src/csr/csr_pkg.sv
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

PROFILE="${1:-csr_spec/profile/RVA23S64.yaml}"
FILTERED="tools/csr_monolith_filtered.yaml"
REDUCED="tools/csr_monolith_reduced.yaml"
CSR_DIR="src/csr"

# Список генерируемых групп (без rv32_only), порядок приоритета.
list_groups() {
  python3 - "$1" <<'PY'
import sys, yaml
mon = yaml.safe_load(open(sys.argv[1]))
prio = ["Sm", "S", "H", "U", "VS"]
seen = []
for c in mon:
    g = c.get("_group")
    if g in (None, "rv32_only", "<none>") or g in seen:
        continue
    seen.append(g)
seen.sort(key=lambda g: (prio.index(g) if g in prio else len(prio), g))
print("\n".join(seen))
PY
}

echo ">>> [1/5] parse_csr: $PROFILE"
python3 tools/parse_csr.py --profile "$PROFILE" \
    --list-files tools/csr_files.txt --monolith "$FILTERED"

echo ">>> [2/5] reduce_csr"
python3 tools/reduce_csr.py --in "$FILTERED" --out "$REDUCED"

echo ">>> [3/5] groups"
GROUP_LIST="$(list_groups "$REDUCED")"
echo "$GROUP_LIST" | sed 's/^/    /'

echo ">>> [4/5] gen_one (последовательно по группам)"
while read -r g; do
  [ -z "$g" ] && continue
  gl="$(echo "$g" | tr '[:upper:]' '[:lower:]')"
  python3 tools/gen_one.py --group "$g" --both \
      --out "$CSR_DIR/csr_${gl}_extension.svh" \
      --reg-block-out "$CSR_DIR/csr_${gl}_reg_block_extension.svh"
done <<< "$GROUP_LIST"

echo ">>> [5/5] gen_top + csr_pkg"
python3 tools/gen_top.py --monolith "$REDUCED" --out "$CSR_DIR/csr_top_reg_block.svh"

python3 - "$REDUCED" "$CSR_DIR/csr_pkg.sv" <<'PY'
import sys, yaml
src, out = sys.argv[1], sys.argv[2]
mon = yaml.safe_load(open(src))
prio = ["Sm", "S", "H", "U", "VS"]
seen = []
for c in mon:
    g = c.get("_group")
    if g in (None, "rv32_only", "<none>") or g in seen:
        continue
    seen.append(g)
seen.sort(key=lambda g: (prio.index(g) if g in prio else len(prio), g))

L = ["//" + "-" * 78,
     "// csr_pkg.sv",
     "//",
     "// Группы = расширения профиля (один CSR -> одно расширение).",
     "// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.",
     "//" + "-" * 78,
     "package csr_pkg;",
     "  import uvm_pkg::*;",
     ""]
for g in seen:
    gl = g.lower()
    L += [f"  // {g}",
          f'  `include "csr_{gl}_extension.svh"',
          f'  `include "csr_{gl}_reg_block_extension.svh"',
          ""]
L += ['  `include "csr_top_reg_block.svh"', "endpackage : csr_pkg", ""]
open(out, "w").write("\n".join(L))
print(f"    wrote {out} ({len(seen)} groups)")
PY

echo ">>> done: $REDUCED -> $CSR_DIR"
