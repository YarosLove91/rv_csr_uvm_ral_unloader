"""
Готовит батч для одного вызова ИИ агента .
Берёт CSR указанной группы из редуцированного монолита,
формирует файл с system + user промптом.

Если --batch-size не задан — вся группа в один батч.
Если --batch-size N — группа режется на батчи по N CSR,
и --batch K выбирает K-й батч.
"""

import argparse
import os
import sys

import yaml

MONOLITH_PATH = "tools/csr_monolith_reduced.yaml"
PROMPT_PATH   = "tools/prompts/gen_csr.md"
BATCH_DIR     = "tools/batches"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--group", required=True,
                        help="Группа (Sm_base, Sm_pmp, Sm_zihpm, Sm_zicntr)")
    parser.add_argument("--list", action="store_true",
                        help="Показать CSR в группе и выйти")
    parser.add_argument("--batch-size", type=int, default=None,
                        help="Размер батча (если None — вся группа)")
    parser.add_argument("--batch", type=int, default=1,
                        help="Номер батча (1-based), если --batch-size задан")
    parser.add_argument("--out-suffix", default="",
                        help="Суффикс к имени файла (для различения версий)")
    args = parser.parse_args()

    # Читаем монолит
    with open(MONOLITH_PATH) as f:
        monolith = yaml.safe_load(f)

    # Фильтр по группе
    csrs = [c for c in monolith if c.get("_group") == args.group]
    if not csrs:
        print(f"ERROR: no CSRs in group {args.group}", file=sys.stderr)
        print("Доступные группы:", file=sys.stderr)
        groups = sorted({c.get("_group") for c in monolith if c.get("_group")})
        for g in groups:
            n = sum(1 for c in monolith if c.get("_group") == g)
            print(f"  {g:15s} {n:3d}", file=sys.stderr)
        sys.exit(1)

    csrs.sort(key=lambda c: c.get("address", 0))

    # Нарезка на батчи
    if args.batch_size:
        batches = [csrs[i:i+args.batch_size]
                   for i in range(0, len(csrs), args.batch_size)]
    else:
        batches = [csrs]

    if args.list:
        print(f"Group: {args.group}")
        print(f"Total CSRs: {len(csrs)}")
        if args.batch_size:
            print(f"Batch size: {args.batch_size}")
            print(f"Batches: {len(batches)}")
            for i, b in enumerate(batches, 1):
                names = ", ".join(c["name"] for c in b)
                total_fields = sum(len(c.get("fields", {})) for c in b)
                print(f"  Batch {i:2d}: {len(b):3d} CSRs, "
                      f"{total_fields:3d} fields — {names}")
        else:
            for c in csrs:
                nf = len(c.get("fields", {}))
                print(f"  0x{c.get('address', 0):03x}  {c['name']:20s}  fields={nf}")
        return

    # Выбор батча
    if args.batch < 1 or args.batch > len(batches):
        print(f"ERROR: batch {args.batch} out of range (1..{len(batches)})",
              file=sys.stderr)
        sys.exit(1)

    batch = batches[args.batch - 1]
    total_fields = sum(len(c.get("fields", {})) for c in batch)

    # Читаем system-промпт
    with open(PROMPT_PATH) as f:
        system_prompt = f.read()

    # Формируем user-промпт
    user_prompt = "## CSR для генерации\n\n"
    for csr in batch:
        user_prompt += f"```yaml\n{yaml.dump(csr, allow_unicode=True, sort_keys=False)}\n```\n\n"
    user_prompt += (
        f"Сгенерируй SystemVerilog-класс для КАЖДОГО из {len(batch)} CSR выше, "
        "разделяя пустой строкой. Никаких пояснений."
    )

    # Имя файла
    suffix = args.out_suffix
    if args.batch_size:
        suffix = f"_b{args.batch:02d}" + suffix
    out_path = os.path.join(BATCH_DIR, f"batch_{args.group}{suffix}.txt")

    os.makedirs(BATCH_DIR, exist_ok=True)
    with open(out_path, "w") as f:
        f.write("=" * 80 + "\n")
        f.write(f"GROUP: {args.group}")
        if args.batch_size:
            f.write(f"  |  BATCH: {args.batch}/{len(batches)}")
        f.write(f"  |  CSRs: {len(batch)}  |  FIELDS: {total_fields}\n")
        f.write("=" * 80 + "\n\n")
        f.write("=" * 80 + "\n")
        f.write("SYSTEM PROMPT\n")
        f.write("=" * 80 + "\n\n")
        f.write(system_prompt)
        f.write("\n\n")
        f.write("=" * 80 + "\n")
        f.write("USER PROMPT\n")
        f.write("=" * 80 + "\n\n")
        f.write(user_prompt)

    print(f"Group:  {args.group}")
    if args.batch_size:
        print(f"Batch:  {args.batch}/{len(batches)} (size={args.batch_size})")
    print(f"CSRs:   {len(batch)}")
    print(f"Fields: {total_fields}")
    print(f"Names:  {', '.join(c['name'] for c in batch)}")
    print(f"\nЗаписан: {out_path}")
    print("Скопируй содержимое в ИИ агента.")


if __name__ == "__main__":
    main()