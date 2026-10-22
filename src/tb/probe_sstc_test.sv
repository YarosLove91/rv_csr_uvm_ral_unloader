//------------------------------------------------------------------------------
// probe_sstc_test.sv
//
// Test for extension Sstc (group Sstc): stimecmp.
//------------------------------------------------------------------------------

class probe_sstc_test extends probe_base_test;
  `uvm_component_utils(probe_sstc_test)

  function new(string name = "probe_sstc_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sstc_reg_block rb;

    `uvm_info(get_type_name(), "probe_sstc_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Sstc;

    read_check_reg(rb.stimecmp, 64'h0000_0000_0000_1234);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sstc_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sstc_test
