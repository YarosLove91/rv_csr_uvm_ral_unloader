package tests_pkg;
  import uvm_pkg::*;
  import csr_pkg::*;
  import csr_rv32_only_pkg::*;
  import testchamber_src_pkg::*;

  // Tests
  `include "probe_base_test.sv"
  `include "probe_sm_base_test.sv"
  `include "probe_sm_zicntr_test.sv"
  `include "probe_sm_misc_test.sv"
  `include "probe_s_test.sv"
  `include "probe_h_test.sv"
  `include "probe_u_test.sv"
  `include "probe_f_test.sv"
  `include "probe_sdtrig_test.sv"
  `include "probe_sscofpmf_test.sv"
  `include "probe_ssstateen_test.sv"
  `include "probe_sstc_test.sv"
  `include "probe_zicntr_test.sv"
  `include "probe_zihpm_test.sv"
  `include "probe_zvl32b_test.sv"
  `include "probe_all_test.sv"
  `include "probe_rv32_only_test.sv"
endpackage : tests_pkg