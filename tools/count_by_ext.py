"""
Статистика CSR из riscv-unified-db.

Источники:
  --dir PATH       директория с CSR YAML (по умолчанию csr_spec/csr)
  --profile PATH   профиль (RVA23S64.yaml) — фильтр по mandatory/optional
  --monolith PATH  готовый монолит (reduced.yaml) — по _group

Режимы:
  (без флагов)     — по definedBy (все CSR)
  --priv           — по priv_mode
  --groups         — по _group (из монолита)
  --files          — список файлов
  --all            — все секции: by definedBy + priv_mode + files
"""

import argparse
import glob
import os
import sys
from collections import defaultdict

import yaml

CSR_DIR = "csr_spec/csr"


# ---------------------------------------------------------------------------
# definedBy → список расширений
# ---------------------------------------------------------------------------
def extract_extensions(defined_by):
    """Разворачивает definedBy в список имён расширений."""
    if defined_by is None:
        return []
    if isinstance(defined_by, str):
        return [defined_by]
    if isinstance(defined_by, list):
        out = []
        for item in defined_by:
            out.extend(extract_extensions(item))
        return out
    if isinstance(defined_by, dict):
        # {extension: ...} — разворачиваем вложенный anyOf/allOf/name рекурсивно
        if "extension" in defined_by:
            return extract_extensions(defined_by["extension"])
        # {anyOf: [...]}
        if "anyOf" in defined_by:
            return extract_extensions(defined_by["anyOf"])
        # {allOf: [...]}
        if "allOf" in defined_by:
            return extract_extensions(defined_by["allOf"])
        # {name: X, version: Y} — имя напрямую
        if "name" in defined_by:
            return [defined_by["name"]]
        # param / xlen — не расширения
        if "param" in defined_by:
            return []
        if "xlen" in defined_by:
            return []
        return []
    return []


# ---------------------------------------------------------------------------
# Профиль
# ---------------------------------------------------------------------------
def load_profile(path):
    with open(path) as f:
        return yaml.safe_load(f)


def profile_extensions(profile):
    mandatory = {e["name"] for e in profile.get("mandatory_extensions", [])}
    optional  = {e["name"] for e in profile.get("non_mandatory_extensions", [])}
    allow_extra = profile.get("additional_extensions", True)
    return mandatory, optional, allow_extra


def csr_in_profile(csr, mandatory, optional, allow_extra):
    exts = extract_extensions(csr.get("definedBy"))
    if not exts:
        return True
    allowed = mandatory | (optional if allow_extra else set())
    return any(e in allowed for e in exts)


# ---------------------------------------------------------------------------
# Обход YAML
# ---------------------------------------------------------------------------
def iter_csrs(csr_dir):
    for path in sorted(glob.glob(os.path.join(csr_dir, "**", "*.yaml"),
                                 recursive=True)):
        try:
            with open(path) as f:
                csr = yaml.safe_load(f)
        except (OSError, yaml.YAMLError) as e:
            print(f"WARN: {path}: {e}", file=sys.stderr)
            continue
        if not isinstance(csr, dict):
            continue
        if csr.get("kind") != "csr":
            continue
        if "address" not in csr:
            continue
        yield path, csr


# ---------------------------------------------------------------------------
# Сканирование
# ---------------------------------------------------------------------------
def scan_by_ext(csr_dir, profile=None):
    mandatory, optional, allow_extra = set(), set(), True
    if profile:
        mandatory, optional, allow_extra = profile_extensions(profile)

    by_ext   = defaultdict(list)
    by_priv  = defaultdict(int)
    total    = 0
    filtered = 0

    for path, csr in iter_csrs(csr_dir):
        total += 1
        if profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        filtered += 1
        by_priv[csr.get("priv_mode", "?")] += 1
        exts = extract_extensions(csr.get("definedBy")) or ["<none>"]
        for ext in exts:
            by_ext[ext].append(csr["name"])

    return by_ext, by_priv, total, filtered


def scan_monolith(path):
    with open(path) as f:
        monolith = yaml.safe_load(f)
    by_group = defaultdict(list)
    for csr in monolith:
        by_group[csr.get("_group") or "<none>"].append(csr["name"])
    return by_group


# ---------------------------------------------------------------------------
# Вывод
# ---------------------------------------------------------------------------
def print_by_ext(by_ext, total, filtered, profile_name=None):
    print("=" * 60)
    if profile_name:
        print(f"Profile: {profile_name}")
    print(f"  Total CSRs scanned: {total}")
    if profile_name:
        print(f"  In profile:         {filtered}")
    print(f"  Extensions:         {len(by_ext)}")
    print("=" * 60)
    for ext, names in sorted(by_ext.items(), key=lambda x: -len(x[1])):
        print(f"  {ext:30s} {len(names):4d}")


def print_by_priv(by_priv):
    print("\n" + "=" * 60)
    print("  By priv_mode")
    print("=" * 60)
    for p, n in sorted(by_priv.items(), key=lambda x: -x[1]):
        print(f"  {p:10s} {n:4d}")


def print_by_group(by_group, source):
    print("=" * 60)
    print(f"  Groups ({source})")
    print("=" * 60)
    total = 0
    for g, names in sorted(by_group.items(), key=lambda x: -len(x[1])):
        print(f"  {g:20s} {len(names):4d}")
        total += len(names)
    print(f"  {'TOTAL':20s} {total:4d}")


def print_files(csr_dir):
    print("=" * 60)
    print("  Files")
    print("=" * 60)
    for path, _ in iter_csrs(csr_dir):
        print(os.path.relpath(path, "."))


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dir", default=CSR_DIR,
                        help="Директория с CSR YAML")
    parser.add_argument("--profile",  help="Профиль (RVA23S64.yaml)")
    parser.add_argument("--monolith", help="Монолит (reduced.yaml)")
    parser.add_argument("--priv",   action="store_true",
                        help="По priv_mode")
    parser.add_argument("--groups", action="store_true",
                        help="По _group (из монолита)")
    parser.add_argument("--files",  action="store_true",
                        help="Список файлов")
    parser.add_argument("--all",    action="store_true",
                        help="Все секции: ext + priv + files")
    args = parser.parse_args()

    # --- Группы из монолита ---
    if args.groups:
        if not args.monolith:
            print("ERROR: --groups requires --monolith", file=sys.stderr)
            sys.exit(1)
        by_group = scan_monolith(args.monolith)
        print_by_group(by_group, args.monolith)
        return

    # --- Список файлов ---
    if args.files:
        print_files(args.dir)
        return

    # --- По definedBy (+ опционально priv) ---
    profile = load_profile(args.profile) if args.profile else None
    profile_name = profile.get("name") if profile else None

    by_ext, by_priv, total, filtered = scan_by_ext(args.dir, profile)
    print_by_ext(by_ext, total, filtered, profile_name)

    if args.priv or args.all:
        print_by_priv(by_priv)

    if args.all:
        print_files(args.dir)


if __name__ == "__main__":
    main()