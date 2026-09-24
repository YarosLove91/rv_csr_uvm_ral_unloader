// Package for basic sources

package testchamber_src_pkg;
  import uvm_pkg::*;
  import csr_pkg::*;
  
  typedef logic [11:0] csr_addr_t;   //12 bit addr width
  typedef logic [63:0] csr_data_t;   //64 bit data width
  typedef csr_data_t   csr_shadow_t [csr_addr_t];

  `include "probe_transaction.sv"

  `include "probe_scoreboard.sv"

  `include "env.sv"
  `include "base_test.sv"

endpackage : testchamber_src_pkg