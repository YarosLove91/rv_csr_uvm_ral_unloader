"""
Редусер монолита CSR: убирает всё, что не нужно для RAL-генерации.
Вход:  монолит из parse_csr.py (--monolith)
Выход: компактный монолит (--out)
"""

import argparse

import yaml


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

    # "35-34"
    if isinstance(loc, str) and "-" in loc:
        hi, lo = loc.split("-")
        hi = int(hi.strip())
        lo = int(lo.strip())
        return (lo, hi - lo + 1)

    # Число
    if isinstance(loc, int):
        return (loc, 1)

    # Строка с числом
    if isinstance(loc, str):
        try:
            return (int(loc), 1)
        except ValueError:
            return (0, 1)

    return (0, 1)


def map_access(ftype):
    """Мапит UDB type в UVM access."""
    if ftype is None:
        return "RW"
    if ftype in ("RO", "RO-H"):
        return "RO"
    return "RW"


def get_reset(fspec):
    """Возвращает reset_value как число."""
    rv = fspec.get("reset_value")
    if rv is None:
        rv = fspec.get("reset_value()")
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


def reduce_csr(csr):
    """Прореживает один CSR."""
    out = {
        "name":     csr.get("name"),
        "address":  csr.get("address"),
        "length":   csr.get("length"),
        "priv_mode": csr.get("priv_mode"),
        "_group":   csr.get("_group"),
        "_source":  csr.get("_source"),
        "fields":   {},
    }

    # Длина: MXLEN/SXLEN/XLEN → 64
    if out["length"] in ("MXLEN", "SXLEN", "VSXLEN", "XLEN", None):
        out["length"] = 64

    fields = csr.get("fields", {})
    for fname, fspec in fields.items():
        lsb, size = parse_location(fspec, xlen=64)
        ftype     = fspec.get("type")
        if ftype is None and "type()" in fspec:
            ftype = "RW"  # IDL не вычисляем
        freset = get_reset(fspec)

        out["fields"][fname] = {
            "_lsb": lsb,
            "_size": size,
            "type": map_access(ftype),
            "reset_value": freset,
        }

    return out


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--in", dest="inp", required=True,
                        help="Входной монолит (--monolith)")
    parser.add_argument("--out", dest="out", required=True,
                        help="Выходной монолит (компактный)")
    args = parser.parse_args()

    with open(args.inp) as f:
        monolith = yaml.safe_load(f)

    reduced = [reduce_csr(csr) for csr in monolith]

    with open(args.out, "w") as f:
        yaml.dump(reduced, f, allow_unicode=True,
                  default_flow_style=False, sort_keys=False)

    print(f"Reduced {len(reduced)} CSRs → {args.out}")
    total_fields = sum(len(c["fields"]) for c in reduced)
    print(f"Total fields: {total_fields}")


if __name__ == "__main__":
    main()