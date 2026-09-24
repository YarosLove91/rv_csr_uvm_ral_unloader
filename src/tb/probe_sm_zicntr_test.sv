//------------------------------------------------------------------------------
// probe_sm_zicntr_test.sv
//
// Test for Sm_zicntr: mcountinhibit, mcycle, minstret.
//------------------------------------------------------------------------------

class probe_sm_zicntr_test extends probe_base_test;
  `uvm_component_utils(probe_sm_zicntr_test)

  function new(string name = "probe_sm_zicntr_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sm_zicntr_reg_block rb;

    `uvm_info(get_type_name(), "probe_sm_zicntr_test: start", UVM_LOW)

    rb = env_o.reg_top_model.sm_zicntr;

    read_check_reg(rb.mcountinhibit, 64'h0000_0000_0000_0005);
    read_check_reg(rb.mcycle,       64'h0000_0000_0000_1000);
    read_check_reg(rb.minstret,     64'h0000_0000_0000_2000);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sm_zicntr_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sm_zicntr_test