//------------------------------------------------------------------------------
// csr_h_reg_block.svh
//
// RAL-модель H.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_h_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_h_reg_block )

  rand vsstatus_reg vsstatus;
  rand vstvec_reg vstvec;
  rand vsepc_reg vsepc;
  rand vscause_reg vscause;
  rand vstval_reg vstval;
  rand vstimecmp_reg vstimecmp;
  rand vsctrctl_reg vsctrctl;
  rand vsatp_reg vsatp;
  rand mtinst_reg mtinst;
  rand mtval2_reg mtval2;
  rand hstatus_reg hstatus;
  rand hedeleg_reg hedeleg;
  rand htimedelta_reg htimedelta;
  rand hcounteren_reg hcounteren;
  rand hstateen0_reg hstateen0;
  rand hstateen1_reg hstateen1;
  rand hstateen2_reg hstateen2;
  rand hstateen3_reg hstateen3;
  rand htval_reg htval;
  rand htinst_reg htinst;
  rand hgatp_reg hgatp;
  rand hcontext_reg hcontext;

  uvm_reg_map csr_map;

  function new( string name = "csr_h_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsstatus = vsstatus_reg::type_id::create("vsstatus");
    vsstatus.configure( .blk_parent(this) );
    vsstatus.build();

    vstvec = vstvec_reg::type_id::create("vstvec");
    vstvec.configure( .blk_parent(this) );
    vstvec.build();

    vsepc = vsepc_reg::type_id::create("vsepc");
    vsepc.configure( .blk_parent(this) );
    vsepc.build();

    vscause = vscause_reg::type_id::create("vscause");
    vscause.configure( .blk_parent(this) );
    vscause.build();

    vstval = vstval_reg::type_id::create("vstval");
    vstval.configure( .blk_parent(this) );
    vstval.build();

    vstimecmp = vstimecmp_reg::type_id::create("vstimecmp");
    vstimecmp.configure( .blk_parent(this) );
    vstimecmp.build();

    vsctrctl = vsctrctl_reg::type_id::create("vsctrctl");
    vsctrctl.configure( .blk_parent(this) );
    vsctrctl.build();

    vsatp = vsatp_reg::type_id::create("vsatp");
    vsatp.configure( .blk_parent(this) );
    vsatp.build();

    mtinst = mtinst_reg::type_id::create("mtinst");
    mtinst.configure( .blk_parent(this) );
    mtinst.build();

    mtval2 = mtval2_reg::type_id::create("mtval2");
    mtval2.configure( .blk_parent(this) );
    mtval2.build();

    hstatus = hstatus_reg::type_id::create("hstatus");
    hstatus.configure( .blk_parent(this) );
    hstatus.build();

    hedeleg = hedeleg_reg::type_id::create("hedeleg");
    hedeleg.configure( .blk_parent(this) );
    hedeleg.build();

    htimedelta = htimedelta_reg::type_id::create("htimedelta");
    htimedelta.configure( .blk_parent(this) );
    htimedelta.build();

    hcounteren = hcounteren_reg::type_id::create("hcounteren");
    hcounteren.configure( .blk_parent(this) );
    hcounteren.build();

    hstateen0 = hstateen0_reg::type_id::create("hstateen0");
    hstateen0.configure( .blk_parent(this) );
    hstateen0.build();

    hstateen1 = hstateen1_reg::type_id::create("hstateen1");
    hstateen1.configure( .blk_parent(this) );
    hstateen1.build();

    hstateen2 = hstateen2_reg::type_id::create("hstateen2");
    hstateen2.configure( .blk_parent(this) );
    hstateen2.build();

    hstateen3 = hstateen3_reg::type_id::create("hstateen3");
    hstateen3.configure( .blk_parent(this) );
    hstateen3.build();

    htval = htval_reg::type_id::create("htval");
    htval.configure( .blk_parent(this) );
    htval.build();

    htinst = htinst_reg::type_id::create("htinst");
    htinst.configure( .blk_parent(this) );
    htinst.build();

    hgatp = hgatp_reg::type_id::create("hgatp");
    hgatp.configure( .blk_parent(this) );
    hgatp.build();

    hcontext = hcontext_reg::type_id::create("hcontext");
    hcontext.configure( .blk_parent(this) );
    hcontext.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(vsstatus, 12'h200, "RW");
    csr_map.add_reg(vstvec, 12'h205, "RW");
    csr_map.add_reg(vsepc, 12'h241, "RW");
    csr_map.add_reg(vscause, 12'h242, "RW");
    csr_map.add_reg(vstval, 12'h243, "RW");
    csr_map.add_reg(vstimecmp, 12'h24d, "RW");
    csr_map.add_reg(vsctrctl, 12'h24e, "RW");
    csr_map.add_reg(vsatp, 12'h280, "RW");
    csr_map.add_reg(mtinst, 12'h34a, "RW");
    csr_map.add_reg(mtval2, 12'h34b, "RW");
    csr_map.add_reg(hstatus, 12'h600, "RW");
    csr_map.add_reg(hedeleg, 12'h602, "RW");
    csr_map.add_reg(htimedelta, 12'h605, "RW");
    csr_map.add_reg(hcounteren, 12'h606, "RW");
    csr_map.add_reg(hstateen0, 12'h60c, "RW");
    csr_map.add_reg(hstateen1, 12'h60d, "RW");
    csr_map.add_reg(hstateen2, 12'h60e, "RW");
    csr_map.add_reg(hstateen3, 12'h60f, "RW");
    csr_map.add_reg(htval, 12'h643, "RW");
    csr_map.add_reg(htinst, 12'h64a, "RW");
    csr_map.add_reg(hgatp, 12'h680, "RW");
    csr_map.add_reg(hcontext, 12'h6a8, "RW");

    lock_model();
  endfunction : build

endclass : csr_h_reg_block
