//------------------------------------------------------------------------------
// csr_zicntr_reg_block.svh
//
// RAL-модель Zicntr.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_zicntr_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_zicntr_reg_block )

  rand cycle_reg cycle;
  rand time_reg time_f;
  rand instret_reg instret;

  uvm_reg_map csr_map;

  function new( string name = "csr_zicntr_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    cycle = cycle_reg::type_id::create("cycle");
    cycle.configure( .blk_parent(this) );
    cycle.build();

    time_f = time_reg::type_id::create("time");
    time_f.configure( .blk_parent(this) );
    time_f.build();

    instret = instret_reg::type_id::create("instret");
    instret.configure( .blk_parent(this) );
    instret.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(cycle, 12'hc00, "RW");
    csr_map.add_reg(time_f, 12'hc01, "RW");
    csr_map.add_reg(instret, 12'hc02, "RW");

    lock_model();
  endfunction : build

endclass : csr_zicntr_reg_block
