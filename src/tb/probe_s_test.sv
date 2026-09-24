//------------------------------------------------------------------------------
// probe_s_test.sv
//
// Test for extension S (group S): sstatus, sie, stvec, scounteren, senvcfg,
// sscratch, sepc, scause, stval, sip, satp, medeleg, scontext, mscontext.
//------------------------------------------------------------------------------

class probe_s_test extends probe_base_test;
  `uvm_component_utils(probe_s_test)

  function new(string name = "probe_s_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_s_reg_block rb;

    `uvm_info(get_type_name(), "probe_s_test: start", UVM_LOW)

    rb = env_o.reg_top_model.S;

    read_check_reg(rb.sstatus,    64'h0000_0000_0000_1000);
    read_check_reg(rb.sie,        64'h0000_0000_0000_0222);
    read_check_reg(rb.stvec,      64'h0000_0000_0000_0001);
    read_check_reg(rb.scounteren, 64'h0000_0000_0000_0007);
    read_check_reg(rb.senvcfg,    64'h0000_0000_0000_0001);
    read_check_reg(rb.sscratch,   64'h0000_0000_CAFE_BABE);
    read_check_reg(rb.sepc,       64'h0000_0000_8000_0000);
    read_check_reg(rb.scause,     64'h0000_0000_0000_0007);
    read_check_reg(rb.stval,      64'h0000_0000_0000_1234);
    read_check_reg(rb.sip,        64'h0000_0000_0000_0888);
    read_check_reg(rb.satp,       64'h0000_0000_0000_0000);
    read_check_reg(rb.medeleg,    64'h0000_0000_0000_B3FF);
    read_check_reg(rb.scontext,   64'h0000_0000_0000_0001);
    read_check_reg(rb.mscontext,  64'h0000_0000_0000_0002);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_s_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_s_test
