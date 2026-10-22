//------------------------------------------------------------------------------
// csr_u_reg_block.svh
//
// RAL-модель U.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_u_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_u_reg_block )

  rand mcounteren_reg mcounteren;

  uvm_reg_map csr_map;

  function new( string name = "csr_u_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcounteren = mcounteren_reg::type_id::create("mcounteren");
    mcounteren.configure( .blk_parent(this) );
    mcounteren.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(mcounteren, 12'h306, "RW");

    lock_model();
  endfunction : build

endclass : csr_u_reg_block
