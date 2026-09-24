//------------------------------------------------------------------------------
// csr_sm_base_reg_block.svh
//
// RAL-модель Sm_base.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_sm_base_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_sm_base_reg_block )

  rand mstatus_reg mstatus;
  rand misa_reg misa;
  rand medeleg_reg medeleg;
  rand mideleg_reg mideleg;
  rand mie_reg mie;
  rand mtvec_reg mtvec;
  rand mcounteren_reg mcounteren;
  rand mscratch_reg mscratch;
  rand mepc_reg mepc;
  rand mcause_reg mcause;
  rand mtval_reg mtval;
  rand mip_reg mip;
  rand mvendorid_reg mvendorid;
  rand marchid_reg marchid;
  rand mimpid_reg mimpid;
  rand mhartid_reg mhartid;
  rand mconfigptr_reg mconfigptr;

  uvm_reg_map csr_map;

  function new( string name = "csr_sm_base_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mstatus = mstatus_reg::type_id::create("mstatus");
    mstatus.configure( .blk_parent(this) );
    mstatus.build();

    misa = misa_reg::type_id::create("misa");
    misa.configure( .blk_parent(this) );
    misa.build();

    medeleg = medeleg_reg::type_id::create("medeleg");
    medeleg.configure( .blk_parent(this) );
    medeleg.build();

    mideleg = mideleg_reg::type_id::create("mideleg");
    mideleg.configure( .blk_parent(this) );
    mideleg.build();

    mie = mie_reg::type_id::create("mie");
    mie.configure( .blk_parent(this) );
    mie.build();

    mtvec = mtvec_reg::type_id::create("mtvec");
    mtvec.configure( .blk_parent(this) );
    mtvec.build();

    mcounteren = mcounteren_reg::type_id::create("mcounteren");
    mcounteren.configure( .blk_parent(this) );
    mcounteren.build();

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
    csr_map.add_reg(medeleg, 12'h302, "RW");
    csr_map.add_reg(mideleg, 12'h303, "RW");
    csr_map.add_reg(mie, 12'h304, "RW");
    csr_map.add_reg(mtvec, 12'h305, "RW");
    csr_map.add_reg(mcounteren, 12'h306, "RW");
    csr_map.add_reg(mscratch, 12'h340, "RW");
    csr_map.add_reg(mepc, 12'h341, "RW");
    csr_map.add_reg(mcause, 12'h342, "RW");
    csr_map.add_reg(mtval, 12'h343, "RW");
    csr_map.add_reg(mip, 12'h344, "RW");
    csr_map.add_reg(mvendorid, 12'hf11, "RW");
    csr_map.add_reg(marchid, 12'hf12, "RW");
    csr_map.add_reg(mimpid, 12'hf13, "RW");
    csr_map.add_reg(mhartid, 12'hf14, "RW");
    csr_map.add_reg(mconfigptr, 12'hf15, "RW");

    lock_model();
  endfunction : build
endclass : csr_sm_base_reg_block
