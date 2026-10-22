//------------------------------------------------------------------------------
// csr_sscofpmf_reg_block.svh
//
// RAL-модель Sscofpmf.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_sscofpmf_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_sscofpmf_reg_block )

  rand scountovf_reg scountovf;

  uvm_reg_map csr_map;

  function new( string name = "csr_sscofpmf_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    scountovf = scountovf_reg::type_id::create("scountovf");
    scountovf.configure( .blk_parent(this) );
    scountovf.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(scountovf, 12'hda0, "RW");

    lock_model();
  endfunction : build

endclass : csr_sscofpmf_reg_block
