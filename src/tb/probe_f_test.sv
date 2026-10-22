//------------------------------------------------------------------------------
// probe_f_test.sv
//
// Test for extension F (group F): fflags, frm, fcsr.
//------------------------------------------------------------------------------

class probe_f_test extends probe_base_test;
  `uvm_component_utils(probe_f_test)

  function new(string name = "probe_f_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_f_reg_block rb;

    `uvm_info(get_type_name(), "probe_f_test: start", UVM_LOW)

    rb = env_o.reg_top_model.F;

    read_check_reg(rb.fflags, 64'h0000_0000_0000_001F);
    read_check_reg(rb.frm,    64'h0000_0000_0000_0005);
    read_check_reg(rb.fcsr,   64'h0000_0000_0000_00A5);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_f_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_f_test
