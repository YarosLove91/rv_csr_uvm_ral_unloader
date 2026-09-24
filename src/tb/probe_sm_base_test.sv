//------------------------------------------------------------------------------
// probe_sm_base_test.sv
//
// Test for Sm_base: mstatus, misa, medeleg, mideleg, mie, mtvec,
// mcounteren, mscratch, mepc, mcause, mtval, mip,
// mvendorid, marchid, mimpid, mhartid, mconfigptr.
//------------------------------------------------------------------------------

class probe_sm_base_test extends probe_base_test;
  `uvm_component_utils(probe_sm_base_test)

  function new(string name = "probe_sm_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sm_base_reg_block rb;

    `uvm_info(get_type_name(), "probe_sm_base_test: start", UVM_LOW)

    rb = env_o.reg_top_model.sm_base;

    read_check_reg(rb.mstatus,    64'h0000_0000_0000_1880);
    read_check_reg(rb.misa,       64'h8000_0000_0014_112D);
    read_check_reg(rb.medeleg,    64'h0000_0000_0000_B3FF);
    read_check_reg(rb.mideleg,    64'h0000_0000_0000_0222);
    read_check_reg(rb.mie,        64'h0000_0000_0000_0A8A);
    read_check_reg(rb.mtvec,      64'h0000_0000_8000_0001);
    read_check_reg(rb.mcounteren, 64'h0000_0000_0000_0007);
    read_check_reg(rb.mscratch,   64'hDEAD_BEEF_CAFE_BABE);
    read_check_reg(rb.mepc,       64'h0000_0000_8000_0000);
    read_check_reg(rb.mcause,     64'h8000_0000_0000_0007);
    read_check_reg(rb.mtval,      64'h0000_0000_DEAD_BEEF);
    read_check_reg(rb.mip,        64'h0000_0000_0000_0888);
    read_check_reg(rb.mvendorid,  64'h0000_0000_0000_0000);
    read_check_reg(rb.marchid,    64'h0000_0000_0000_0000);
    read_check_reg(rb.mimpid,     64'h0000_0000_0000_0001);
    read_check_reg(rb.mhartid,    64'h0000_0000_0000_0000);
    read_check_reg(rb.mconfigptr, 64'h0000_0000_0000_0000);

    #10;
    env_o.probe_sb.dump_all();
  endtask : test_imp
endclass : probe_sm_base_test