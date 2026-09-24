//------------------------------------------------------------------------------
// probe_u_test.sv
//
// Test for extension U (group U): mcounteren.
//------------------------------------------------------------------------------

class probe_u_test extends probe_base_test;
  `uvm_component_utils(probe_u_test)

  function new(string name = "probe_u_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_u_reg_block rb;

    `uvm_info(get_type_name(), "probe_u_test: start", UVM_LOW)

    rb = env_o.reg_top_model.U;

    read_check_reg(rb.mcounteren, 64'h0000_0000_0000_0007);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_u_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_u_test
