//------------------------------------------------------------------------------
// csr_sm_zicntr_reg_block.svh
//
// RAL-модель Sm_zicntr.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_sm_zicntr_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_sm_zicntr_reg_block )

  rand mcountinhibit_reg mcountinhibit;
  rand mcycle_reg mcycle;
  rand minstret_reg minstret;

  uvm_reg_map csr_map;

  function new( string name = "csr_sm_zicntr_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcountinhibit = mcountinhibit_reg::type_id::create("mcountinhibit");
    mcountinhibit.configure( .blk_parent(this) );
    mcountinhibit.build();

    mcycle = mcycle_reg::type_id::create("mcycle");
    mcycle.configure( .blk_parent(this) );
    mcycle.build();

    minstret = minstret_reg::type_id::create("minstret");
    minstret.configure( .blk_parent(this) );
    minstret.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(mcountinhibit, 12'h320, "RW");
    csr_map.add_reg(mcycle, 12'hb00, "RW");
    csr_map.add_reg(minstret, 12'hb02, "RW");

    lock_model();
  endfunction : build
endclass : csr_sm_zicntr_reg_block
