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
UVM_DIR := $(CURDIR)/uvm-verilator

# Определяем использовать ли /dev/shm для ускорения компиляции
# Можно отключить: make USE_SHM=no
USE_SHM ?= yes
SHM_DIR := /dev/shm/verilator_build

# Проверяем доступность /dev/shm
ifeq ($(USE_SHM),yes)
  ifneq ($(shell test -d /dev/shm && echo "ok"),ok)
    USE_SHM := no
  endif
endif

# Выбираем директорию для сборки
ifeq ($(USE_SHM),yes)
  OUT_DIR := $(SHM_DIR)
else
  OUT_DIR := bin_out
endif

# Директория для финального бинарника (всегда на диске)
BIN_DIR := bin_out

# ============================================================
# Sources (auto-collected via wildcard)
# ============================================================
TOP       := top
SV_FILES  := $(wildcard $(SRC_DIR)/*.sv) $(wildcard $(SRC_DIR)/**/*.sv)
SVH_FILES := $(wildcard $(SRC_DIR)/*.svh) $(wildcard $(SRC_DIR)/**/*.svh)
SV_SRC    := $(sort $(SV_FILES))          # детерминированный порядок

UVM_PKG    := $(UVM_DIR)/src/uvm_pkg.sv
UVM_BIN    := $(BIN_DIR)/V$(TOP)
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
LINKER ?= $(shell \
	for l in mold lld gold; do \
		if command -v $$l >/dev/null 2>&1; then echo $$l; break; \
	fi; \
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
VFLAGS := \
	--binary \
	--hierarchical \
	-j $(NPROC) \
	--output-split 20000 \
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
.PHONY: all uvm_download uvm_build uvm_run list clean help

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
uvm_build: $(UVM_MARKER) $(SV_SRC) $(SVH_FILES) | $(OUT_DIR) $(BIN_DIR)
	@echo ">>> [build] Sources:"
	@printf '    %s\n' $(SV_SRC)
	@if [ -n "$(SVH_FILES)" ]; then \
		echo ">>> [build] Headers:"; \
		printf '    %s\n' $(SVH_FILES); \
	fi
	@echo ">>> [build] Verilator: jobs=$(NPROC), ld=$(LINKER_DISPLAY), shm=$(USE_SHM)"
	$(VERILATOR) $(VFLAGS) $(UVM_PKG) $(SV_SRC)
ifeq ($(USE_SHM),yes)
	@# Копируем бинарник из /dev/shm на диск
	@cp -f $(OUT_DIR)/V$(TOP) $(BIN_DIR)/V$(TOP) 2>/dev/null || true
endif

$(OUT_DIR):
	@mkdir -p $@

$(BIN_DIR):
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
	@echo "LD        : $(LINKER_DISPLAY)"
	@echo "LDFLAGS   : $(LDFLAGS_EXTRA)"
	@echo "UVM_BIN   : $(UVM_BIN)"

# ------------------------------------------------------------
# Cleaning
# ------------------------------------------------------------
clean:
	@echo ">>> [clean] Removing build artifacts..."
	@rm -rf $(BIN_DIR) $(OBJ_DIR)
ifeq ($(USE_SHM),yes)
	@rm -rf $(SHM_DIR)
endif

# ------------------------------------------------------------
# Help
# ------------------------------------------------------------
help:
	@echo "Targets:"
	@echo "  all          - Build and run test (default)"
	@echo "  uvm_download - Clone uvm-verilator repository"
	@echo "  uvm_build    - Build UVM + DUT with Verilator"
	@echo "  uvm_run      - Build and run simulation"
	@echo "  list         - Show collected sources and variables"
	@echo "  clean        - Remove build artifacts"
	@echo "  help         - Show this help"
	@echo ""
	@echo "Variables:"
	@echo "  TEST_NAME=<name>   - UVM test (default: jelly_bean_reg_test)"
	@echo "  NPROC=<n>          - Parallel jobs (default: nproc)"
	@echo "  LINKER=<linker>    - Linker: mold | lld | gold | bfd | (empty)"
	@echo "                       default: auto-detect mold -> lld -> gold"
	@echo "  USE_SHM=yes/no     - Use /dev/shm for build (default: yes)"
