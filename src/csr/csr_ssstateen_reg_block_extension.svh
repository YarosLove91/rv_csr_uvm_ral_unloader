//------------------------------------------------------------------------------
// csr_ssstateen_reg_block.svh
//
// RAL-модель Ssstateen.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_ssstateen_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_ssstateen_reg_block )

  rand sstateen0_reg sstateen0;
  rand sstateen1_reg sstateen1;
  rand sstateen2_reg sstateen2;
  rand sstateen3_reg sstateen3;

  uvm_reg_map csr_map;

  function new( string name = "csr_ssstateen_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstateen0 = sstateen0_reg::type_id::create("sstateen0");
    sstateen0.configure( .blk_parent(this) );
    sstateen0.build();

    sstateen1 = sstateen1_reg::type_id::create("sstateen1");
    sstateen1.configure( .blk_parent(this) );
    sstateen1.build();

    sstateen2 = sstateen2_reg::type_id::create("sstateen2");
    sstateen2.configure( .blk_parent(this) );
    sstateen2.build();

    sstateen3 = sstateen3_reg::type_id::create("sstateen3");
    sstateen3.configure( .blk_parent(this) );
    sstateen3.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(sstateen0, 12'h10c, "RW");
    csr_map.add_reg(sstateen1, 12'h10d, "RW");
    csr_map.add_reg(sstateen2, 12'h10e, "RW");
    csr_map.add_reg(sstateen3, 12'h10f, "RW");

    lock_model();
  endfunction : build

endclass : csr_ssstateen_reg_block
