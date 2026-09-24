# Контекст: UVM RAL для RVA23S64 (Verilator)

Дата: 2026-09-24
Рабочая директория: `/home/m.yaroslove/Work/test_RAL`

## Цель
Генерация RAL-модели CSR из спецификации `csr_spec/` (riscv-unified-db)
по профилю **RVA23S64** и прогон probe-тестов в UVM/Verilator.

## Пайплайн
```
csr_spec/csr/**/*.yaml
  │  parse_csr.py   → tools/csr_monolith_filtered.yaml   (фильтр + группировка)
  │  reduce_csr.py  → tools/csr_monolith_reduced.yaml    (компактный монолит)
  │  gen_one.py     → src/csr/csr_<ext>_extension.svh    (+ reg_block)
  │  gen_top.py     → src/csr/csr_top_reg_block.svh
  └  count_by_ext.py / csr_group_counts.py               (статистика)
```

## Команды
```bash
# полный монолит (RVA23S64)
python3 tools/parse_csr.py --profile csr_spec/profile/RVA23S64.yaml \
    --list-files tools/csr_files.txt --monolith tools/csr_monolith_filtered.yaml
python3 tools/reduce_csr.py --in tools/csr_monolith_filtered.yaml \
    --out tools/csr_monolith_reduced.yaml

# генерация группы/расширения
python3 tools/gen_one.py --group Sm --both \
    --out src/csr/csr_sm_extension.svh \
    --reg-block-out src/csr/csr_sm_reg_block_extension.svh
python3 tools/gen_top.py --monolith tools/csr_monolith_reduced.yaml \
    --out src/csr/csr_top_reg_block.svh

# статистика групп
python3 tools/csr_group_counts.py [--out tools/csr_groups_rva23s64.yaml]
python3 tools/count_by_ext.py --profile csr_spec/profile/RVA23S64.yaml --priv

# сборка и тесты
make uvm_run TEST_NAME=probe_sm_zicntr_test
```

## Профили (наборы расширений)
| Профиль | mandatory | optional | CSR |
|---|---|---|---|
| RVA23S64 | 79 | 11 | 356 |
| RVA23U64 | 53 | 18 | 81 |
| без профиля | — | — | 404 (27 расширений) |

## Запуск тестов
Общий вид: `make uvm_run TEST_NAME=<test>`.

| Тест | Расширения | Регистров |
|---|---|---|
| `probe_sm_base_test` | Sm/S/U | 17 |
| `probe_sm_zicntr_test` | Sm | 3 |
| `probe_sm_misc_test` | Sm/H/Sdtrig | 11 |
| `probe_s_test` | S | 14 |
| `probe_h_test` | H | 22 |
| `probe_u_test` | U | 1 |
| `probe_f_test` | F | 3 |
| `probe_sdtrig_test` | Sdtrig | 7 |
| `probe_sscofpmf_test` | Sscofpmf | 1 |
| `probe_ssstateen_test` | Ssstateen | 4 |
| `probe_sstc_test` | Sstc | 1 |
| `probe_zicntr_test` | Zicntr | 3 |
| `probe_zihpm_test` | Zihpm | 29 |
| `probe_zvl32b_test` | Zvl32b | 7 |
| `probe_all_test` | все (по адресам) | 243 |

```bash
make uvm_run TEST_NAME=probe_all_test
make uvm_run TEST_NAME=probe_sm_base_test
make uvm_run TEST_NAME=probe_sm_zicntr_test
make uvm_run TEST_NAME=probe_sm_misc_test
make uvm_run TEST_NAME=probe_s_test
make uvm_run TEST_NAME=probe_h_test
make uvm_run TEST_NAME=probe_u_test
make uvm_run TEST_NAME=probe_f_test
make uvm_run TEST_NAME=probe_sdtrig_test
make uvm_run TEST_NAME=probe_sscofpmf_test
make uvm_run TEST_NAME=probe_ssstateen_test
make uvm_run TEST_NAME=probe_sstc_test
make uvm_run TEST_NAME=probe_zicntr_test
make uvm_run TEST_NAME=probe_zihpm_test
make uvm_run TEST_NAME=probe_zvl32b_test
```

Полный перечень всех 356 регистров по группам (адрес, имя, длина, число полей):
`REGISTERS.md`.

Быстрый прогон без пересборки (бинарник уже собран): `./bin_out/Vtb_top +UVM_TESTNAME=<test>`.

## Решение по группировке (актуально)
- **Один CSR → одно расширение**. `_group` = основное расширение из `definedBy`.
- Приоритет: `Sm, S, H, U, VS`, затем порядок расширений из профиля, затем по алфавиту.
  Реализовано в `tools/parse_csr.py`: `EXT_PRIORITY`, `_ext_rank`, `primary_extension()`;
  `get_group()` возвращает результат `primary_extension()`.
- `rv32_only` — признак `xlen:32` без `xlen:64` (или h-половина). `is_rv32_only()`, `has_xlen()`.
- 13 групп / 356 CSR:

| Группа | CSR | Группа | CSR |
|---|---|---|---|
| Sm | 151 | Zvl32b | 7 |
| S | 14 | Ssstateen | 4 |
| H | 22 | F | 3 |
| Zihpm | 29 | Zicntr | 3 |
| Sdtrig | 7 | U / Sscofpmf / Sstc | 1 каждый |
| rv32_only | 113 (не генерируется) | | |

`Sm` большой, т.к. `mcycle`, `pmp*`, `mhpmcounter*` и др. в `definedBy` привязаны
только к `Sm`.

## Текущее состояние репозитория
- `src/csr/`: 12 extension-блоков (`csr_<ext>_extension.svh` +
  `csr_<ext>_reg_block_extension.svh`) + `csr_top_reg_block.svh`.
  Старые `csr_sm_base_*`, `csr_sm_zicntr_*`, `csr_sm_misc_*` удалены.
- `src/csr/csr_pkg.sv` подключает все 12 расширений и top.
- Подблоки top: `Sm, S, H, U, F, Sdtrig, Sscofpmf, Ssstateen, Sstc, Zicntr, Zihpm, Zvl32b`.
- Тесты (`src/tb/`, пакет `tests_pkg`):
  - `probe_base_test` — инфраструктура (env, objection, `write_reg/read_reg/read_check_reg`);
  - `probe_sm_base_test` — использует `Sm/S/U`;
  - `probe_sm_zicntr_test` — `Sm`;
  - `probe_sm_misc_test` — `Sm/H/Sdtrig`;
  - `probe_s_test` — `S`;
  - `probe_h_test` — `H`;
  - `probe_u_test` — `U`;
  - `probe_f_test` — `F`;
  - `probe_sdtrig_test` — `Sdtrig`;
  - `probe_sscofpmf_test` — `Sscofpmf`;
  - `probe_ssstateen_test` — `Ssstateen`;
  - `probe_sstc_test` — `Sstc`;
  - `probe_zicntr_test` — `Zicntr` (у `time` член `time_f`);
  - `probe_zihpm_test` — `Zihpm`;
  - `probe_zvl32b_test` — `Zvl32b`;
  - `probe_all_test` — перебор адресов 0x000..0xFFF, все 243 регистра.
  Все: `UVM_ERROR: 0`, `UVM_FATAL: 0`.
- Итерация «1 расширение за проход»: сделаны все группы, кроме `Sm`:
  `S, H, U, F, Sdtrig, Sscofpmf, Ssstateen, Sstc, Zicntr, Zihpm, Zvl32b`.
  `Sm` (151 регистр) покрыт частично тестами `probe_sm_base/zicntr/misc`.
- Полный перечень регистров — `REGISTERS.md`.
- Сборка: `Makefile` (`SV_FILES` включает `src/tb/tests_pkg.sv`, `INC_DIRS` — `src/tb`);
  `src/testbench.sv` импортирует `tests_pkg::*`.

## Исправленные баги
- `count_by_ext.py`: не разворачивался вложенный `extension.allOf/anyOf` (25 CSR
  выпадали из профиля). Справка — `tools/count_by_ext.adoc`.
- `parse_csr.py`:
  - `extract_extensions` — рекурсивный разбор `extension.allOf/anyOf` + ветка `name`;
  - `condition_matches` — рекурсивный `extension` + ветка `name` (терялось 116 полей);
  - `get_group` — RV32-only по `xlen:32` (52 CSR уходили в RV64-группы);
  - переход на группировку по расширениям.
- `gen_one.py`: дубликат `--group`; отсутствовал `--list`; убрана генерация
  `get_reg_by_addr` (устаревший метод); санитизация имён-ключевых слов SV
  (`time` → `time_f`).
- `reduce_csr.py`: проверен, корректен (изменений не требовал).

## Git (последние коммиты)
```
0c5376c ref(uvm_infra): generate RAL by profile extensions (one CSR per extension)
8a82493 ref(uvm_infra): add Sm_misc RAL block and probe test; fix gen_one
d6c02b2 ref(tools): fix definedBy expansion and RV32-only grouping in parse_csr
```
Все отслеживаемые изменения закоммичены. Untracked (артефакты, не коммитить):
`tools/csr_monolith_filtered.yaml`, `tools/csr_monolith_reduced.yaml`, `tools/csr_files.txt`.

## Известные ограничения / TODO
- `tools/README.adoc` описывает **старые** группы (`Sm_base`, `Sm_pmp`, …) — устарел.
- `tools/README.adoc` (~стр. 265-268) показывает per-group `get_reg_by_addr` — устарел;
  сам метод оставлен только в `csr_top_reg_block` (`gen_top.py`), его использует
  `src/probe_scoreboard.sv:28`.
- `csr_pkg.sv` помечен «АВТОГЕНЕРАЦИЯ», но генератора для него нет.
- `mseccfg` в reduced имеет `fields=0` (подполя требуют `Smepmp`/`Zkr` вне профиля);
  `gen_one` делает одно полноширинное поле.
- Dedicated probe-тесты есть только для части групп; остальные (S/H/Zihpm/…) без тестов.
- Генератор делает **одно поле на регистр** (без битовых полей, все `RW`, reset 0).
- `uvm_reg::get()` под Verilator 5.052 не работает — в scoreboard своё зеркало `shadow[]`.
