//------------------------------------------------------------------------------
// csr_sm_reg_block.svh
//
// RAL-модель Sm.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_sm_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_sm_reg_block )

  rand mstatus_reg mstatus;
  rand misa_reg misa;
  rand mideleg_reg mideleg;
  rand mie_reg mie;
  rand mtvec_reg mtvec;
  rand menvcfg_reg menvcfg;
  rand mcountinhibit_reg mcountinhibit;
  rand mhpmevent3_reg mhpmevent3;
  rand mhpmevent4_reg mhpmevent4;
  rand mhpmevent5_reg mhpmevent5;
  rand mhpmevent6_reg mhpmevent6;
  rand mhpmevent7_reg mhpmevent7;
  rand mhpmevent8_reg mhpmevent8;
  rand mhpmevent9_reg mhpmevent9;
  rand mhpmevent10_reg mhpmevent10;
  rand mhpmevent11_reg mhpmevent11;
  rand mhpmevent12_reg mhpmevent12;
  rand mhpmevent13_reg mhpmevent13;
  rand mhpmevent14_reg mhpmevent14;
  rand mhpmevent15_reg mhpmevent15;
  rand mhpmevent16_reg mhpmevent16;
  rand mhpmevent17_reg mhpmevent17;
  rand mhpmevent18_reg mhpmevent18;
  rand mhpmevent19_reg mhpmevent19;
  rand mhpmevent20_reg mhpmevent20;
  rand mhpmevent21_reg mhpmevent21;
  rand mhpmevent22_reg mhpmevent22;
  rand mhpmevent23_reg mhpmevent23;
  rand mhpmevent24_reg mhpmevent24;
  rand mhpmevent25_reg mhpmevent25;
  rand mhpmevent26_reg mhpmevent26;
  rand mhpmevent27_reg mhpmevent27;
  rand mhpmevent28_reg mhpmevent28;
  rand mhpmevent29_reg mhpmevent29;
  rand mhpmevent30_reg mhpmevent30;
  rand mhpmevent31_reg mhpmevent31;
  rand mscratch_reg mscratch;
  rand mepc_reg mepc;
  rand mcause_reg mcause;
  rand mtval_reg mtval;
  rand mip_reg mip;
  rand pmpcfg0_reg pmpcfg0;
  rand pmpcfg2_reg pmpcfg2;
  rand pmpcfg4_reg pmpcfg4;
  rand pmpcfg6_reg pmpcfg6;
  rand pmpcfg8_reg pmpcfg8;
  rand pmpcfg10_reg pmpcfg10;
  rand pmpcfg12_reg pmpcfg12;
  rand pmpcfg14_reg pmpcfg14;
  rand pmpaddr0_reg pmpaddr0;
  rand pmpaddr1_reg pmpaddr1;
  rand pmpaddr2_reg pmpaddr2;
  rand pmpaddr3_reg pmpaddr3;
  rand pmpaddr4_reg pmpaddr4;
  rand pmpaddr5_reg pmpaddr5;
  rand pmpaddr6_reg pmpaddr6;
  rand pmpaddr7_reg pmpaddr7;
  rand pmpaddr8_reg pmpaddr8;
  rand pmpaddr9_reg pmpaddr9;
  rand pmpaddr10_reg pmpaddr10;
  rand pmpaddr11_reg pmpaddr11;
  rand pmpaddr12_reg pmpaddr12;
  rand pmpaddr13_reg pmpaddr13;
  rand pmpaddr14_reg pmpaddr14;
  rand pmpaddr15_reg pmpaddr15;
  rand pmpaddr16_reg pmpaddr16;
  rand pmpaddr17_reg pmpaddr17;
  rand pmpaddr18_reg pmpaddr18;
  rand pmpaddr19_reg pmpaddr19;
  rand pmpaddr20_reg pmpaddr20;
  rand pmpaddr21_reg pmpaddr21;
  rand pmpaddr22_reg pmpaddr22;
  rand pmpaddr23_reg pmpaddr23;
  rand pmpaddr24_reg pmpaddr24;
  rand pmpaddr25_reg pmpaddr25;
  rand pmpaddr26_reg pmpaddr26;
  rand pmpaddr27_reg pmpaddr27;
  rand pmpaddr28_reg pmpaddr28;
  rand pmpaddr29_reg pmpaddr29;
  rand pmpaddr30_reg pmpaddr30;
  rand pmpaddr31_reg pmpaddr31;
  rand pmpaddr32_reg pmpaddr32;
  rand pmpaddr33_reg pmpaddr33;
  rand pmpaddr34_reg pmpaddr34;
  rand pmpaddr35_reg pmpaddr35;
  rand pmpaddr36_reg pmpaddr36;
  rand pmpaddr37_reg pmpaddr37;
  rand pmpaddr38_reg pmpaddr38;
  rand pmpaddr39_reg pmpaddr39;
  rand pmpaddr40_reg pmpaddr40;
  rand pmpaddr41_reg pmpaddr41;
  rand pmpaddr42_reg pmpaddr42;
  rand pmpaddr43_reg pmpaddr43;
  rand pmpaddr44_reg pmpaddr44;
  rand pmpaddr45_reg pmpaddr45;
  rand pmpaddr46_reg pmpaddr46;
  rand pmpaddr47_reg pmpaddr47;
  rand pmpaddr48_reg pmpaddr48;
  rand pmpaddr49_reg pmpaddr49;
  rand pmpaddr50_reg pmpaddr50;
  rand pmpaddr51_reg pmpaddr51;
  rand pmpaddr52_reg pmpaddr52;
  rand pmpaddr53_reg pmpaddr53;
  rand pmpaddr54_reg pmpaddr54;
  rand pmpaddr55_reg pmpaddr55;
  rand pmpaddr56_reg pmpaddr56;
  rand pmpaddr57_reg pmpaddr57;
  rand pmpaddr58_reg pmpaddr58;
  rand pmpaddr59_reg pmpaddr59;
  rand pmpaddr60_reg pmpaddr60;
  rand pmpaddr61_reg pmpaddr61;
  rand pmpaddr62_reg pmpaddr62;
  rand pmpaddr63_reg pmpaddr63;
  rand henvcfg_reg henvcfg;
  rand mseccfg_reg mseccfg;
  rand mcycle_reg mcycle;
  rand minstret_reg minstret;
  rand mhpmcounter3_reg mhpmcounter3;
  rand mhpmcounter4_reg mhpmcounter4;
  rand mhpmcounter5_reg mhpmcounter5;
  rand mhpmcounter6_reg mhpmcounter6;
  rand mhpmcounter7_reg mhpmcounter7;
  rand mhpmcounter8_reg mhpmcounter8;
  rand mhpmcounter9_reg mhpmcounter9;
  rand mhpmcounter10_reg mhpmcounter10;
  rand mhpmcounter11_reg mhpmcounter11;
  rand mhpmcounter12_reg mhpmcounter12;
  rand mhpmcounter13_reg mhpmcounter13;
  rand mhpmcounter14_reg mhpmcounter14;
  rand mhpmcounter15_reg mhpmcounter15;
  rand mhpmcounter16_reg mhpmcounter16;
  rand mhpmcounter17_reg mhpmcounter17;
  rand mhpmcounter18_reg mhpmcounter18;
  rand mhpmcounter19_reg mhpmcounter19;
  rand mhpmcounter20_reg mhpmcounter20;
  rand mhpmcounter21_reg mhpmcounter21;
  rand mhpmcounter22_reg mhpmcounter22;
  rand mhpmcounter23_reg mhpmcounter23;
  rand mhpmcounter24_reg mhpmcounter24;
  rand mhpmcounter25_reg mhpmcounter25;
  rand mhpmcounter26_reg mhpmcounter26;
  rand mhpmcounter27_reg mhpmcounter27;
  rand mhpmcounter28_reg mhpmcounter28;
  rand mhpmcounter29_reg mhpmcounter29;
  rand mhpmcounter30_reg mhpmcounter30;
  rand mhpmcounter31_reg mhpmcounter31;
  rand mvendorid_reg mvendorid;
  rand marchid_reg marchid;
  rand mimpid_reg mimpid;
  rand mhartid_reg mhartid;
  rand mconfigptr_reg mconfigptr;

  uvm_reg_map csr_map;

  function new( string name = "csr_sm_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mstatus = mstatus_reg::type_id::create("mstatus");
    mstatus.configure( .blk_parent(this) );
    mstatus.build();

    misa = misa_reg::type_id::create("misa");
    misa.configure( .blk_parent(this) );
    misa.build();

    mideleg = mideleg_reg::type_id::create("mideleg");
    mideleg.configure( .blk_parent(this) );
    mideleg.build();

    mie = mie_reg::type_id::create("mie");
    mie.configure( .blk_parent(this) );
    mie.build();

    mtvec = mtvec_reg::type_id::create("mtvec");
    mtvec.configure( .blk_parent(this) );
    mtvec.build();

    menvcfg = menvcfg_reg::type_id::create("menvcfg");
    menvcfg.configure( .blk_parent(this) );
    menvcfg.build();

    mcountinhibit = mcountinhibit_reg::type_id::create("mcountinhibit");
    mcountinhibit.configure( .blk_parent(this) );
    mcountinhibit.build();

    mhpmevent3 = mhpmevent3_reg::type_id::create("mhpmevent3");
    mhpmevent3.configure( .blk_parent(this) );
    mhpmevent3.build();

    mhpmevent4 = mhpmevent4_reg::type_id::create("mhpmevent4");
    mhpmevent4.configure( .blk_parent(this) );
    mhpmevent4.build();

    mhpmevent5 = mhpmevent5_reg::type_id::create("mhpmevent5");
    mhpmevent5.configure( .blk_parent(this) );
    mhpmevent5.build();

    mhpmevent6 = mhpmevent6_reg::type_id::create("mhpmevent6");
    mhpmevent6.configure( .blk_parent(this) );
    mhpmevent6.build();

    mhpmevent7 = mhpmevent7_reg::type_id::create("mhpmevent7");
    mhpmevent7.configure( .blk_parent(this) );
    mhpmevent7.build();

    mhpmevent8 = mhpmevent8_reg::type_id::create("mhpmevent8");
    mhpmevent8.configure( .blk_parent(this) );
    mhpmevent8.build();

    mhpmevent9 = mhpmevent9_reg::type_id::create("mhpmevent9");
    mhpmevent9.configure( .blk_parent(this) );
    mhpmevent9.build();

    mhpmevent10 = mhpmevent10_reg::type_id::create("mhpmevent10");
    mhpmevent10.configure( .blk_parent(this) );
    mhpmevent10.build();

    mhpmevent11 = mhpmevent11_reg::type_id::create("mhpmevent11");
    mhpmevent11.configure( .blk_parent(this) );
    mhpmevent11.build();

    mhpmevent12 = mhpmevent12_reg::type_id::create("mhpmevent12");
    mhpmevent12.configure( .blk_parent(this) );
    mhpmevent12.build();

    mhpmevent13 = mhpmevent13_reg::type_id::create("mhpmevent13");
    mhpmevent13.configure( .blk_parent(this) );
    mhpmevent13.build();

    mhpmevent14 = mhpmevent14_reg::type_id::create("mhpmevent14");
    mhpmevent14.configure( .blk_parent(this) );
    mhpmevent14.build();

    mhpmevent15 = mhpmevent15_reg::type_id::create("mhpmevent15");
    mhpmevent15.configure( .blk_parent(this) );
    mhpmevent15.build();

    mhpmevent16 = mhpmevent16_reg::type_id::create("mhpmevent16");
    mhpmevent16.configure( .blk_parent(this) );
    mhpmevent16.build();

    mhpmevent17 = mhpmevent17_reg::type_id::create("mhpmevent17");
    mhpmevent17.configure( .blk_parent(this) );
    mhpmevent17.build();

    mhpmevent18 = mhpmevent18_reg::type_id::create("mhpmevent18");
    mhpmevent18.configure( .blk_parent(this) );
    mhpmevent18.build();

    mhpmevent19 = mhpmevent19_reg::type_id::create("mhpmevent19");
    mhpmevent19.configure( .blk_parent(this) );
    mhpmevent19.build();

    mhpmevent20 = mhpmevent20_reg::type_id::create("mhpmevent20");
    mhpmevent20.configure( .blk_parent(this) );
    mhpmevent20.build();

    mhpmevent21 = mhpmevent21_reg::type_id::create("mhpmevent21");
    mhpmevent21.configure( .blk_parent(this) );
    mhpmevent21.build();

    mhpmevent22 = mhpmevent22_reg::type_id::create("mhpmevent22");
    mhpmevent22.configure( .blk_parent(this) );
    mhpmevent22.build();

    mhpmevent23 = mhpmevent23_reg::type_id::create("mhpmevent23");
    mhpmevent23.configure( .blk_parent(this) );
    mhpmevent23.build();

    mhpmevent24 = mhpmevent24_reg::type_id::create("mhpmevent24");
    mhpmevent24.configure( .blk_parent(this) );
    mhpmevent24.build();

    mhpmevent25 = mhpmevent25_reg::type_id::create("mhpmevent25");
    mhpmevent25.configure( .blk_parent(this) );
    mhpmevent25.build();

    mhpmevent26 = mhpmevent26_reg::type_id::create("mhpmevent26");
    mhpmevent26.configure( .blk_parent(this) );
    mhpmevent26.build();

    mhpmevent27 = mhpmevent27_reg::type_id::create("mhpmevent27");
    mhpmevent27.configure( .blk_parent(this) );
    mhpmevent27.build();

    mhpmevent28 = mhpmevent28_reg::type_id::create("mhpmevent28");
    mhpmevent28.configure( .blk_parent(this) );
    mhpmevent28.build();

    mhpmevent29 = mhpmevent29_reg::type_id::create("mhpmevent29");
    mhpmevent29.configure( .blk_parent(this) );
    mhpmevent29.build();

    mhpmevent30 = mhpmevent30_reg::type_id::create("mhpmevent30");
    mhpmevent30.configure( .blk_parent(this) );
    mhpmevent30.build();

    mhpmevent31 = mhpmevent31_reg::type_id::create("mhpmevent31");
    mhpmevent31.configure( .blk_parent(this) );
    mhpmevent31.build();

    mscratch = mscratch_reg::type_id::create("mscratch");
    mscratch.configure( .blk_parent(this) );
    mscratch.build();

    mepc = mepc_reg::type_id::create("mepc");
    mepc.configure( .blk_parent(this) );
    mepc.build();

    mcause = mcause_reg::type_id::create("mcause");
    mcause.configure( .blk_parent(this) );
    mcause.build();

    mtval = mtval_reg::type_id::create("mtval");
    mtval.configure( .blk_parent(this) );
    mtval.build();

    mip = mip_reg::type_id::create("mip");
    mip.configure( .blk_parent(this) );
    mip.build();

    pmpcfg0 = pmpcfg0_reg::type_id::create("pmpcfg0");
    pmpcfg0.configure( .blk_parent(this) );
    pmpcfg0.build();

    pmpcfg2 = pmpcfg2_reg::type_id::create("pmpcfg2");
    pmpcfg2.configure( .blk_parent(this) );
    pmpcfg2.build();

    pmpcfg4 = pmpcfg4_reg::type_id::create("pmpcfg4");
    pmpcfg4.configure( .blk_parent(this) );
    pmpcfg4.build();

    pmpcfg6 = pmpcfg6_reg::type_id::create("pmpcfg6");
    pmpcfg6.configure( .blk_parent(this) );
    pmpcfg6.build();

    pmpcfg8 = pmpcfg8_reg::type_id::create("pmpcfg8");
    pmpcfg8.configure( .blk_parent(this) );
    pmpcfg8.build();

    pmpcfg10 = pmpcfg10_reg::type_id::create("pmpcfg10");
    pmpcfg10.configure( .blk_parent(this) );
    pmpcfg10.build();

    pmpcfg12 = pmpcfg12_reg::type_id::create("pmpcfg12");
    pmpcfg12.configure( .blk_parent(this) );
    pmpcfg12.build();

    pmpcfg14 = pmpcfg14_reg::type_id::create("pmpcfg14");
    pmpcfg14.configure( .blk_parent(this) );
    pmpcfg14.build();

    pmpaddr0 = pmpaddr0_reg::type_id::create("pmpaddr0");
    pmpaddr0.configure( .blk_parent(this) );
    pmpaddr0.build();

    pmpaddr1 = pmpaddr1_reg::type_id::create("pmpaddr1");
    pmpaddr1.configure( .blk_parent(this) );
    pmpaddr1.build();

    pmpaddr2 = pmpaddr2_reg::type_id::create("pmpaddr2");
    pmpaddr2.configure( .blk_parent(this) );
    pmpaddr2.build();

    pmpaddr3 = pmpaddr3_reg::type_id::create("pmpaddr3");
    pmpaddr3.configure( .blk_parent(this) );
    pmpaddr3.build();

    pmpaddr4 = pmpaddr4_reg::type_id::create("pmpaddr4");
    pmpaddr4.configure( .blk_parent(this) );
    pmpaddr4.build();

    pmpaddr5 = pmpaddr5_reg::type_id::create("pmpaddr5");
    pmpaddr5.configure( .blk_parent(this) );
    pmpaddr5.build();

    pmpaddr6 = pmpaddr6_reg::type_id::create("pmpaddr6");
    pmpaddr6.configure( .blk_parent(this) );
    pmpaddr6.build();

    pmpaddr7 = pmpaddr7_reg::type_id::create("pmpaddr7");
    pmpaddr7.configure( .blk_parent(this) );
    pmpaddr7.build();

    pmpaddr8 = pmpaddr8_reg::type_id::create("pmpaddr8");
    pmpaddr8.configure( .blk_parent(this) );
    pmpaddr8.build();

    pmpaddr9 = pmpaddr9_reg::type_id::create("pmpaddr9");
    pmpaddr9.configure( .blk_parent(this) );
    pmpaddr9.build();

    pmpaddr10 = pmpaddr10_reg::type_id::create("pmpaddr10");
    pmpaddr10.configure( .blk_parent(this) );
    pmpaddr10.build();

    pmpaddr11 = pmpaddr11_reg::type_id::create("pmpaddr11");
    pmpaddr11.configure( .blk_parent(this) );
    pmpaddr11.build();

    pmpaddr12 = pmpaddr12_reg::type_id::create("pmpaddr12");
    pmpaddr12.configure( .blk_parent(this) );
    pmpaddr12.build();

    pmpaddr13 = pmpaddr13_reg::type_id::create("pmpaddr13");
    pmpaddr13.configure( .blk_parent(this) );
    pmpaddr13.build();

    pmpaddr14 = pmpaddr14_reg::type_id::create("pmpaddr14");
    pmpaddr14.configure( .blk_parent(this) );
    pmpaddr14.build();

    pmpaddr15 = pmpaddr15_reg::type_id::create("pmpaddr15");
    pmpaddr15.configure( .blk_parent(this) );
    pmpaddr15.build();

    pmpaddr16 = pmpaddr16_reg::type_id::create("pmpaddr16");
    pmpaddr16.configure( .blk_parent(this) );
    pmpaddr16.build();

    pmpaddr17 = pmpaddr17_reg::type_id::create("pmpaddr17");
    pmpaddr17.configure( .blk_parent(this) );
    pmpaddr17.build();

    pmpaddr18 = pmpaddr18_reg::type_id::create("pmpaddr18");
    pmpaddr18.configure( .blk_parent(this) );
    pmpaddr18.build();

    pmpaddr19 = pmpaddr19_reg::type_id::create("pmpaddr19");
    pmpaddr19.configure( .blk_parent(this) );
    pmpaddr19.build();

    pmpaddr20 = pmpaddr20_reg::type_id::create("pmpaddr20");
    pmpaddr20.configure( .blk_parent(this) );
    pmpaddr20.build();

    pmpaddr21 = pmpaddr21_reg::type_id::create("pmpaddr21");
    pmpaddr21.configure( .blk_parent(this) );
    pmpaddr21.build();

    pmpaddr22 = pmpaddr22_reg::type_id::create("pmpaddr22");
    pmpaddr22.configure( .blk_parent(this) );
    pmpaddr22.build();

    pmpaddr23 = pmpaddr23_reg::type_id::create("pmpaddr23");
    pmpaddr23.configure( .blk_parent(this) );
    pmpaddr23.build();

    pmpaddr24 = pmpaddr24_reg::type_id::create("pmpaddr24");
    pmpaddr24.configure( .blk_parent(this) );
    pmpaddr24.build();

    pmpaddr25 = pmpaddr25_reg::type_id::create("pmpaddr25");
    pmpaddr25.configure( .blk_parent(this) );
    pmpaddr25.build();

    pmpaddr26 = pmpaddr26_reg::type_id::create("pmpaddr26");
    pmpaddr26.configure( .blk_parent(this) );
    pmpaddr26.build();

    pmpaddr27 = pmpaddr27_reg::type_id::create("pmpaddr27");
    pmpaddr27.configure( .blk_parent(this) );
    pmpaddr27.build();

    pmpaddr28 = pmpaddr28_reg::type_id::create("pmpaddr28");
    pmpaddr28.configure( .blk_parent(this) );
    pmpaddr28.build();

    pmpaddr29 = pmpaddr29_reg::type_id::create("pmpaddr29");
    pmpaddr29.configure( .blk_parent(this) );
    pmpaddr29.build();

    pmpaddr30 = pmpaddr30_reg::type_id::create("pmpaddr30");
    pmpaddr30.configure( .blk_parent(this) );
    pmpaddr30.build();

    pmpaddr31 = pmpaddr31_reg::type_id::create("pmpaddr31");
    pmpaddr31.configure( .blk_parent(this) );
    pmpaddr31.build();

    pmpaddr32 = pmpaddr32_reg::type_id::create("pmpaddr32");
    pmpaddr32.configure( .blk_parent(this) );
    pmpaddr32.build();

    pmpaddr33 = pmpaddr33_reg::type_id::create("pmpaddr33");
    pmpaddr33.configure( .blk_parent(this) );
    pmpaddr33.build();

    pmpaddr34 = pmpaddr34_reg::type_id::create("pmpaddr34");
    pmpaddr34.configure( .blk_parent(this) );
    pmpaddr34.build();

    pmpaddr35 = pmpaddr35_reg::type_id::create("pmpaddr35");
    pmpaddr35.configure( .blk_parent(this) );
    pmpaddr35.build();

    pmpaddr36 = pmpaddr36_reg::type_id::create("pmpaddr36");
    pmpaddr36.configure( .blk_parent(this) );
    pmpaddr36.build();

    pmpaddr37 = pmpaddr37_reg::type_id::create("pmpaddr37");
    pmpaddr37.configure( .blk_parent(this) );
    pmpaddr37.build();

    pmpaddr38 = pmpaddr38_reg::type_id::create("pmpaddr38");
    pmpaddr38.configure( .blk_parent(this) );
    pmpaddr38.build();

    pmpaddr39 = pmpaddr39_reg::type_id::create("pmpaddr39");
    pmpaddr39.configure( .blk_parent(this) );
    pmpaddr39.build();

    pmpaddr40 = pmpaddr40_reg::type_id::create("pmpaddr40");
    pmpaddr40.configure( .blk_parent(this) );
    pmpaddr40.build();

    pmpaddr41 = pmpaddr41_reg::type_id::create("pmpaddr41");
    pmpaddr41.configure( .blk_parent(this) );
    pmpaddr41.build();

    pmpaddr42 = pmpaddr42_reg::type_id::create("pmpaddr42");
    pmpaddr42.configure( .blk_parent(this) );
    pmpaddr42.build();

    pmpaddr43 = pmpaddr43_reg::type_id::create("pmpaddr43");
    pmpaddr43.configure( .blk_parent(this) );
    pmpaddr43.build();

    pmpaddr44 = pmpaddr44_reg::type_id::create("pmpaddr44");
    pmpaddr44.configure( .blk_parent(this) );
    pmpaddr44.build();

    pmpaddr45 = pmpaddr45_reg::type_id::create("pmpaddr45");
    pmpaddr45.configure( .blk_parent(this) );
    pmpaddr45.build();

    pmpaddr46 = pmpaddr46_reg::type_id::create("pmpaddr46");
    pmpaddr46.configure( .blk_parent(this) );
    pmpaddr46.build();

    pmpaddr47 = pmpaddr47_reg::type_id::create("pmpaddr47");
    pmpaddr47.configure( .blk_parent(this) );
    pmpaddr47.build();

    pmpaddr48 = pmpaddr48_reg::type_id::create("pmpaddr48");
    pmpaddr48.configure( .blk_parent(this) );
    pmpaddr48.build();

    pmpaddr49 = pmpaddr49_reg::type_id::create("pmpaddr49");
    pmpaddr49.configure( .blk_parent(this) );
    pmpaddr49.build();

    pmpaddr50 = pmpaddr50_reg::type_id::create("pmpaddr50");
    pmpaddr50.configure( .blk_parent(this) );
    pmpaddr50.build();

    pmpaddr51 = pmpaddr51_reg::type_id::create("pmpaddr51");
    pmpaddr51.configure( .blk_parent(this) );
    pmpaddr51.build();

    pmpaddr52 = pmpaddr52_reg::type_id::create("pmpaddr52");
    pmpaddr52.configure( .blk_parent(this) );
    pmpaddr52.build();

    pmpaddr53 = pmpaddr53_reg::type_id::create("pmpaddr53");
    pmpaddr53.configure( .blk_parent(this) );
    pmpaddr53.build();

    pmpaddr54 = pmpaddr54_reg::type_id::create("pmpaddr54");
    pmpaddr54.configure( .blk_parent(this) );
    pmpaddr54.build();

    pmpaddr55 = pmpaddr55_reg::type_id::create("pmpaddr55");
    pmpaddr55.configure( .blk_parent(this) );
    pmpaddr55.build();

    pmpaddr56 = pmpaddr56_reg::type_id::create("pmpaddr56");
    pmpaddr56.configure( .blk_parent(this) );
    pmpaddr56.build();

    pmpaddr57 = pmpaddr57_reg::type_id::create("pmpaddr57");
    pmpaddr57.configure( .blk_parent(this) );
    pmpaddr57.build();

    pmpaddr58 = pmpaddr58_reg::type_id::create("pmpaddr58");
    pmpaddr58.configure( .blk_parent(this) );
    pmpaddr58.build();

    pmpaddr59 = pmpaddr59_reg::type_id::create("pmpaddr59");
    pmpaddr59.configure( .blk_parent(this) );
    pmpaddr59.build();

    pmpaddr60 = pmpaddr60_reg::type_id::create("pmpaddr60");
    pmpaddr60.configure( .blk_parent(this) );
    pmpaddr60.build();

    pmpaddr61 = pmpaddr61_reg::type_id::create("pmpaddr61");
    pmpaddr61.configure( .blk_parent(this) );
    pmpaddr61.build();

    pmpaddr62 = pmpaddr62_reg::type_id::create("pmpaddr62");
    pmpaddr62.configure( .blk_parent(this) );
    pmpaddr62.build();

    pmpaddr63 = pmpaddr63_reg::type_id::create("pmpaddr63");
    pmpaddr63.configure( .blk_parent(this) );
    pmpaddr63.build();

    henvcfg = henvcfg_reg::type_id::create("henvcfg");
    henvcfg.configure( .blk_parent(this) );
    henvcfg.build();

    mseccfg = mseccfg_reg::type_id::create("mseccfg");
    mseccfg.configure( .blk_parent(this) );
    mseccfg.build();

    mcycle = mcycle_reg::type_id::create("mcycle");
    mcycle.configure( .blk_parent(this) );
    mcycle.build();

    minstret = minstret_reg::type_id::create("minstret");
    minstret.configure( .blk_parent(this) );
    minstret.build();

    mhpmcounter3 = mhpmcounter3_reg::type_id::create("mhpmcounter3");
    mhpmcounter3.configure( .blk_parent(this) );
    mhpmcounter3.build();

    mhpmcounter4 = mhpmcounter4_reg::type_id::create("mhpmcounter4");
    mhpmcounter4.configure( .blk_parent(this) );
    mhpmcounter4.build();

    mhpmcounter5 = mhpmcounter5_reg::type_id::create("mhpmcounter5");
    mhpmcounter5.configure( .blk_parent(this) );
    mhpmcounter5.build();

    mhpmcounter6 = mhpmcounter6_reg::type_id::create("mhpmcounter6");
    mhpmcounter6.configure( .blk_parent(this) );
    mhpmcounter6.build();

    mhpmcounter7 = mhpmcounter7_reg::type_id::create("mhpmcounter7");
    mhpmcounter7.configure( .blk_parent(this) );
    mhpmcounter7.build();

    mhpmcounter8 = mhpmcounter8_reg::type_id::create("mhpmcounter8");
    mhpmcounter8.configure( .blk_parent(this) );
    mhpmcounter8.build();

    mhpmcounter9 = mhpmcounter9_reg::type_id::create("mhpmcounter9");
    mhpmcounter9.configure( .blk_parent(this) );
    mhpmcounter9.build();

    mhpmcounter10 = mhpmcounter10_reg::type_id::create("mhpmcounter10");
    mhpmcounter10.configure( .blk_parent(this) );
    mhpmcounter10.build();

    mhpmcounter11 = mhpmcounter11_reg::type_id::create("mhpmcounter11");
    mhpmcounter11.configure( .blk_parent(this) );
    mhpmcounter11.build();

    mhpmcounter12 = mhpmcounter12_reg::type_id::create("mhpmcounter12");
    mhpmcounter12.configure( .blk_parent(this) );
    mhpmcounter12.build();

    mhpmcounter13 = mhpmcounter13_reg::type_id::create("mhpmcounter13");
    mhpmcounter13.configure( .blk_parent(this) );
    mhpmcounter13.build();

    mhpmcounter14 = mhpmcounter14_reg::type_id::create("mhpmcounter14");
    mhpmcounter14.configure( .blk_parent(this) );
    mhpmcounter14.build();

    mhpmcounter15 = mhpmcounter15_reg::type_id::create("mhpmcounter15");
    mhpmcounter15.configure( .blk_parent(this) );
    mhpmcounter15.build();

    mhpmcounter16 = mhpmcounter16_reg::type_id::create("mhpmcounter16");
    mhpmcounter16.configure( .blk_parent(this) );
    mhpmcounter16.build();

    mhpmcounter17 = mhpmcounter17_reg::type_id::create("mhpmcounter17");
    mhpmcounter17.configure( .blk_parent(this) );
    mhpmcounter17.build();

    mhpmcounter18 = mhpmcounter18_reg::type_id::create("mhpmcounter18");
    mhpmcounter18.configure( .blk_parent(this) );
    mhpmcounter18.build();

    mhpmcounter19 = mhpmcounter19_reg::type_id::create("mhpmcounter19");
    mhpmcounter19.configure( .blk_parent(this) );
    mhpmcounter19.build();

    mhpmcounter20 = mhpmcounter20_reg::type_id::create("mhpmcounter20");
    mhpmcounter20.configure( .blk_parent(this) );
    mhpmcounter20.build();

    mhpmcounter21 = mhpmcounter21_reg::type_id::create("mhpmcounter21");
    mhpmcounter21.configure( .blk_parent(this) );
    mhpmcounter21.build();

    mhpmcounter22 = mhpmcounter22_reg::type_id::create("mhpmcounter22");
    mhpmcounter22.configure( .blk_parent(this) );
    mhpmcounter22.build();

    mhpmcounter23 = mhpmcounter23_reg::type_id::create("mhpmcounter23");
    mhpmcounter23.configure( .blk_parent(this) );
    mhpmcounter23.build();

    mhpmcounter24 = mhpmcounter24_reg::type_id::create("mhpmcounter24");
    mhpmcounter24.configure( .blk_parent(this) );
    mhpmcounter24.build();

    mhpmcounter25 = mhpmcounter25_reg::type_id::create("mhpmcounter25");
    mhpmcounter25.configure( .blk_parent(this) );
    mhpmcounter25.build();

    mhpmcounter26 = mhpmcounter26_reg::type_id::create("mhpmcounter26");
    mhpmcounter26.configure( .blk_parent(this) );
    mhpmcounter26.build();

    mhpmcounter27 = mhpmcounter27_reg::type_id::create("mhpmcounter27");
    mhpmcounter27.configure( .blk_parent(this) );
    mhpmcounter27.build();

    mhpmcounter28 = mhpmcounter28_reg::type_id::create("mhpmcounter28");
    mhpmcounter28.configure( .blk_parent(this) );
    mhpmcounter28.build();

    mhpmcounter29 = mhpmcounter29_reg::type_id::create("mhpmcounter29");
    mhpmcounter29.configure( .blk_parent(this) );
    mhpmcounter29.build();

    mhpmcounter30 = mhpmcounter30_reg::type_id::create("mhpmcounter30");
    mhpmcounter30.configure( .blk_parent(this) );
    mhpmcounter30.build();

    mhpmcounter31 = mhpmcounter31_reg::type_id::create("mhpmcounter31");
    mhpmcounter31.configure( .blk_parent(this) );
    mhpmcounter31.build();

    mvendorid = mvendorid_reg::type_id::create("mvendorid");
    mvendorid.configure( .blk_parent(this) );
    mvendorid.build();

    marchid = marchid_reg::type_id::create("marchid");
    marchid.configure( .blk_parent(this) );
    marchid.build();

    mimpid = mimpid_reg::type_id::create("mimpid");
    mimpid.configure( .blk_parent(this) );
    mimpid.build();

    mhartid = mhartid_reg::type_id::create("mhartid");
    mhartid.configure( .blk_parent(this) );
    mhartid.build();

    mconfigptr = mconfigptr_reg::type_id::create("mconfigptr");
    mconfigptr.configure( .blk_parent(this) );
    mconfigptr.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(mstatus, 12'h300, "RW");
    csr_map.add_reg(misa, 12'h301, "RW");
    csr_map.add_reg(mideleg, 12'h303, "RW");
    csr_map.add_reg(mie, 12'h304, "RW");
    csr_map.add_reg(mtvec, 12'h305, "RW");
    csr_map.add_reg(menvcfg, 12'h30a, "RW");
    csr_map.add_reg(mcountinhibit, 12'h320, "RW");
    csr_map.add_reg(mhpmevent3, 12'h323, "RW");
    csr_map.add_reg(mhpmevent4, 12'h324, "RW");
    csr_map.add_reg(mhpmevent5, 12'h325, "RW");
    csr_map.add_reg(mhpmevent6, 12'h326, "RW");
    csr_map.add_reg(mhpmevent7, 12'h327, "RW");
    csr_map.add_reg(mhpmevent8, 12'h328, "RW");
    csr_map.add_reg(mhpmevent9, 12'h329, "RW");
    csr_map.add_reg(mhpmevent10, 12'h32a, "RW");
    csr_map.add_reg(mhpmevent11, 12'h32b, "RW");
    csr_map.add_reg(mhpmevent12, 12'h32c, "RW");
    csr_map.add_reg(mhpmevent13, 12'h32d, "RW");
    csr_map.add_reg(mhpmevent14, 12'h32e, "RW");
    csr_map.add_reg(mhpmevent15, 12'h32f, "RW");
    csr_map.add_reg(mhpmevent16, 12'h330, "RW");
    csr_map.add_reg(mhpmevent17, 12'h331, "RW");
    csr_map.add_reg(mhpmevent18, 12'h332, "RW");
    csr_map.add_reg(mhpmevent19, 12'h333, "RW");
    csr_map.add_reg(mhpmevent20, 12'h334, "RW");
    csr_map.add_reg(mhpmevent21, 12'h335, "RW");
    csr_map.add_reg(mhpmevent22, 12'h336, "RW");
    csr_map.add_reg(mhpmevent23, 12'h337, "RW");
    csr_map.add_reg(mhpmevent24, 12'h338, "RW");
    csr_map.add_reg(mhpmevent25, 12'h339, "RW");
    csr_map.add_reg(mhpmevent26, 12'h33a, "RW");
    csr_map.add_reg(mhpmevent27, 12'h33b, "RW");
    csr_map.add_reg(mhpmevent28, 12'h33c, "RW");
    csr_map.add_reg(mhpmevent29, 12'h33d, "RW");
    csr_map.add_reg(mhpmevent30, 12'h33e, "RW");
    csr_map.add_reg(mhpmevent31, 12'h33f, "RW");
    csr_map.add_reg(mscratch, 12'h340, "RW");
    csr_map.add_reg(mepc, 12'h341, "RW");
    csr_map.add_reg(mcause, 12'h342, "RW");
    csr_map.add_reg(mtval, 12'h343, "RW");
    csr_map.add_reg(mip, 12'h344, "RW");
    csr_map.add_reg(pmpcfg0, 12'h3a0, "RW");
    csr_map.add_reg(pmpcfg2, 12'h3a2, "RW");
    csr_map.add_reg(pmpcfg4, 12'h3a4, "RW");
    csr_map.add_reg(pmpcfg6, 12'h3a6, "RW");
    csr_map.add_reg(pmpcfg8, 12'h3a8, "RW");
    csr_map.add_reg(pmpcfg10, 12'h3aa, "RW");
    csr_map.add_reg(pmpcfg12, 12'h3ac, "RW");
    csr_map.add_reg(pmpcfg14, 12'h3ae, "RW");
    csr_map.add_reg(pmpaddr0, 12'h3b0, "RW");
    csr_map.add_reg(pmpaddr1, 12'h3b1, "RW");
    csr_map.add_reg(pmpaddr2, 12'h3b2, "RW");
    csr_map.add_reg(pmpaddr3, 12'h3b3, "RW");
    csr_map.add_reg(pmpaddr4, 12'h3b4, "RW");
    csr_map.add_reg(pmpaddr5, 12'h3b5, "RW");
    csr_map.add_reg(pmpaddr6, 12'h3b6, "RW");
    csr_map.add_reg(pmpaddr7, 12'h3b7, "RW");
    csr_map.add_reg(pmpaddr8, 12'h3b8, "RW");
    csr_map.add_reg(pmpaddr9, 12'h3b9, "RW");
    csr_map.add_reg(pmpaddr10, 12'h3ba, "RW");
    csr_map.add_reg(pmpaddr11, 12'h3bb, "RW");
    csr_map.add_reg(pmpaddr12, 12'h3bc, "RW");
    csr_map.add_reg(pmpaddr13, 12'h3bd, "RW");
    csr_map.add_reg(pmpaddr14, 12'h3be, "RW");
    csr_map.add_reg(pmpaddr15, 12'h3bf, "RW");
    csr_map.add_reg(pmpaddr16, 12'h3c0, "RW");
    csr_map.add_reg(pmpaddr17, 12'h3c1, "RW");
    csr_map.add_reg(pmpaddr18, 12'h3c2, "RW");
    csr_map.add_reg(pmpaddr19, 12'h3c3, "RW");
    csr_map.add_reg(pmpaddr20, 12'h3c4, "RW");
    csr_map.add_reg(pmpaddr21, 12'h3c5, "RW");
    csr_map.add_reg(pmpaddr22, 12'h3c6, "RW");
    csr_map.add_reg(pmpaddr23, 12'h3c7, "RW");
    csr_map.add_reg(pmpaddr24, 12'h3c8, "RW");
    csr_map.add_reg(pmpaddr25, 12'h3c9, "RW");
    csr_map.add_reg(pmpaddr26, 12'h3ca, "RW");
    csr_map.add_reg(pmpaddr27, 12'h3cb, "RW");
    csr_map.add_reg(pmpaddr28, 12'h3cc, "RW");
    csr_map.add_reg(pmpaddr29, 12'h3cd, "RW");
    csr_map.add_reg(pmpaddr30, 12'h3ce, "RW");
    csr_map.add_reg(pmpaddr31, 12'h3cf, "RW");
    csr_map.add_reg(pmpaddr32, 12'h3d0, "RW");
    csr_map.add_reg(pmpaddr33, 12'h3d1, "RW");
    csr_map.add_reg(pmpaddr34, 12'h3d2, "RW");
    csr_map.add_reg(pmpaddr35, 12'h3d3, "RW");
    csr_map.add_reg(pmpaddr36, 12'h3d4, "RW");
    csr_map.add_reg(pmpaddr37, 12'h3d5, "RW");
    csr_map.add_reg(pmpaddr38, 12'h3d6, "RW");
    csr_map.add_reg(pmpaddr39, 12'h3d7, "RW");
    csr_map.add_reg(pmpaddr40, 12'h3d8, "RW");
    csr_map.add_reg(pmpaddr41, 12'h3d9, "RW");
    csr_map.add_reg(pmpaddr42, 12'h3da, "RW");
    csr_map.add_reg(pmpaddr43, 12'h3db, "RW");
    csr_map.add_reg(pmpaddr44, 12'h3dc, "RW");
    csr_map.add_reg(pmpaddr45, 12'h3dd, "RW");
    csr_map.add_reg(pmpaddr46, 12'h3de, "RW");
    csr_map.add_reg(pmpaddr47, 12'h3df, "RW");
    csr_map.add_reg(pmpaddr48, 12'h3e0, "RW");
    csr_map.add_reg(pmpaddr49, 12'h3e1, "RW");
    csr_map.add_reg(pmpaddr50, 12'h3e2, "RW");
    csr_map.add_reg(pmpaddr51, 12'h3e3, "RW");
    csr_map.add_reg(pmpaddr52, 12'h3e4, "RW");
    csr_map.add_reg(pmpaddr53, 12'h3e5, "RW");
    csr_map.add_reg(pmpaddr54, 12'h3e6, "RW");
    csr_map.add_reg(pmpaddr55, 12'h3e7, "RW");
    csr_map.add_reg(pmpaddr56, 12'h3e8, "RW");
    csr_map.add_reg(pmpaddr57, 12'h3e9, "RW");
    csr_map.add_reg(pmpaddr58, 12'h3ea, "RW");
    csr_map.add_reg(pmpaddr59, 12'h3eb, "RW");
    csr_map.add_reg(pmpaddr60, 12'h3ec, "RW");
    csr_map.add_reg(pmpaddr61, 12'h3ed, "RW");
    csr_map.add_reg(pmpaddr62, 12'h3ee, "RW");
    csr_map.add_reg(pmpaddr63, 12'h3ef, "RW");
    csr_map.add_reg(henvcfg, 12'h60a, "RW");
    csr_map.add_reg(mseccfg, 12'h747, "RW");
    csr_map.add_reg(mcycle, 12'hb00, "RW");
    csr_map.add_reg(minstret, 12'hb02, "RW");
    csr_map.add_reg(mhpmcounter3, 12'hb03, "RW");
    csr_map.add_reg(mhpmcounter4, 12'hb04, "RW");
    csr_map.add_reg(mhpmcounter5, 12'hb05, "RW");
    csr_map.add_reg(mhpmcounter6, 12'hb06, "RW");
    csr_map.add_reg(mhpmcounter7, 12'hb07, "RW");
    csr_map.add_reg(mhpmcounter8, 12'hb08, "RW");
    csr_map.add_reg(mhpmcounter9, 12'hb09, "RW");
    csr_map.add_reg(mhpmcounter10, 12'hb0a, "RW");
    csr_map.add_reg(mhpmcounter11, 12'hb0b, "RW");
    csr_map.add_reg(mhpmcounter12, 12'hb0c, "RW");
    csr_map.add_reg(mhpmcounter13, 12'hb0d, "RW");
    csr_map.add_reg(mhpmcounter14, 12'hb0e, "RW");
    csr_map.add_reg(mhpmcounter15, 12'hb0f, "RW");
    csr_map.add_reg(mhpmcounter16, 12'hb10, "RW");
    csr_map.add_reg(mhpmcounter17, 12'hb11, "RW");
    csr_map.add_reg(mhpmcounter18, 12'hb12, "RW");
    csr_map.add_reg(mhpmcounter19, 12'hb13, "RW");
    csr_map.add_reg(mhpmcounter20, 12'hb14, "RW");
    csr_map.add_reg(mhpmcounter21, 12'hb15, "RW");
    csr_map.add_reg(mhpmcounter22, 12'hb16, "RW");
    csr_map.add_reg(mhpmcounter23, 12'hb17, "RW");
    csr_map.add_reg(mhpmcounter24, 12'hb18, "RW");
    csr_map.add_reg(mhpmcounter25, 12'hb19, "RW");
    csr_map.add_reg(mhpmcounter26, 12'hb1a, "RW");
    csr_map.add_reg(mhpmcounter27, 12'hb1b, "RW");
    csr_map.add_reg(mhpmcounter28, 12'hb1c, "RW");
    csr_map.add_reg(mhpmcounter29, 12'hb1d, "RW");
    csr_map.add_reg(mhpmcounter30, 12'hb1e, "RW");
    csr_map.add_reg(mhpmcounter31, 12'hb1f, "RW");
    csr_map.add_reg(mvendorid, 12'hf11, "RW");
    csr_map.add_reg(marchid, 12'hf12, "RW");
    csr_map.add_reg(mimpid, 12'hf13, "RW");
    csr_map.add_reg(mhartid, 12'hf14, "RW");
    csr_map.add_reg(mconfigptr, 12'hf15, "RW");

    lock_model();
  endfunction : build

endclass : csr_sm_reg_block
