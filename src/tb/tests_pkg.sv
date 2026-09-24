package tests_pkg;
  import uvm_pkg::*;
  import csr_pkg::*;
  import testchamber_src_pkg::*;

  // Tests
  `include "probe_base_test.sv"
  `include "probe_sm_base_test.sv"
  `include "probe_sm_zicntr_test.sv"
  `include "probe_sm_misc_test.sv"
  `include "probe_s_test.sv"
endpackage : tests_pkg