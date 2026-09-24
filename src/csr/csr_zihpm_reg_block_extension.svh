//------------------------------------------------------------------------------
// csr_zihpm_reg_block.svh
//
// RAL-модель Zihpm.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_zihpm_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_zihpm_reg_block )

  rand hpmcounter3_reg hpmcounter3;
  rand hpmcounter4_reg hpmcounter4;
  rand hpmcounter5_reg hpmcounter5;
  rand hpmcounter6_reg hpmcounter6;
  rand hpmcounter7_reg hpmcounter7;
  rand hpmcounter8_reg hpmcounter8;
  rand hpmcounter9_reg hpmcounter9;
  rand hpmcounter10_reg hpmcounter10;
  rand hpmcounter11_reg hpmcounter11;
  rand hpmcounter12_reg hpmcounter12;
  rand hpmcounter13_reg hpmcounter13;
  rand hpmcounter14_reg hpmcounter14;
  rand hpmcounter15_reg hpmcounter15;
  rand hpmcounter16_reg hpmcounter16;
  rand hpmcounter17_reg hpmcounter17;
  rand hpmcounter18_reg hpmcounter18;
  rand hpmcounter19_reg hpmcounter19;
  rand hpmcounter20_reg hpmcounter20;
  rand hpmcounter21_reg hpmcounter21;
  rand hpmcounter22_reg hpmcounter22;
  rand hpmcounter23_reg hpmcounter23;
  rand hpmcounter24_reg hpmcounter24;
  rand hpmcounter25_reg hpmcounter25;
  rand hpmcounter26_reg hpmcounter26;
  rand hpmcounter27_reg hpmcounter27;
  rand hpmcounter28_reg hpmcounter28;
  rand hpmcounter29_reg hpmcounter29;
  rand hpmcounter30_reg hpmcounter30;
  rand hpmcounter31_reg hpmcounter31;

  uvm_reg_map csr_map;

  function new( string name = "csr_zihpm_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter3 = hpmcounter3_reg::type_id::create("hpmcounter3");
    hpmcounter3.configure( .blk_parent(this) );
    hpmcounter3.build();

    hpmcounter4 = hpmcounter4_reg::type_id::create("hpmcounter4");
    hpmcounter4.configure( .blk_parent(this) );
    hpmcounter4.build();

    hpmcounter5 = hpmcounter5_reg::type_id::create("hpmcounter5");
    hpmcounter5.configure( .blk_parent(this) );
    hpmcounter5.build();

    hpmcounter6 = hpmcounter6_reg::type_id::create("hpmcounter6");
    hpmcounter6.configure( .blk_parent(this) );
    hpmcounter6.build();

    hpmcounter7 = hpmcounter7_reg::type_id::create("hpmcounter7");
    hpmcounter7.configure( .blk_parent(this) );
    hpmcounter7.build();

    hpmcounter8 = hpmcounter8_reg::type_id::create("hpmcounter8");
    hpmcounter8.configure( .blk_parent(this) );
    hpmcounter8.build();

    hpmcounter9 = hpmcounter9_reg::type_id::create("hpmcounter9");
    hpmcounter9.configure( .blk_parent(this) );
    hpmcounter9.build();

    hpmcounter10 = hpmcounter10_reg::type_id::create("hpmcounter10");
    hpmcounter10.configure( .blk_parent(this) );
    hpmcounter10.build();

    hpmcounter11 = hpmcounter11_reg::type_id::create("hpmcounter11");
    hpmcounter11.configure( .blk_parent(this) );
    hpmcounter11.build();

    hpmcounter12 = hpmcounter12_reg::type_id::create("hpmcounter12");
    hpmcounter12.configure( .blk_parent(this) );
    hpmcounter12.build();

    hpmcounter13 = hpmcounter13_reg::type_id::create("hpmcounter13");
    hpmcounter13.configure( .blk_parent(this) );
    hpmcounter13.build();

    hpmcounter14 = hpmcounter14_reg::type_id::create("hpmcounter14");
    hpmcounter14.configure( .blk_parent(this) );
    hpmcounter14.build();

    hpmcounter15 = hpmcounter15_reg::type_id::create("hpmcounter15");
    hpmcounter15.configure( .blk_parent(this) );
    hpmcounter15.build();

    hpmcounter16 = hpmcounter16_reg::type_id::create("hpmcounter16");
    hpmcounter16.configure( .blk_parent(this) );
    hpmcounter16.build();

    hpmcounter17 = hpmcounter17_reg::type_id::create("hpmcounter17");
    hpmcounter17.configure( .blk_parent(this) );
    hpmcounter17.build();

    hpmcounter18 = hpmcounter18_reg::type_id::create("hpmcounter18");
    hpmcounter18.configure( .blk_parent(this) );
    hpmcounter18.build();

    hpmcounter19 = hpmcounter19_reg::type_id::create("hpmcounter19");
    hpmcounter19.configure( .blk_parent(this) );
    hpmcounter19.build();

    hpmcounter20 = hpmcounter20_reg::type_id::create("hpmcounter20");
    hpmcounter20.configure( .blk_parent(this) );
    hpmcounter20.build();

    hpmcounter21 = hpmcounter21_reg::type_id::create("hpmcounter21");
    hpmcounter21.configure( .blk_parent(this) );
    hpmcounter21.build();

    hpmcounter22 = hpmcounter22_reg::type_id::create("hpmcounter22");
    hpmcounter22.configure( .blk_parent(this) );
    hpmcounter22.build();

    hpmcounter23 = hpmcounter23_reg::type_id::create("hpmcounter23");
    hpmcounter23.configure( .blk_parent(this) );
    hpmcounter23.build();

    hpmcounter24 = hpmcounter24_reg::type_id::create("hpmcounter24");
    hpmcounter24.configure( .blk_parent(this) );
    hpmcounter24.build();

    hpmcounter25 = hpmcounter25_reg::type_id::create("hpmcounter25");
    hpmcounter25.configure( .blk_parent(this) );
    hpmcounter25.build();

    hpmcounter26 = hpmcounter26_reg::type_id::create("hpmcounter26");
    hpmcounter26.configure( .blk_parent(this) );
    hpmcounter26.build();

    hpmcounter27 = hpmcounter27_reg::type_id::create("hpmcounter27");
    hpmcounter27.configure( .blk_parent(this) );
    hpmcounter27.build();

    hpmcounter28 = hpmcounter28_reg::type_id::create("hpmcounter28");
    hpmcounter28.configure( .blk_parent(this) );
    hpmcounter28.build();

    hpmcounter29 = hpmcounter29_reg::type_id::create("hpmcounter29");
    hpmcounter29.configure( .blk_parent(this) );
    hpmcounter29.build();

    hpmcounter30 = hpmcounter30_reg::type_id::create("hpmcounter30");
    hpmcounter30.configure( .blk_parent(this) );
    hpmcounter30.build();

    hpmcounter31 = hpmcounter31_reg::type_id::create("hpmcounter31");
    hpmcounter31.configure( .blk_parent(this) );
    hpmcounter31.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(hpmcounter3, 12'hc03, "RW");
    csr_map.add_reg(hpmcounter4, 12'hc04, "RW");
    csr_map.add_reg(hpmcounter5, 12'hc05, "RW");
    csr_map.add_reg(hpmcounter6, 12'hc06, "RW");
    csr_map.add_reg(hpmcounter7, 12'hc07, "RW");
    csr_map.add_reg(hpmcounter8, 12'hc08, "RW");
    csr_map.add_reg(hpmcounter9, 12'hc09, "RW");
    csr_map.add_reg(hpmcounter10, 12'hc0a, "RW");
    csr_map.add_reg(hpmcounter11, 12'hc0b, "RW");
    csr_map.add_reg(hpmcounter12, 12'hc0c, "RW");
    csr_map.add_reg(hpmcounter13, 12'hc0d, "RW");
    csr_map.add_reg(hpmcounter14, 12'hc0e, "RW");
    csr_map.add_reg(hpmcounter15, 12'hc0f, "RW");
    csr_map.add_reg(hpmcounter16, 12'hc10, "RW");
    csr_map.add_reg(hpmcounter17, 12'hc11, "RW");
    csr_map.add_reg(hpmcounter18, 12'hc12, "RW");
    csr_map.add_reg(hpmcounter19, 12'hc13, "RW");
    csr_map.add_reg(hpmcounter20, 12'hc14, "RW");
    csr_map.add_reg(hpmcounter21, 12'hc15, "RW");
    csr_map.add_reg(hpmcounter22, 12'hc16, "RW");
    csr_map.add_reg(hpmcounter23, 12'hc17, "RW");
    csr_map.add_reg(hpmcounter24, 12'hc18, "RW");
    csr_map.add_reg(hpmcounter25, 12'hc19, "RW");
    csr_map.add_reg(hpmcounter26, 12'hc1a, "RW");
    csr_map.add_reg(hpmcounter27, 12'hc1b, "RW");
    csr_map.add_reg(hpmcounter28, 12'hc1c, "RW");
    csr_map.add_reg(hpmcounter29, 12'hc1d, "RW");
    csr_map.add_reg(hpmcounter30, 12'hc1e, "RW");
    csr_map.add_reg(hpmcounter31, 12'hc1f, "RW");

    lock_model();
  endfunction : build

endclass : csr_zihpm_reg_block
