`timescale 1ns/1ns

module uvm_wrapper;
    import uvm_pkg::*;
    `include "uvm_macros.svh"

    initial begin
        `uvm_info("UVM_PRECOMPILE", "UVM Hierarchical Block Initialized", UVM_LOW)
    end
endmodule : uvm_wrapper
