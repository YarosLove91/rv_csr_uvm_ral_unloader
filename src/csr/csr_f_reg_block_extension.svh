//------------------------------------------------------------------------------
// csr_f_reg_block.svh
//
// RAL-модель F.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_f_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_f_reg_block )

  rand fflags_reg fflags;
  rand frm_reg frm;
  rand fcsr_reg fcsr;

  uvm_reg_map csr_map;

  function new( string name = "csr_f_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    fflags = fflags_reg::type_id::create("fflags");
    fflags.configure( .blk_parent(this) );
    fflags.build();

    frm = frm_reg::type_id::create("frm");
    frm.configure( .blk_parent(this) );
    frm.build();

    fcsr = fcsr_reg::type_id::create("fcsr");
    fcsr.configure( .blk_parent(this) );
    fcsr.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(fflags, 12'h001, "RW");
    csr_map.add_reg(frm, 12'h002, "RW");
    csr_map.add_reg(fcsr, 12'h003, "RW");

    lock_model();
  endfunction : build

endclass : csr_f_reg_block
