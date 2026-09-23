cat benchmark.sh

#!/bin/bash

echo "=== Benchmark Script for Verilator Build ==="
echo ""

# Функция для замера времени
measure() {
    local label="$1"
    shift
    local start=$(date +%s%N)
    eval "$@"
    local end=$(date +%s%N)
    local duration=$(( (end - start) / 1000000 ))
    echo "$label: ${duration} ms"
    echo "$label: ${duration} ms" >> benchmark_results.txt
}

# Очищаем файл результатов
echo "=== Benchmark Results ===" > benchmark_results.txt
echo "Date: $(date)" >> benchmark_results.txt
echo "" >> benchmark_results.txt

# =============================================================
# 1. Холодная сборка
# =============================================================
echo "=== 1. Холодная сборка ==="
echo "1. Холодная сборка" >> benchmark_results.txt
make clean
measure "Холодная сборка" "make uvm_build"
echo ""

# =============================================================
# 2. Горячая сборка (без изменений)
# =============================================================
echo "=== 2. Горячая сборка (без изменений) ==="
echo "2. Горячая сборка (без изменений)" >> benchmark_results.txt
measure "Горячая сборка (без изменений)" "make uvm_build"
echo ""

# =============================================================
# 3. Горячая сборка (после изменения одного файла)
# =============================================================
echo "=== 3. Горячая сборка (изменение файла) ==="
echo "3. Горячая сборка (изменение файла)" >> benchmark_results.txt
echo "// test" >> src/transactions.svh
measure "Горячая сборка (изменение)" "make uvm_build"
sed -i '$ d' src/transactions.svh
echo ""

# =============================================================
# 4. Холодная сборка с разным количеством потоков
# =============================================================
echo "=== 4. Холодная сборка с разным количеством потоков ==="
echo "4. Холодная сборка с разным количеством потоков" >> benchmark_results.txt
for nproc in 1 2 4 8 16 24; do
    make clean
    measure "Холодная NPROC=$nproc" "make uvm_build NPROC=$nproc"
done
echo ""

# =============================================================
# 5. Горячая сборка (без изменений) с разным количеством потоков
# =============================================================
echo "=== 5. Горячая сборка (без изменений) с разным количеством потоков ==="
echo "5. Горячая сборка (без изменений) с разным количеством потоков" >> benchmark_results.txt
make clean
make uvm_build NPROC=24
for nproc in 1 2 4 8 16 24; do
    measure "Горячая (нет изменений) NPROC=$nproc" "make uvm_build NPROC=$nproc"
done
echo ""

# =============================================================
# 6. Только перелинковка с разным количеством потоков
# =============================================================
echo "=== 6. Только перелинковка с разным количеством потоков ==="
echo "6. Только перелинковка с разным количеством потоков" >> benchmark_results.txt
make clean
make uvm_build NPROC=24
for nproc in 1 2 4 8 16 24; do
    rm -f bin_out/Vtop bin_out/__ALL.a
    measure "Только линковка NPROC=$nproc" "make uvm_build NPROC=$nproc"
done
echo ""

# =============================================================
# 7. Только компиляция C++ (без Verilator) с разным количеством потоков
# =============================================================
echo "=== 7. Только компиляция C++ с разным количеством потоков ==="
echo "7. Только компиляция C++ с разным количеством потоков" >> benchmark_results.txt
make clean
make uvm_build NPROC=24
for nproc in 1 2 4 8 16 24; do
    rm -f bin_out/*.o bin_out/__ALL.a bin_out/Vtop
    measure "Компиляция C++ NPROC=$nproc" "make uvm_build NPROC=$nproc"
done
echo ""

# =============================================================
# 8. Сборка с разными линковщиками
# =============================================================
echo "=== 8. Сборка с разными линковщиками ==="
echo "8. Сборка с разными линковщиками" >> benchmark_results.txt
for linker in mold lld gold ""; do
    make clean
    if [ -z "$linker" ]; then
        measure "Linker=bfd" "make uvm_build LINKER="
    else
        measure "Linker=$linker" "make uvm_build LINKER=$linker"
    fi
done
echo ""

# =============================================================
# 9. Запуск симуляции
# =============================================================
echo "=== 9. Запуск симуляции ==="
echo "9. Запуск симуляции" >> benchmark_results.txt
measure "Симуляция" "make uvm_run"
echo ""

echo "=== Результаты сохранены в benchmark_results.txt ==="
cat benchmark_results.txt