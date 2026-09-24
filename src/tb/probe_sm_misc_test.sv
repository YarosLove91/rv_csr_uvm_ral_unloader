//------------------------------------------------------------------------------
// probe_sm_misc_test.sv
//
// Test for Sm_misc: menvcfg, mtinst, mtval2, mseccfg, tselect, tdata1..3,
// tinfo, tcontrol, mcontext.
//------------------------------------------------------------------------------

class probe_sm_misc_test extends probe_base_test;
  `uvm_component_utils(probe_sm_misc_test)

  function new(string name = "probe_sm_misc_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sm_misc_reg_block rb;

    `uvm_info(get_type_name(), "probe_sm_misc_test: start", UVM_LOW)

    rb = env_o.reg_top_model.sm_misc;

    read_check_reg(rb.menvcfg,   64'h0000_0000_0000_0000);
    read_check_reg(rb.mtinst,    64'h0000_0000_0000_0001);
    read_check_reg(rb.mtval2,    64'h0000_0000_0000_0002);
    read_check_reg(rb.mseccfg,   64'h0000_0000_0000_0003);
    read_check_reg(rb.tselect,   64'h0000_0000_0000_0004);
    read_check_reg(rb.tdata1,    64'h0000_0000_0000_0005);
    read_check_reg(rb.tdata2,    64'h0000_0000_0000_0006);
    read_check_reg(rb.tdata3,    64'h0000_0000_0000_0007);
    read_check_reg(rb.tinfo,     64'h0000_0000_0000_0008);
    read_check_reg(rb.tcontrol,  64'h0000_0000_0000_0009);
    read_check_reg(rb.mcontext,  64'h0000_0000_0000_000A);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sm_misc_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sm_misc_test
