#!/bin/bash
# Quick build script - same flags as Makefile but with /dev/shm for speed

set -e

echo ">>> Quick build starting..."

# Clean previous build
rm -rf bin_out
mkdir -p /dev/shm/verilator_quick
ln -sf /dev/shm/verilator_quick ./bin_out

# Detect linker (same as Makefile)
LINKER=""
for l in mold lld gold; do
    if command -v $l >/dev/null 2>&1; then
        LINKER=$l
        break
    fi
done

LDFLAGS=""
if [ -n "$LINKER" ]; then
    LDFLAGS="-LDFLAGS -fuse-ld=$LINKER"
    echo ">>> Using linker: $LINKER"
fi

# Run Verilator (same flags as Makefile + /dev/shm)
time verilator \
    --binary \
    --timing \
    -j $(nproc) \
    -Wno-fatal \
    -Wno-DECLFILENAME \
    -Wno-UNUSED \
    -Wno-WIDTHTRUNC \
    -Wno-UNSIGNED \
    +define+UVM_NO_DPI \
    +define+UVM_REPORT_DISABLE_BANNER \
    +incdir+./src \
    +incdir+./uvm-verilator/src \
    --top-module top \
    --Mdir ./bin_out \
    $LDFLAGS \
    src/uvm_wrapper.sv \
    uvm-verilator/src/uvm_pkg.sv \
    src/tutorial_9.sv

echo ">>> Verilator phase completed!"
echo ">>> Now compile C++ code..."

time make -C ./bin_out -f Vtop.mk -j$(nproc)

echo ">>> Build completed successfully!"
