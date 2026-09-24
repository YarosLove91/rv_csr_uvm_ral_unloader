//------------------------------------------------------------------------------
// probe_ssstateen_test.sv
//
// Test for extension Ssstateen (group Ssstateen): sstateen0..3.
//------------------------------------------------------------------------------

class probe_ssstateen_test extends probe_base_test;
  `uvm_component_utils(probe_ssstateen_test)

  function new(string name = "probe_ssstateen_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_ssstateen_reg_block rb;

    `uvm_info(get_type_name(), "probe_ssstateen_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Ssstateen;

    read_check_reg(rb.sstateen0, 64'h0000_0000_0000_0001);
    read_check_reg(rb.sstateen1, 64'h0000_0000_0000_0002);
    read_check_reg(rb.sstateen2, 64'h0000_0000_0000_0003);
    read_check_reg(rb.sstateen3, 64'h0000_0000_0000_0004);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_ssstateen_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_ssstateen_test
