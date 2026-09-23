#!/usr/bin/env python3
"""
Парсер CSR YAML из riscv-unified-db.
Собирает статистику по priv_mode и definedBy.
Опционально фильтрует по профилю (RVA23S64, RVA23U64) и по расширениям.
"""

import os
import sys
import glob
import argparse
import yaml
from collections import defaultdict

CSR_DIR = "csr_spec/csr"


def extract_extensions(defined_by):
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
        if "extension" in defined_by:
            ext = defined_by["extension"]
            if isinstance(ext, dict):
                return [ext.get("name", "")]
            return [str(ext)]
        if "anyOf" in defined_by:
            return extract_extensions(defined_by["anyOf"])
        if "allOf" in defined_by:
            return extract_extensions(defined_by["allOf"])
        if "param" in defined_by:
            return []
        return []
    return []


def get_group(csr, xlen=64):
    name = csr["name"]
    if xlen == 64:
        if name.endswith("h") and (
            name.startswith("mhpmcounter") or
            name.startswith("mhpmevent") or
            name in ("mcycleh", "minstreth", "mstatush")
        ):
            return None
    if name.startswith("pmp"):
        return "Sm_pmp"
    if name.startswith("mhpmcounter") or name.startswith("mhpmevent"):
        return "Sm_zihpm"
    if name in ("mcycle", "mcycleh", "minstret", "minstreth", "mcountinhibit"):
        return "Sm_zicntr"
    base_m = {
        "mstatus", "misa", "medeleg", "mideleg", "mie", "mtvec",
        "mcounteren", "mscratch", "mepc", "mcause", "mtval", "mip",
        "mvendorid", "marchid", "mimpid", "mhartid", "mconfigptr",
        "mstatush", "mtinst", "mtval2",
    }
    if name in base_m:
        return "Sm_base"
    return "Sm_misc"


def iter_csrs(csr_dir):
    for path in glob.glob(os.path.join(csr_dir, "**", "*.yaml"), recursive=True):
        try:
            with open(path) as f:
                csr = yaml.safe_load(f)
        except Exception as e:
            print(f"WARN: {path}: {e}")
            continue
        if not isinstance(csr, dict):
            continue
        if csr.get("kind") != "csr":
            continue
        if "address" not in csr:
            continue
        yield csr


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


def matches_ext_filter(csr, ext_filter):
    """CSR подходит, если хотя бы одно его расширение в ext_filter."""
    if not ext_filter:
        return True
    exts = extract_extensions(csr.get("definedBy"))
    return any(e in ext_filter for e in exts)


def main():
    parser = argparse.ArgumentParser(
        description="Парсер CSR YAML из riscv-unified-db")
    parser.add_argument("--profile", help="Путь к профилю (RVA23S64.yaml)")
    parser.add_argument("--priv", help="Фильтр по priv_mode (M, S, U, ...)")
    parser.add_argument(
        "--ext", action="append", default=[],
        help="Фильтр по расширениям (можно несколько: --ext Sm --ext C). "
             "Можно списком через запятую: --ext Sm,C")
    args = parser.parse_args()

    # Разбираем --ext Sm,C → {'Sm', 'C'}
    ext_filter = set()
    for item in args.ext:
        for e in item.split(","):
            e = e.strip()
            if e:
                ext_filter.add(e)

    mandatory, optional, allow_extra = set(), set(), True
    if args.profile:
        profile = load_profile(args.profile)
        mandatory, optional, allow_extra = profile_extensions(profile)
        print(f"Profile: {profile.get('name')}")
        print(f"  Mandatory: {len(mandatory)}")
        print(f"  Optional:  {len(optional)}")
        print(f"  Allow extra: {allow_extra}")

    if ext_filter:
        print(f"  Ext filter: {sorted(ext_filter)}")

    if args.priv:
        print(f"  Priv filter: {args.priv}")

    print()

    by_priv = defaultdict(int)
    by_ext = defaultdict(list)
    total_fields = 0
    total_csrs = 0
    filtered = 0

    for csr in iter_csrs(CSR_DIR):
        total_csrs += 1

        if args.profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        if args.priv and csr.get("priv_mode") != args.priv:
            continue
        if not matches_ext_filter(csr, ext_filter):
            continue

        filtered += 1
        name = csr["name"]
        priv = csr.get("priv_mode", "?")
        by_priv[priv] += 1

        exts = extract_extensions(csr.get("definedBy")) or ["<none>"]
        for ext in exts:
            by_ext[ext].append(name)

        total_fields += len(csr.get("fields", {}))

    print(f"Всего CSR: {total_csrs}")
    if args.profile or args.priv or ext_filter:
        print(f"После фильтра: {filtered}")
    print(f"Всего полей: {total_fields}")
    print(f"По priv_mode: " + ", ".join(
        f"{k}={v}" for k, v in sorted(by_priv.items())))
    print(f"\nРасширений (в definedBy): {len(by_ext)}")
    for ext, names in sorted(by_ext.items(), key=lambda x: -len(x[1])):
        print(f"  {ext:15s} {len(names):3d}")

    # M-регистры по группам
    print(f"\n=== M-регистры по группам (RV64) ===")
    m_by_group = defaultdict(list)
    for csr in iter_csrs(CSR_DIR):
        if csr.get("priv_mode") != "M":
            continue
        if args.profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        if not matches_ext_filter(csr, ext_filter):
            continue
        exts = extract_extensions(csr.get("definedBy"))
        if "Sm" not in exts:
            continue
        g = get_group(csr, xlen=64)
        if g is None:
            continue
        m_by_group[g].append(csr["name"])

    for g, names in sorted(m_by_group.items(), key=lambda x: -len(x[1])):
        print(f"  {g:15s} {len(names):3d}")
    print(f"\nВсего M-регистров (RV64): {sum(len(v) for v in m_by_group.values())}")


if __name__ == "__main__":
    main()