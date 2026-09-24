//------------------------------------------------------------------------------
// probe_sm_base_test.sv
//
// Базовые M-регистры (группы Sm/S/U профиля RVA23S64):
// mstatus, misa, medeleg, mideleg, mie, mtvec, mcounteren, mscratch, mepc,
// mcause, mtval, mip, mvendorid, marchid, mimpid, mhartid, mconfigptr.
//------------------------------------------------------------------------------

class probe_sm_base_test extends probe_base_test;
  `uvm_component_utils(probe_sm_base_test)

  function new(string name = "probe_sm_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sm_reg_block rsm;
    csr_s_reg_block  rs;
    csr_u_reg_block  ru;

    `uvm_info(get_type_name(), "probe_sm_base_test: start", UVM_LOW)

    rsm = env_o.reg_top_model.Sm;
    rs  = env_o.reg_top_model.S;
    ru  = env_o.reg_top_model.U;

    read_check_reg(rsm.mstatus,    64'h0000_0000_0000_1880);
    read_check_reg(rsm.misa,       64'h8000_0000_0014_112D);
    read_check_reg(rs.medeleg,     64'h0000_0000_0000_B3FF);
    read_check_reg(rsm.mideleg,    64'h0000_0000_0000_0222);
    read_check_reg(rsm.mie,        64'h0000_0000_0000_0A8A);
    read_check_reg(rsm.mtvec,      64'h0000_0000_8000_0001);
    read_check_reg(ru.mcounteren,  64'h0000_0000_0000_0007);
    read_check_reg(rsm.mscratch,   64'hDEAD_BEEF_CAFE_BABE);
    read_check_reg(rsm.mepc,       64'h0000_0000_8000_0000);
    read_check_reg(rsm.mcause,     64'h8000_0000_0000_0007);
    read_check_reg(rsm.mtval,      64'h0000_0000_DEAD_BEEF);
    read_check_reg(rsm.mip,        64'h0000_0000_0000_0888);
    read_check_reg(rsm.mvendorid,  64'h0000_0000_0000_0000);
    read_check_reg(rsm.marchid,    64'h0000_0000_0000_0000);
    read_check_reg(rsm.mimpid,     64'h0000_0000_0000_0001);
    read_check_reg(rsm.mhartid,    64'h0000_0000_0000_0000);
    read_check_reg(rsm.mconfigptr, 64'h0000_0000_0000_0000);

    #10;
    env_o.probe_sb.dump_all();
  endtask : test_imp
endclass : probe_sm_base_test
