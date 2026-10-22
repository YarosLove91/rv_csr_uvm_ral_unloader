//------------------------------------------------------------------------------
// probe_h_test.sv
//
// Test for extension H (group H): vsstatus, vsie, vstvec, vsscratch, vsepc,
// vscause, vstval, vsip, vstimecmp, vsctrctl, vsatp, mtinst, mtval2, hstatus,
// hedeleg, hideleg, hie, htimedelta, hcounteren, hgeie, hip, hstateen0..3,
// hvip, htval, htinst, hgatp, hcontext, hgeip.
//------------------------------------------------------------------------------

class probe_h_test extends probe_base_test;
  `uvm_component_utils(probe_h_test)

  function new(string name = "probe_h_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_h_reg_block rb;

    `uvm_info(get_type_name(), "probe_h_test: start", UVM_LOW)

    rb = env_o.reg_top_model.H;

    read_check_reg(rb.vsstatus,   64'h0000_0000_0000_0101);
    read_check_reg(rb.vsie,       64'h0000_0000_0000_0116);
    read_check_reg(rb.vstvec,     64'h0000_0000_0000_0102);
    read_check_reg(rb.vsscratch,  64'h0000_0000_0000_0117);
    read_check_reg(rb.vsepc,      64'h0000_0000_0000_0103);
    read_check_reg(rb.vscause,    64'h0000_0000_0000_0104);
    read_check_reg(rb.vstval,     64'h0000_0000_0000_0105);
    read_check_reg(rb.vsip,       64'h0000_0000_0000_0118);
    read_check_reg(rb.vstimecmp,  64'h0000_0000_0000_0106);
    read_check_reg(rb.vsctrctl,   64'h0000_0000_0000_0107);
    read_check_reg(rb.vsatp,      64'h0000_0000_0000_0108);
    read_check_reg(rb.mtinst,     64'h0000_0000_0000_0109);
    read_check_reg(rb.mtval2,     64'h0000_0000_0000_010A);
    read_check_reg(rb.hstatus,    64'h0000_0000_0000_010B);
    read_check_reg(rb.hedeleg,    64'h0000_0000_0000_010C);
    read_check_reg(rb.hideleg,    64'h0000_0000_0000_0119);
    read_check_reg(rb.hie,        64'h0000_0000_0000_011A);
    read_check_reg(rb.htimedelta, 64'h0000_0000_0000_010D);
    read_check_reg(rb.hcounteren, 64'h0000_0000_0000_0007);
    read_check_reg(rb.hgeie,      64'h0000_0000_0000_011B);
    read_check_reg(rb.hip,        64'h0000_0000_0000_011C);
    read_check_reg(rb.hstateen0,  64'h0000_0000_0000_010E);
    read_check_reg(rb.hstateen1,  64'h0000_0000_0000_010F);
    read_check_reg(rb.hstateen2,  64'h0000_0000_0000_0110);
    read_check_reg(rb.hstateen3,  64'h0000_0000_0000_0111);
    read_check_reg(rb.hvip,       64'h0000_0000_0000_011D);
    read_check_reg(rb.htval,      64'h0000_0000_0000_0112);
    read_check_reg(rb.htinst,     64'h0000_0000_0000_0113);
    read_check_reg(rb.hgatp,      64'h0000_0000_0000_0114);
    read_check_reg(rb.hcontext,   64'h0000_0000_0000_0115);
    read_check_reg(rb.hgeip,      64'h0000_0000_0000_011E);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_h_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_h_test
