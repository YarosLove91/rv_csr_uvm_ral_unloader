//------------------------------------------------------------------------------
// csr_smcsrind_reg_block.svh
//
// RAL-модель Smcsrind.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_smcsrind_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_smcsrind_reg_block )

  rand vsiselect_reg vsiselect;
  rand vsireg_reg vsireg;
  rand vsireg2_reg vsireg2;
  rand vsireg3_reg vsireg3;
  rand vsireg4_reg vsireg4;
  rand vsireg5_reg vsireg5;
  rand vsireg6_reg vsireg6;
  rand miselect_reg miselect;
  rand mireg_reg mireg;
  rand mireg2_reg mireg2;
  rand mireg3_reg mireg3;
  rand mireg4_reg mireg4;
  rand mireg5_reg mireg5;
  rand mireg6_reg mireg6;

  uvm_reg_map csr_map;

  function new( string name = "csr_smcsrind_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsiselect = vsiselect_reg::type_id::create("vsiselect");
    vsiselect.configure( .blk_parent(this) );
    vsiselect.build();

    vsireg = vsireg_reg::type_id::create("vsireg");
    vsireg.configure( .blk_parent(this) );
    vsireg.build();

    vsireg2 = vsireg2_reg::type_id::create("vsireg2");
    vsireg2.configure( .blk_parent(this) );
    vsireg2.build();

    vsireg3 = vsireg3_reg::type_id::create("vsireg3");
    vsireg3.configure( .blk_parent(this) );
    vsireg3.build();

    vsireg4 = vsireg4_reg::type_id::create("vsireg4");
    vsireg4.configure( .blk_parent(this) );
    vsireg4.build();

    vsireg5 = vsireg5_reg::type_id::create("vsireg5");
    vsireg5.configure( .blk_parent(this) );
    vsireg5.build();

    vsireg6 = vsireg6_reg::type_id::create("vsireg6");
    vsireg6.configure( .blk_parent(this) );
    vsireg6.build();

    miselect = miselect_reg::type_id::create("miselect");
    miselect.configure( .blk_parent(this) );
    miselect.build();

    mireg = mireg_reg::type_id::create("mireg");
    mireg.configure( .blk_parent(this) );
    mireg.build();

    mireg2 = mireg2_reg::type_id::create("mireg2");
    mireg2.configure( .blk_parent(this) );
    mireg2.build();

    mireg3 = mireg3_reg::type_id::create("mireg3");
    mireg3.configure( .blk_parent(this) );
    mireg3.build();

    mireg4 = mireg4_reg::type_id::create("mireg4");
    mireg4.configure( .blk_parent(this) );
    mireg4.build();

    mireg5 = mireg5_reg::type_id::create("mireg5");
    mireg5.configure( .blk_parent(this) );
    mireg5.build();

    mireg6 = mireg6_reg::type_id::create("mireg6");
    mireg6.configure( .blk_parent(this) );
    mireg6.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(vsiselect, 12'h250, "RW");
    csr_map.add_reg(vsireg, 12'h251, "RW");
    csr_map.add_reg(vsireg2, 12'h252, "RW");
    csr_map.add_reg(vsireg3, 12'h253, "RW");
    csr_map.add_reg(vsireg4, 12'h255, "RW");
    csr_map.add_reg(vsireg5, 12'h256, "RW");
    csr_map.add_reg(vsireg6, 12'h257, "RW");
    csr_map.add_reg(miselect, 12'h350, "RW");
    csr_map.add_reg(mireg, 12'h351, "RW");
    csr_map.add_reg(mireg2, 12'h352, "RW");
    csr_map.add_reg(mireg3, 12'h353, "RW");
    csr_map.add_reg(mireg4, 12'h355, "RW");
    csr_map.add_reg(mireg5, 12'h356, "RW");
    csr_map.add_reg(mireg6, 12'h357, "RW");

    lock_model();
  endfunction : build

endclass : csr_smcsrind_reg_block
