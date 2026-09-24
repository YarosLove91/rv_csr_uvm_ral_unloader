//------------------------------------------------------------------------------
// csr_pkg.sv
//
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------
package csr_pkg;
  import uvm_pkg::*;

  // Sm_base
  `include "csr_sm_base_extension.svh"
  `include "csr_sm_base_reg_block_extension.svh"

  // Sm_zicntr
  `include "csr_sm_zicntr_extension.svh"
  `include "csr_sm_zicntr_reg_block_extension.svh"

  `include "csr_top_reg_block.svh" 
endpackage : csr_pkg