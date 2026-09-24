//------------------------------------------------------------------------------
// csr_rv32_only_pkg.sv
//
// RV32-only CSR (xlen:32). Отдельно от csr_pkg (RV64), в top-модель не входит.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------
package csr_rv32_only_pkg;
  import uvm_pkg::*;

  `include "csr_rv32_only_extension.svh"
  `include "csr_rv32_only_reg_block_extension.svh"
endpackage : csr_rv32_only_pkg
