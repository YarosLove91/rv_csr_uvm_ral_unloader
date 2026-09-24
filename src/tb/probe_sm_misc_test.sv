//------------------------------------------------------------------------------
// probe_sm_misc_test.sv
//
// Разные группы профиля RVA23S64:
// Sm — menvcfg, mseccfg; H — mtinst, mtval2; Sdtrig — tselect..tcontrol, mcontext.
//------------------------------------------------------------------------------

class probe_sm_misc_test extends probe_base_test;
  `uvm_component_utils(probe_sm_misc_test)

  function new(string name = "probe_sm_misc_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sm_reg_block     rsm;
    csr_h_reg_block      rh;
    csr_sdtrig_reg_block rd;

    `uvm_info(get_type_name(), "probe_sm_misc_test: start", UVM_LOW)

    rsm = env_o.reg_top_model.Sm;
    rh  = env_o.reg_top_model.H;
    rd  = env_o.reg_top_model.Sdtrig;

    read_check_reg(rsm.menvcfg,  64'h0000_0000_0000_0000);
    read_check_reg(rh.mtinst,    64'h0000_0000_0000_0001);
    read_check_reg(rh.mtval2,    64'h0000_0000_0000_0002);
    read_check_reg(rsm.mseccfg,  64'h0000_0000_0000_0003);
    read_check_reg(rd.tselect,   64'h0000_0000_0000_0004);
    read_check_reg(rd.tdata1,    64'h0000_0000_0000_0005);
    read_check_reg(rd.tdata2,    64'h0000_0000_0000_0006);
    read_check_reg(rd.tdata3,    64'h0000_0000_0000_0007);
    read_check_reg(rd.tinfo,     64'h0000_0000_0000_0008);
    read_check_reg(rd.tcontrol,  64'h0000_0000_0000_0009);
    read_check_reg(rd.mcontext,  64'h0000_0000_0000_000A);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sm_misc_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sm_misc_test
