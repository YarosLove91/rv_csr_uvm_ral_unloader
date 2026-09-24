//------------------------------------------------------------------------------
// csr_pkg.sv
//
// Группы = расширения профиля RVA23S64 (один CSR -> одно расширение).
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------
package csr_pkg;
  import uvm_pkg::*;

  // Sm
  `include "csr_sm_extension.svh"
  `include "csr_sm_reg_block_extension.svh"

  // S
  `include "csr_s_extension.svh"
  `include "csr_s_reg_block_extension.svh"

  // H
  `include "csr_h_extension.svh"
  `include "csr_h_reg_block_extension.svh"

  // U
  `include "csr_u_extension.svh"
  `include "csr_u_reg_block_extension.svh"

  // F
  `include "csr_f_extension.svh"
  `include "csr_f_reg_block_extension.svh"

  // Sdtrig
  `include "csr_sdtrig_extension.svh"
  `include "csr_sdtrig_reg_block_extension.svh"

  // Sscofpmf
  `include "csr_sscofpmf_extension.svh"
  `include "csr_sscofpmf_reg_block_extension.svh"

  // Ssstateen
  `include "csr_ssstateen_extension.svh"
  `include "csr_ssstateen_reg_block_extension.svh"

  // Sstc
  `include "csr_sstc_extension.svh"
  `include "csr_sstc_reg_block_extension.svh"

  // Zicntr
  `include "csr_zicntr_extension.svh"
  `include "csr_zicntr_reg_block_extension.svh"

  // Zihpm
  `include "csr_zihpm_extension.svh"
  `include "csr_zihpm_reg_block_extension.svh"

  // Zvl32b
  `include "csr_zvl32b_extension.svh"
  `include "csr_zvl32b_reg_block_extension.svh"

  `include "csr_top_reg_block.svh"
endpackage : csr_pkg
