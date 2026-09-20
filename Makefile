# ============================================================
# Makefile for UVM RAL (Verilator)
# ============================================================

CXX       := g++
VERILATOR := verilator

UVM_REPO := https://github.com/chipsalliance/uvm-verilator.git

# ============================================================
# Directories
# ============================================================
SRC_DIR := src
OBJ_DIR := obj
OUT_DIR := bin_out
UVM_DIR := $(CURDIR)/uvm-verilator

# ============================================================
# Sources (auto-collected via wildcard)
# ============================================================
TOP       := top
SV_FILES  := $(wildcard $(SRC_DIR)/*.sv)
SVH_FILES := $(wildcard $(SRC_DIR)/*.svh)
SV_SRC    := $(sort $(SV_FILES))          # детерминированный порядок

UVM_PKG    := $(UVM_DIR)/src/uvm_pkg.sv
UVM_BIN    := $(OUT_DIR)/V$(TOP)
UVM_MARKER := $(UVM_DIR)/.downloaded

INC_DIRS := $(SRC_DIR) $(UVM_DIR)/src

# ============================================================
# Parameters
# ============================================================
NPROC     := $(shell nproc 2>/dev/null || echo 4)
TEST_NAME ?= jelly_bean_reg_test

# ============================================================
# Linker selection
# ============================================================
# g++ -fuse-ld принимает ТОЛЬКО: bfd | gold | lld | mold
# Значение 'ld' НЕВЕРНО.
#
# ВАЖНО: используем LINKER, а не LD — LD уже определена GNU Make
# по умолчанию (= ld), поэтому LD ?= ... игнорируется.
#
# Приоритет авто-детекта: mold → lld → gold → пусто (GCC default)
#
# Переопределить из командной строки:
#   make LINKER=mold uvm_build
#   make LINKER=bfd  uvm_build
#   make LINKER=     uvm_build   # отключить -fuse-ld
LINKER ?= $(shell \
	for l in mold lld gold; do \
		if command -v $$l >/dev/null 2>&1; then echo $$l; break; fi; \
	done)

ifeq ($(strip $(LINKER)),)
  LDFLAGS_EXTRA  :=
  LINKER_DISPLAY := (system default: bfd)
else
  LDFLAGS_EXTRA  := -fuse-ld=$(LINKER)
  LINKER_DISPLAY := $(LINKER)
endif

ifeq ($(strip $(LDFLAGS_EXTRA)),)
  VFLAGS_LDFLAGS :=
else
  VFLAGS_LDFLAGS := -LDFLAGS $(LDFLAGS_EXTRA)
endif

# ============================================================
# Verilator Flags
# ============================================================
OUTPUT_GROUPS ?= $(shell \
	n=$(NPROC); \
	if [ $$n -lt 8 ]; then echo $$((n)); \
	else echo $$((n - 4)); fi)

VFLAGS := \
	--binary \
	--timing \
	-j $(NPROC) \
	-Wno-fatal \
	-Wno-DECLFILENAME \
	-Wno-UNUSED \
	-Wno-WIDTHTRUNC \
	-Wno-UNSIGNED \
	+define+UVM_NO_DPI \
	+define+UVM_REPORT_DISABLE_BANNER \
	$(addprefix +incdir+,$(INC_DIRS)) \
	--top-module $(TOP) \
	--Mdir $(OUT_DIR) \
	$(VFLAGS_LDFLAGS)

# ============================================================
# Main Targets
# ============================================================
.PHONY: all uvm_download uvm_build dut_build uvm_run list clean distclean help

all: uvm_run

# ------------------------------------------------------------
# Download UVM sources
# ------------------------------------------------------------
uvm_download: $(UVM_MARKER)

$(UVM_MARKER):
	@if [ ! -d "$(UVM_DIR)" ]; then \
		echo ">>> [uvm] Downloading uvm-verilator..."; \
		git clone $(UVM_REPO) $(UVM_DIR); \
	fi
	@touch $@

# ------------------------------------------------------------
# Build UVM + DUT with Verilator
# ------------------------------------------------------------
uvm_build: $(UVM_MARKER) $(SV_SRC) $(SVH_FILES) | $(OUT_DIR)
	@echo ">>> [build] Sources:"
	@printf '    %s\n' $(SV_SRC)
	@if [ -n "$(SVH_FILES)" ]; then \
		echo ">>> [build] Headers:"; \
		printf '    %s\n' $(SVH_FILES); \
	fi
	@echo ">>> [build] Verilator: jobs=$(NPROC), ld=$(LD_DISPLAY)"
	$(VERILATOR) $(VFLAGS) $(UVM_PKG) $(SV_SRC)

# Alias для удобства
dut_build: uvm_build

$(OUT_DIR):
	@mkdir -p $@

# ------------------------------------------------------------
# Run simulation
# ------------------------------------------------------------
uvm_run: uvm_build
	@echo ">>> [run] Test: $(TEST_NAME)"
	$(UVM_BIN) +UVM_TESTNAME=$(TEST_NAME)

# ------------------------------------------------------------
# Diagnostics
# ------------------------------------------------------------
list:
	@echo "SV_FILES  : $(SV_FILES)"
	@echo "SVH_FILES : $(SVH_FILES)"
	@echo "UVM_PKG   : $(UVM_PKG)"
	@echo "INC_DIRS  : $(INC_DIRS)"
	@echo "NPROC     : $(NPROC)"
	@echo "LD        : $(LD_DISPLAY)"
	@echo "LDFLAGS   : $(LDFLAGS_EXTRA)"
	@echo "UVM_BIN   : $(UVM_BIN)"

# ------------------------------------------------------------
# Cleaning
# ------------------------------------------------------------
clean:
	@echo ">>> [clean] Removing build artifacts..."
	@rm -rf $(OUT_DIR) $(OBJ_DIR)

distclean: clean
	@echo ">>> [distclean] Removing UVM repo..."
	@rm -rf $(UVM_DIR)

# ------------------------------------------------------------
# Help
# ------------------------------------------------------------
help:
	@echo "Targets:"
	@echo "  all          - Build and run test (default)"
	@echo "  uvm_download - Clone uvm-verilator repository"
	@echo "  uvm_build    - Build UVM + DUT with Verilator"
	@echo "  dut_build    - Alias for uvm_build"
	@echo "  uvm_run      - Build and run simulation (TEST_NAME=...)"
	@echo "  list         - Show collected sources and variables"
	@echo "  clean        - Remove build artifacts"
	@echo "  distclean    - Remove artifacts + UVM repo"
	@echo "  help         - Show this help"
	@echo ""
	@echo "Variables:"
	@echo "  TOP=<name>         - Top module (default: top)"
	@echo "  TEST_NAME=<name>   - UVM test (default: jelly_bean_reg_test)"
	@echo "  NPROC=<n>          - Parallel jobs (default: nproc)"
	@echo "  LD=<linker>        - Linker: mold | lld | gold | bfd | (empty)"
	@echo "                       default: auto-detect mold -> lld -> gold"