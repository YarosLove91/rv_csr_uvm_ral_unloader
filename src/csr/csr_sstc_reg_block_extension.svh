//------------------------------------------------------------------------------
// csr_sstc_reg_block.svh
//
// RAL-модель Sstc.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_sstc_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_sstc_reg_block )

  rand stimecmp_reg stimecmp;

  uvm_reg_map csr_map;

  function new( string name = "csr_sstc_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    stimecmp = stimecmp_reg::type_id::create("stimecmp");
    stimecmp.configure( .blk_parent(this) );
    stimecmp.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(stimecmp, 12'h14d, "RW");

    lock_model();
  endfunction : build

endclass : csr_sstc_reg_block
