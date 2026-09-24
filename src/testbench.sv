`include "uvm_macros.svh"
import uvm_pkg::*;

import testchamber_src_pkg::*;
import tests_pkg::*;

module tb_top;

  initial begin
    run_test();
  end
endmodule