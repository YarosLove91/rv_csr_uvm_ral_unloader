//------------------------------------------------------------------------------
// csr_s_reg_block.svh
//
// RAL-модель S.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_s_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_s_reg_block )

  rand sstatus_reg sstatus;
  rand sie_reg sie;
  rand stvec_reg stvec;
  rand scounteren_reg scounteren;
  rand senvcfg_reg senvcfg;
  rand sscratch_reg sscratch;
  rand sepc_reg sepc;
  rand scause_reg scause;
  rand stval_reg stval;
  rand sip_reg sip;
  rand satp_reg satp;
  rand medeleg_reg medeleg;
  rand scontext_reg scontext;
  rand mscontext_reg mscontext;

  uvm_reg_map csr_map;

  function new( string name = "csr_s_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstatus = sstatus_reg::type_id::create("sstatus");
    sstatus.configure( .blk_parent(this) );
    sstatus.build();

    sie = sie_reg::type_id::create("sie");
    sie.configure( .blk_parent(this) );
    sie.build();

    stvec = stvec_reg::type_id::create("stvec");
    stvec.configure( .blk_parent(this) );
    stvec.build();

    scounteren = scounteren_reg::type_id::create("scounteren");
    scounteren.configure( .blk_parent(this) );
    scounteren.build();

    senvcfg = senvcfg_reg::type_id::create("senvcfg");
    senvcfg.configure( .blk_parent(this) );
    senvcfg.build();

    sscratch = sscratch_reg::type_id::create("sscratch");
    sscratch.configure( .blk_parent(this) );
    sscratch.build();

    sepc = sepc_reg::type_id::create("sepc");
    sepc.configure( .blk_parent(this) );
    sepc.build();

    scause = scause_reg::type_id::create("scause");
    scause.configure( .blk_parent(this) );
    scause.build();

    stval = stval_reg::type_id::create("stval");
    stval.configure( .blk_parent(this) );
    stval.build();

    sip = sip_reg::type_id::create("sip");
    sip.configure( .blk_parent(this) );
    sip.build();

    satp = satp_reg::type_id::create("satp");
    satp.configure( .blk_parent(this) );
    satp.build();

    medeleg = medeleg_reg::type_id::create("medeleg");
    medeleg.configure( .blk_parent(this) );
    medeleg.build();

    scontext = scontext_reg::type_id::create("scontext");
    scontext.configure( .blk_parent(this) );
    scontext.build();

    mscontext = mscontext_reg::type_id::create("mscontext");
    mscontext.configure( .blk_parent(this) );
    mscontext.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(sstatus, 12'h100, "RW");
    csr_map.add_reg(sie, 12'h104, "RW");
    csr_map.add_reg(stvec, 12'h105, "RW");
    csr_map.add_reg(scounteren, 12'h106, "RW");
    csr_map.add_reg(senvcfg, 12'h10a, "RW");
    csr_map.add_reg(sscratch, 12'h140, "RW");
    csr_map.add_reg(sepc, 12'h141, "RW");
    csr_map.add_reg(scause, 12'h142, "RW");
    csr_map.add_reg(stval, 12'h143, "RW");
    csr_map.add_reg(sip, 12'h144, "RW");
    csr_map.add_reg(satp, 12'h180, "RW");
    csr_map.add_reg(medeleg, 12'h302, "RW");
    csr_map.add_reg(scontext, 12'h5a8, "RW");
    csr_map.add_reg(mscontext, 12'h7aa, "RW");

    lock_model();
  endfunction : build

endclass : csr_s_reg_block
