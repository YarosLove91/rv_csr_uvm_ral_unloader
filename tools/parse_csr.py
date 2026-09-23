"""
Парсер CSR YAML из riscv-unified-db.

Собирает статистику по priv_mode и definedBy.
Опционально фильтрует по профилю (RVA23S64, RVA23U64) и по расширениям.
Фильтрует поля внутри CSR по definedBy и xlen.
Может выгружать:
  - список использованных .yaml файлов (--list-files)
  - монолитный YAML со всеми CSR (--monolith)
"""

import argparse
import glob
import os
import sys
from collections import defaultdict

import yaml

CSR_DIR = "csr_spec/csr"

# Расширения, которые принудительно исключаются (для отладки).
# По умолчанию пусто.
EXCLUDE_EXTENSIONS = set()


# ============================================================================
# Извлечение расширений из definedBy
# ============================================================================
def extract_extensions(defined_by):
    """Извлекает список имён расширений из definedBy (любая форма)."""
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
                if "name" in ext:
                    return [ext["name"]]
                if "anyOf" in ext:
                    out = []
                    for e in ext["anyOf"]:
                        if isinstance(e, dict) and "name" in e:
                            out.append(e["name"])
                    return out
            return [str(ext)]
        if "anyOf" in defined_by:
            return extract_extensions(defined_by["anyOf"])
        if "allOf" in defined_by:
            return extract_extensions(defined_by["allOf"])
        if "param" in defined_by:
            return []
        if "xlen" in defined_by:
            return []
        return []
    return []


# ============================================================================
# Группировка M-регистров
# ============================================================================
def get_group(csr, xlen=64):
    """Определяет группу для генерации (только для M-регистров расширения Sm)."""
    name = csr["name"]
    priv = csr.get("priv_mode", "?")

    # RV32-only (h-версии)
    if (xlen == 64
            and name.endswith("h")
            and (name.startswith(("mhpmcounter", "mhpmevent"))
                 or name in ("mcycleh", "minstreth", "mstatush"))):
        return "rv32_only"

    # PMP
    if name.startswith("pmp"):
        return "Sm_pmp"

    # Zihpm counters
    if name.startswith(("mhpmcounter", "mhpmevent")):
        return "Sm_zihpm"

    # Zicntr
    if name in ("mcycle", "mcycleh", "minstret", "minstreth", "mcountinhibit"):
        return "Sm_zicntr"

    # Базовая M
    base_m = {
        "mstatus", "misa", "medeleg", "mideleg", "mie", "mtvec",
        "mcounteren", "mscratch", "mepc", "mcause", "mtval", "mip",
        "mvendorid", "marchid", "mimpid", "mhartid", "mconfigptr",
    }
    if name in base_m:
        return "Sm_base"

    # Fallback по priv_mode
    if priv == "M":
        return "Sm_misc"
    if priv == "S":
        return "S_misc"
    if priv == "U":
        return "U_misc"
    if priv == "VS":
        return "VS_misc"
    return "misc"


# ============================================================================
# Итераторы
# ============================================================================
def iter_csr_paths(csr_dir):
    """Итератор по (path, csr)."""
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


# ============================================================================
# Профиль
# ============================================================================
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
    if not ext_filter:
        return True
    exts = extract_extensions(csr.get("definedBy"))
    return any(e in ext_filter for e in exts)


# ============================================================================
# Фильтрация полей внутри CSR
# ============================================================================
def condition_matches(cond, mandatory, optional, allow_extra, xlen=64):
    """Проверяет condition (definedBy) на соответствие профилю."""
    if cond is None:
        return True

    if isinstance(cond, str):
        if cond in EXCLUDE_EXTENSIONS:
            return False
        allowed = mandatory | (optional if allow_extra else set())
        return cond in allowed

    if isinstance(cond, list):
        return all(
            condition_matches(c, mandatory, optional, allow_extra, xlen)
            for c in cond
        )

    if isinstance(cond, dict):
        # xlen
        if "xlen" in cond:
            return cond["xlen"] == xlen

        # extension
        if "extension" in cond:
            ext = cond["extension"]
            if isinstance(ext, dict):
                if "name" in ext:
                    name = ext["name"]
                    if name in EXCLUDE_EXTENSIONS:
                        return False
                    allowed = mandatory | (optional if allow_extra else set())
                    return name in allowed
                if "anyOf" in ext:
                    allowed = mandatory | (optional if allow_extra else set())
                    return any(
                        e.get("name") in allowed
                        and e.get("name") not in EXCLUDE_EXTENSIONS
                        for e in ext["anyOf"]
                    )
            return False

        # anyOf
        if "anyOf" in cond:
            return any(
                condition_matches(c, mandatory, optional, allow_extra, xlen)
                for c in cond["anyOf"]
            )

        # allOf
        if "allOf" in cond:
            return all(
                condition_matches(c, mandatory, optional, allow_extra, xlen)
                for c in cond["allOf"]
            )

        # param — не фильтруем
        return "param" in cond


def field_in_profile(field, mandatory, optional, allow_extra, xlen=64):
    """Поле включается, если его definedBy проходит фильтр."""
    db = field.get("definedBy")
    if db is None:
        return True
    return condition_matches(db, mandatory, optional, allow_extra, xlen)


def parse_location(fspec, xlen=64):
    """Возвращает (lsb, size) из location/location_rv32/location_rv64."""
    loc = None
    if xlen == 64 and "location_rv64" in fspec:
        loc = fspec["location_rv64"]
    elif xlen == 32 and "location_rv32" in fspec:
        loc = fspec["location_rv32"]
    elif "location" in fspec:
        loc = fspec["location"]

    if loc is None:
        return (0, 1)

    if isinstance(loc, str) and "-" in loc:
        hi, lo = loc.split("-")
        hi = int(hi.strip())
        lo = int(lo.strip())
        return (lo, hi - lo + 1)

    if isinstance(loc, int):
        return (loc, 1)

    if isinstance(loc, str):
        try:
            return (int(loc), 1)
        except ValueError:
            return (0, 1)

    return (0, 1)

def normalize_reset(rv):
    """Приводит reset_value к числу."""
    if rv is None:
        return 0
    if rv == "UNDEFINED_LEGAL":
        return 0
    if isinstance(rv, int):
        return rv
    if isinstance(rv, str):
        try:
            return int(rv, 0)
        except ValueError:
            return 0
    return 0


def filter_fields(csr, mandatory, optional, allow_extra, xlen=64):
    """Возвращает копию CSR с отфильтрованными полями."""
    fields = csr.get("fields", {})
    if not fields:
        return csr

    filtered = {}
    for fname, fspec in fields.items():
        if not field_in_profile(fspec, mandatory, optional, allow_extra, xlen):
            continue
        clean = dict(fspec)

        # type() → RW
        if "type()" in clean and "type" not in clean:
            clean["type"] = "RW"

        # Нормализуем reset_value
        if "reset_value" in clean:
            clean["reset_value"] = normalize_reset(clean["reset_value"])
        elif "reset_value()" in clean:
            clean["reset_value"] = 0
        else:
            clean["reset_value"] = 0

        # Вычисляем lsb и size
        lsb, size = parse_location(fspec, xlen)
        clean["_lsb"] = lsb
        clean["_size"] = size

        filtered[fname] = clean

    result = dict(csr)
    result["fields"] = filtered
    return result


# ============================================================================
# Main
# ============================================================================
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", help="Путь к профилю")
    parser.add_argument("--priv", help="Фильтр по priv_mode")
    parser.add_argument("--ext", action="append", default=[],
                        help="Фильтр по расширениям (--ext Sm,C)")
    parser.add_argument("--list-files", help="Записать список .yaml в файл")
    parser.add_argument("--monolith", help="Записать монолитный YAML в файл")
    args = parser.parse_args()

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

    used_paths = []
    monolith = []
    by_priv = defaultdict(int)
    by_ext = defaultdict(list)
    total_fields = 0
    total_csrs = 0
    filtered = 0

    for path, csr in iter_csr_paths(CSR_DIR):
        total_csrs += 1

        if args.profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        if args.priv and csr.get("priv_mode") != args.priv:
            continue
        if not matches_ext_filter(csr, ext_filter):
            continue

        filtered += 1
        used_paths.append(path)

        # Фильтрация полей
        if args.profile:
            csr = filter_fields(csr, mandatory, optional, allow_extra, xlen=64)

        # Подсчёт после фильтрации
        total_fields += len(csr.get("fields", {}))
        by_priv[csr.get("priv_mode", "?")] += 1
        exts = extract_extensions(csr.get("definedBy")) or ["<none>"]
        for ext in exts:
            by_ext[ext].append(csr["name"])

        # Монолит
        entry = dict(csr)
        entry["_source"] = os.path.relpath(path, CSR_DIR)
        entry["_group"] = get_group(csr, xlen=64)
        monolith.append(entry)

    print(f"Всего CSR: {total_csrs}")
    if args.profile or args.priv or ext_filter:
        print(f"После фильтра: {filtered}")
    print(f"Всего полей: {total_fields}")
    print("По priv_mode: " + ", ".join(
        f"{k}={v}" for k, v in sorted(by_priv.items())))
    print(f"\nРасширений (в definedBy): {len(by_ext)}")
    for ext, names in sorted(by_ext.items(), key=lambda x: -len(x[1])):
        print(f"  {ext:15s} {len(names):3d}")

    # --- M-регистры по группам ---
    print("\n=== M-регистры по группам (RV64) ===")
    m_by_group = defaultdict(list)
    for path, csr in iter_csr_paths(CSR_DIR):
        if csr.get("priv_mode") != "M":
            continue
        if args.profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        if not matches_ext_filter(csr, ext_filter):
            continue
        g = get_group(csr, xlen=64)
        if g is None or g == "rv32_only":
            continue
        m_by_group[g].append(csr["name"])

    for g, names in sorted(m_by_group.items(), key=lambda x: -len(x[1])):
        print(f"  {g:15s} {len(names):3d}")
    print(f"\nВсего M-регистров (RV64): {sum(len(v) for v in m_by_group.values())}")

    # --- CSR по ВСЕМ группам ---
    print("\n=== CSR по группам (все) ===")
    all_by_group = defaultdict(list)
    for path, csr in iter_csr_paths(CSR_DIR):
        if args.profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        if not matches_ext_filter(csr, ext_filter):
            continue
        g = get_group(csr, xlen=64)
        if g is None:
            g = "<none>"
        all_by_group[g].append(csr["name"])

    for g, names in sorted(all_by_group.items(), key=lambda x: -len(x[1])):
        print(f"  {g:15s} {len(names):3d}")
    print(f"\nВсего CSR по группам: "
          f"{sum(len(v) for v in all_by_group.values())}")

    # --- Группы x priv_mode ---
    print("\n=== Группы x priv_mode ===")
    group_priv = defaultdict(lambda: defaultdict(list))
    for path, csr in iter_csr_paths(CSR_DIR):
        if args.profile and not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        if not matches_ext_filter(csr, ext_filter):
            continue
        g = get_group(csr, xlen=64)
        if g is None:
            g = "<none>"
        p = csr.get("priv_mode", "?")
        group_priv[g][p].append(csr["name"])

    for g in sorted(group_priv.keys(),
                    key=lambda x: -sum(len(v) for v in group_priv[x].values())):
        privs = group_priv[g]
        total_g = sum(len(v) for v in privs.values())
        parts = ", ".join(f"{p}={len(v)}" for p, v in sorted(privs.items()))
        print(f"  {g:15s} {total_g:3d}  ({parts})")

    # --- Выгрузка ---
    if args.list_files:
        with open(args.list_files, "w") as f:
            f.writelines(os.path.relpath(p, ".") + "\n" for p in used_paths)
        print(f"\nЗаписан список файлов: {args.list_files} ({len(used_paths)})")

    if args.monolith:
        monolith.sort(key=lambda c: c.get("address", 0))
        with open(args.monolith, "w") as f:
            yaml.dump(monolith, f, allow_unicode=True,
                      default_flow_style=False, sort_keys=False)
        print(f"Записан монолит:      {args.monolith} ({len(monolith)} CSR)")

if __name__ == "__main__":
    main()