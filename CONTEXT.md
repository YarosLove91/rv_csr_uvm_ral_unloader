# Контекст: UVM RAL для RVA23S64 (Verilator)

Дата: 2026-10-22
Рабочая директория: `/home/m.yaroslove/Work/shit_ral/rv_csr_uvm_ral_unloader/.kilo/worktrees/chief-gigantoraptor`
Оригинальный репозиторий: `/home/m.yaroslove/Work/test_RAL` (detached HEAD на `4115769`)

## Git-состояние

- Ветка: **`csr_ral_regen`** (переименована с `chief-gigantoraptor`)
- HEAD: `084d391` — `feat(ral_gen): regenerate RAL from 4115769 toolchain, add missing VS CSRs`
  (amend с `test_shit`; содержимое: 72 файла, +68257/−930)
- База: `uvm_infrastructure_fix` @ `203677f` (= origin); merge-base проверен — база полностью содержится в ветке (merge от 2026-10-22: "Already up to date")
- Дерево чистое. Remote-ветки и PR **нет**; push при необходимости: `git push -u origin csr_ral_regen`
- Сабмодуль: `riscv-unified-db` (shallow, main @ `035b48e`), добавлен в этом коммите

## Цель

Генерация RAL-модели CSR из `csr_spec/` (riscv-unified-db) по профилю **RVA23S64**
и прогон probe-тестов в UVM/Verilator. Группа = расширение (один CSR → одно расширение).

## Пайплайн (актуальная схема, из коммита 4115769)

Основной вход — **`bash tools/generate.sh [profile]`** (по умолчанию RVA23S64):

```
csr_spec/csr/**/*.yaml
  │  parse_csr.py   → tools/csr_monolith_filtered.yaml  (+ tools/csr_files.txt)
  │  reduce_csr.py  → tools/csr_monolith_reduced.yaml
  │  gen_one.py     → src/csr/csr_<ext>_extension.svh + csr_<ext>_reg_block_extension.svh
  │  gen_top.py     → src/csr/csr_top_reg_block.svh
  │  (inline)       → src/csr/csr_pkg.sv (автогенерация include'ов)
  └  rv32_only      → src/csr/csr_rv32_only_*.svh + csr_rv32_only_pkg.sv (отдельно, не в csr_pkg)
```

## Результат генерации (текущее состояние src/csr)

12 групп в `csr_pkg` + rv32_only отдельно:

| Группа | CSR | | Группа | CSR |
|---|---|---|---|---|
| Sm | 151 | | Sscofpmf | 1 |
| Zihpm | 29 | | Ssstateen | 4 |
| **H** | **25** | | Sstc | 1 |
| S | 14 | | Zicntr | 3 |
| Sdtrig | 7 | | Zvl32b | 7 |
| U | 1 | | F | 3 |
| rv32_only | 113 (отдельный пакет) | | | |

### Добавленные регистры (нет в снапшоте csr_spec, взяты из сабмодуля)

Скопированы из `riscv-unified-db/spec/std/isa/csr/H/` в `csr_spec/csr/H/`:

- **vsie** (0x204), **vsscratch** (0x240), **vsip** (0x244) → входят в группу H (было 22, стало 25)
- Справочно: 0x240 = vsscratch, virtual_address 0x140, priv_mode VS, definedBy H, поле SCRATCH (RW, reset UNDEFINED_LEGAL→0)

### Верификация

Выход `generate.sh` сравнен с `src/csr` коммита `4115769` через `git archive` + `diff -r`:
**27 из 29 файлов идентичны байт-в-байт**; отличаются только `csr_h_extension.svh` (+81 строка)
и `csr_h_reg_block_extension.svh` — ровно на три добавленных регистра. Генерация воспроизводима.

## Тестбенч (выровнен по 4115769)

- `src/env.sv`: создаёт **две модели** — `reg_top_model` (csr_top_reg_block: root map + 12 submap'ов)
  и `reg_rv32_only_model`; обе через `uvm_config_db`
- `src/probe_scoreboard.sv`: shadow[]-зеркало + `reg_top_model.get_reg_by_addr()` (через `csr_map.get_reg_by_offset`);
  `uvm_reg::get()` не работает под Verilator 5.052 — используется парсинг `sprint()` (`get_reg_value`)
- 16 тестов в `src/tb/` (probe_<group>_test + probe_all_test + probe_rv32_only_test),
  обращаются к подблокам по новым именам: `env_o.reg_top_model.Sm/.S/.H/...`
- `Makefile`: SV_FILES включает `csr_pkg.sv` **и** `csr_rv32_only_pkg.sv`

## Команды

```bash
# полная перегенерация RAL
bash tools/generate.sh                                   # RVA23S64
bash tools/generate.sh csr_spec/profile/RVA23U64.yaml    # другой профиль

# сборка и тесты (скачает uvm-verilator при первом запуске)
make uvm_build
make uvm_run TEST_NAME=probe_h_test       # тест группы H (включая vsie/vsscratch/vsip)
make uvm_run TEST_NAME=probe_all_test

# точечная генерация группы
python3 tools/gen_one.py --group H --both \
    --out src/csr/csr_h_extension.svh \
    --reg-block-out src/csr/csr_h_reg_block_extension.svh
```

**Сборка Verilator в этом worktree ещё не запускалась** (verilator установлен: `/usr/local/bin/verilator`;
`uvm-verilator/` не скачан — `make uvm_build` склонирует сам). Синтаксис проверен:
`bash -n tools/generate.sh`, `py_compile` всех tools-скриптов — OK.

## Замечания по коду-ревью (andrew) — закрыто

Замечание: в `env.sv` создавался отдельный хендл `uvm_reg_map csr_map = reg_top_model.csr_map`
без изменений — лишний посредник; карта должна жить в общем RAL (root map + submap'ы в
`csr_top_reg_block`). Исправлено: env держит только `reg_top_model`; текущая версия `env.sv`
взята из 4115769 (отдельного map-хендла нет).

## Проблема VS Code в /home/m.yaroslove/Work/test_RAL (диагностирована)

- Symptom: Extension Host crash-loop, exit code 133, в minidump — `Reached heap limit ... JavaScript heap out of memory` (V8 OOM exthost)
- Виновник: **`AndrewNolte.vscode-system-verilog`** — восстанавливаемые hot-exit вкладки `uvm-verilator/src/base/*.svh` парсятся в exthost независимо от `excludeIndexing`; 4 окна с одной папкой усугубляли
- Применено в test_RAL: `.vscode/settings.json` (includeIndexing только `src/**`, watcher/search exclude на uvm-verilator), расширен `.gitignore` (uvm-verilator/, *.log, __pycache__, tools/csr_monolith*, /~/)
- Рецепт: закрыть лишние окна → `code --disable-extension AndrewNolte.vscode-system-verilog /home/m.yaroslove/Work/test_RAL` → закрыть вкладки uvm-verilator → включить расширение обратно. Альтернатива: `eirikpre.systemverilog` или `mshr-h.veriloghdl` + verible (внешние процессы)
- Побочно: у kilocode.kilo-code 7.7.7 не хватает ассетов (kilo-light.svg) — переустановить; `gh` не установлен (spawn gh ENOENT)

## Наследие старой схемы (в worktree больше нет)

Первая генерация в этой сессии шла старыми скриптами (HEAD 203677f) с группировкой
Sm_base/Sm_zicntr/Sm_misc/Sm_pmp/Sm_zihpm/S_misc/U_misc/VS_misc — **заменена** схемой 4115769,
легаси-файлы удалены (в коммите). В коммите остались не используемые новой схемой tracked-файлы:
`tools/gen_batch.py`, `tools/gen_csr.py`, `tools/gen_csr_llm.py`, `tools/prompts/`, `tools/templates/`,
`src/csr_regs_(currenty_not_use).svh` — кандидаты на удаление отдельным коммитом.

## TODO / следующие шаги

1. `make uvm_build` + `make uvm_run TEST_NAME=probe_h_test` — верификация сборки и новых H-регистров
2. Решить по наследию старой схемы (см. выше) и по `git push -u origin csr_ral_regen` (+ PR)
3. Опционально: добавить в csr_spec прочие отсутствующие VS/HS регистры из сабмодуля (vstimecmp уже есть в снапшоте; проверены только vsie/vsip/vsscratch)
