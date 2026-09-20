# Минималистичный UVM RAL пример для Verilator

## Структура проекта

```
test_RAL/
├── src/
│   ├── tutorial_9.sv          # Основной код (интерфейс, пакет, DUT, тесты)
│   └── uvm_wrapper.sv         # Обертка для UVM
├── uvm-verilator/             # UVM библиотека для Verilator
├── Makefile                   # Скрипт сборки
└── run_minimal_ral.sh         # Скрипт для быстрой сборки
```

## Компоненты UVM RAL

### 1. Интерфейс (`jelly_bean_if`)
- Сигналы: `flavor[2:0]`, `color[1:0]`, `sugar_free`, `sour`, `command[1:0]`, `taste[1:0]`
- Clocking blocks: `master_cb`, `slave_cb`
- Modports: `master_mp`, `slave_mp`

### 2. Пакет (`jelly_bean_pkg`)
- **Типы данных**:
  - `flavor_e`: NO_FLAVOR, APPLE, BLUEBERRY, BUBBLE_GUM, CHOCOLATE
  - `color_e`: NO_COLOR, RED, GREEN, BLUE
  - `taste_e`: NO_TASTE, YUMMY, YUCKY
  - `command_e`: NO_OP, READ, WRITE

- **Транзакция** (`jelly_bean_transaction`):
  - Поля: flavor, color, sugar_free, sour, command, taste
  - Constraints: flavor_color_con

- **Регистры**:
  - `jelly_bean_recipe_reg`: WO регистр (flavor, color, sugar_free, sour)
  - `jelly_bean_taste_reg`: RO регистр (taste)

- **Блок регистров** (`jelly_bean_reg_block`):
  - Reg map: 0x00 (recipe_reg), 0x01 (taste_reg)

### 3. Адаптер (`jelly_bean_reg_adapter`)
- `reg2bus()`: Конвертирует рег-операции в транзакции
- `bus2reg()`: Конвертирует транзакции в рег-операции

### 4. Предиктор (`jelly_bean_reg_predictor`)
- Автоматическое предсказание значений регистров

### 5. Агент (`jelly_bean_agent`)
- Driver: Управляет сигналами интерфейса
- Monitor: Наблюдает за транзакциями
- Sequencer: Управляет последовательностями

### 6. Scoreboard (`jelly_bean_scoreboard`)
- Проверяет вкус jelly bean
- Логирует транзакции

### 7. Тесты
- `jelly_bean_reg_test`: Тест RAL операций
- `jelly_bean_reg_hw_reset_test`: Тест аппаратного сброса

## Запуск тестов

### Через Makefile
```bash
# Сборка
make uvm_build

# Запуск теста
make uvm_run

# Сборка и запуск
make uvm_test

# Очистка
make clean
```

### Через скрипт быстрой сборки
```bash
./quick_build.sh
./bin_out/Vtop +UVM_TESTNAME=jelly_bean_reg_test
```

## Примеры UVM RAL операций

### Запись в регистр
```systemverilog
jelly_bean_reg_block jb_reg_block;
uvm_status_e status;
uvm_reg_data_t value;

// Запись значения
value = {1'b1, 1'b0, 2'b10, 3'b001}; // sour=1, sugar_free=0, color=GREEN, flavor=APPLE
jb_reg_block.jb_recipe_reg.write(status, value);
```

### Чтение из регистра
```systemverilog
uvm_status_e status;
uvm_reg_data_t value;

// Чтение значения
jb_reg_block.jb_taste_reg.read(status, value);
```

## Оптимизации для Verilator

### 1. Использование /dev/shm
```bash
mkdir -p /dev/shm/verilator_build
ln -sf /dev/shm/verilator_build ./bin_out
```

### 2. Отключение оптимизаций
```bash
make uvm_build VFLAGS_EXTRA="-O0"
```

### 3. Параллельная сборка
```bash
make uvm_build VFLAGS_EXTRA="-j $(nproc)"
```

## Решение проблем

### Проблема: UVM_FATAL с OBJTN_ZERO
**Решение**: Используйте `run_phase` вместо `main_phase` для Verilator

### Проблема: Медленная сборка
**Решение**: Используйте оптимизации из `quick_build.sh`

### Проблема: Ошибки компиляции UVM
**Решение**: Убедитесь, что UVM пакет подключен правильно

## Пример вывода теста

```
UVM_INFO @ 0: reporter [RNTST] Running test jelly_bean_reg_test...
UVM_INFO @ 0: reporter [UVMTOP] UVM testbench topology:
-------------------------------------------------------------------------------------
Name                         Type                                         Size  Value
-------------------------------------------------------------------------------------
<unnamed>                    uvm_root                                     -     @73  
  uvm_test_top               jelly_bean_reg_test                          -     @167 
    jb_env                   jelly_bean_env                               -     @258 
      jb_agent               jelly_bean_agent                             -     @273 
        jb_drvr              jelly_bean_driver                            -     @469 
        jb_mon               jelly_bean_monitor                           -     @495 
        jb_seqr              jelly_bean_sequencer                         -     @346 
      jb_fc_sub              jelly_bean_fc_subscriber                     -     @316 
      jb_reg_predictor       uvm_reg_predictor #(jelly_bean_transaction)  -     @281 
      jb_sb                  jelly_bean_scoreboard                        -     @308 
-------------------------------------------------------------------------------------

UVM_INFO @ 30: jelly_bean_scoreboard [jelly_bean_scoreboard] You have a good sense of taste.
---------------------------------------------------------
Name          Type                         Size  Value   
---------------------------------------------------------
jb_tx         jelly_bean_transaction       -     @689    
  flavor      jelly_bean_types::flavor_e   3     APPLE   
  color       jelly_bean_types::color_e    2     GREEN   
  sugar_free  integral                     1     'h0     
  sour        integral                     1     'h1     
  command     jelly_bean_types::command_e  2     WRITE   
  taste       jelly_bean_types::taste_e    2     NO_TASTE
---------------------------------------------------------

UVM_INFO @ 60: jelly_bean_scoreboard [jelly_bean_scoreboard] You have a good sense of taste.
----------------------------------------------------------
Name          Type                         Size  Value    
----------------------------------------------------------
jb_tx         jelly_bean_transaction       -     @707     
  flavor      jelly_bean_types::flavor_e   3     NO_FLAVOR
  color       jelly_bean_types::color_e    2     NO_COLOR 
  sugar_free  integral                     1     'h0      
  sour        integral                     1     'h0      
  command     jelly_bean_types::command_e  2     READ     
  taste       jelly_bean_types::taste_e    2     YUMMY    
----------------------------------------------------------

UVM_INFO @ 150: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :    8
UVM_WARNING :    2
UVM_ERROR :    0
UVM_FATAL :    0
```