//------------------------------------------------------------------------------
// csr_sm_misc_reg_block.svh
//
// RAL-модель Sm_misc.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_sm_misc_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_sm_misc_reg_block )

  rand menvcfg_reg menvcfg;
  rand mtinst_reg mtinst;
  rand mtval2_reg mtval2;
  rand mseccfg_reg mseccfg;
  rand tselect_reg tselect;
  rand tdata1_reg tdata1;
  rand tdata2_reg tdata2;
  rand tdata3_reg tdata3;
  rand tinfo_reg tinfo;
  rand tcontrol_reg tcontrol;
  rand mcontext_reg mcontext;

  uvm_reg_map csr_map;

  function new( string name = "csr_sm_misc_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    menvcfg = menvcfg_reg::type_id::create("menvcfg");
    menvcfg.configure( .blk_parent(this) );
    menvcfg.build();

    mtinst = mtinst_reg::type_id::create("mtinst");
    mtinst.configure( .blk_parent(this) );
    mtinst.build();

    mtval2 = mtval2_reg::type_id::create("mtval2");
    mtval2.configure( .blk_parent(this) );
    mtval2.build();

    mseccfg = mseccfg_reg::type_id::create("mseccfg");
    mseccfg.configure( .blk_parent(this) );
    mseccfg.build();

    tselect = tselect_reg::type_id::create("tselect");
    tselect.configure( .blk_parent(this) );
    tselect.build();

    tdata1 = tdata1_reg::type_id::create("tdata1");
    tdata1.configure( .blk_parent(this) );
    tdata1.build();

    tdata2 = tdata2_reg::type_id::create("tdata2");
    tdata2.configure( .blk_parent(this) );
    tdata2.build();

    tdata3 = tdata3_reg::type_id::create("tdata3");
    tdata3.configure( .blk_parent(this) );
    tdata3.build();

    tinfo = tinfo_reg::type_id::create("tinfo");
    tinfo.configure( .blk_parent(this) );
    tinfo.build();

    tcontrol = tcontrol_reg::type_id::create("tcontrol");
    tcontrol.configure( .blk_parent(this) );
    tcontrol.build();

    mcontext = mcontext_reg::type_id::create("mcontext");
    mcontext.configure( .blk_parent(this) );
    mcontext.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(menvcfg, 12'h30a, "RW");
    csr_map.add_reg(mtinst, 12'h34a, "RW");
    csr_map.add_reg(mtval2, 12'h34b, "RW");
    csr_map.add_reg(mseccfg, 12'h747, "RW");
    csr_map.add_reg(tselect, 12'h7a0, "RW");
    csr_map.add_reg(tdata1, 12'h7a1, "RW");
    csr_map.add_reg(tdata2, 12'h7a2, "RW");
    csr_map.add_reg(tdata3, 12'h7a3, "RW");
    csr_map.add_reg(tinfo, 12'h7a4, "RW");
    csr_map.add_reg(tcontrol, 12'h7a5, "RW");
    csr_map.add_reg(mcontext, 12'h7a8, "RW");

    lock_model();
  endfunction : build

endclass : csr_sm_misc_reg_block
