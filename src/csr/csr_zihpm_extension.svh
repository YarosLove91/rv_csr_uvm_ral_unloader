//------------------------------------------------------------------------------
// hpmcounter3 (0xc03) - hpmcounter3
//------------------------------------------------------------------------------
class hpmcounter3_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter3_reg )

  rand uvm_reg_field hpmcounter3_field;

  function new( string name = "hpmcounter3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter3_field = uvm_reg_field::type_id::create("hpmcounter3_field");
    hpmcounter3_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter3_reg


//------------------------------------------------------------------------------
// hpmcounter4 (0xc04) - hpmcounter4
//------------------------------------------------------------------------------
class hpmcounter4_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter4_reg )

  rand uvm_reg_field hpmcounter4_field;

  function new( string name = "hpmcounter4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter4_field = uvm_reg_field::type_id::create("hpmcounter4_field");
    hpmcounter4_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter4_reg


//------------------------------------------------------------------------------
// hpmcounter5 (0xc05) - hpmcounter5
//------------------------------------------------------------------------------
class hpmcounter5_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter5_reg )

  rand uvm_reg_field hpmcounter5_field;

  function new( string name = "hpmcounter5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter5_field = uvm_reg_field::type_id::create("hpmcounter5_field");
    hpmcounter5_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter5_reg


//------------------------------------------------------------------------------
// hpmcounter6 (0xc06) - hpmcounter6
//------------------------------------------------------------------------------
class hpmcounter6_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter6_reg )

  rand uvm_reg_field hpmcounter6_field;

  function new( string name = "hpmcounter6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter6_field = uvm_reg_field::type_id::create("hpmcounter6_field");
    hpmcounter6_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter6_reg


//------------------------------------------------------------------------------
// hpmcounter7 (0xc07) - hpmcounter7
//------------------------------------------------------------------------------
class hpmcounter7_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter7_reg )

  rand uvm_reg_field hpmcounter7_field;

  function new( string name = "hpmcounter7_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter7_field = uvm_reg_field::type_id::create("hpmcounter7_field");
    hpmcounter7_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter7_reg


//------------------------------------------------------------------------------
// hpmcounter8 (0xc08) - hpmcounter8
//------------------------------------------------------------------------------
class hpmcounter8_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter8_reg )

  rand uvm_reg_field hpmcounter8_field;

  function new( string name = "hpmcounter8_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter8_field = uvm_reg_field::type_id::create("hpmcounter8_field");
    hpmcounter8_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter8_reg


//------------------------------------------------------------------------------
// hpmcounter9 (0xc09) - hpmcounter9
//------------------------------------------------------------------------------
class hpmcounter9_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter9_reg )

  rand uvm_reg_field hpmcounter9_field;

  function new( string name = "hpmcounter9_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter9_field = uvm_reg_field::type_id::create("hpmcounter9_field");
    hpmcounter9_field.configure( .parent(this),
                                 .size(64),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter9_reg


//------------------------------------------------------------------------------
// hpmcounter10 (0xc0a) - hpmcounter10
//------------------------------------------------------------------------------
class hpmcounter10_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter10_reg )

  rand uvm_reg_field hpmcounter10_field;

  function new( string name = "hpmcounter10_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter10_field = uvm_reg_field::type_id::create("hpmcounter10_field");
    hpmcounter10_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter10_reg


//------------------------------------------------------------------------------
// hpmcounter11 (0xc0b) - hpmcounter11
//------------------------------------------------------------------------------
class hpmcounter11_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter11_reg )

  rand uvm_reg_field hpmcounter11_field;

  function new( string name = "hpmcounter11_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter11_field = uvm_reg_field::type_id::create("hpmcounter11_field");
    hpmcounter11_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter11_reg


//------------------------------------------------------------------------------
// hpmcounter12 (0xc0c) - hpmcounter12
//------------------------------------------------------------------------------
class hpmcounter12_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter12_reg )

  rand uvm_reg_field hpmcounter12_field;

  function new( string name = "hpmcounter12_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter12_field = uvm_reg_field::type_id::create("hpmcounter12_field");
    hpmcounter12_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter12_reg


//------------------------------------------------------------------------------
// hpmcounter13 (0xc0d) - hpmcounter13
//------------------------------------------------------------------------------
class hpmcounter13_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter13_reg )

  rand uvm_reg_field hpmcounter13_field;

  function new( string name = "hpmcounter13_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter13_field = uvm_reg_field::type_id::create("hpmcounter13_field");
    hpmcounter13_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter13_reg


//------------------------------------------------------------------------------
// hpmcounter14 (0xc0e) - hpmcounter14
//------------------------------------------------------------------------------
class hpmcounter14_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter14_reg )

  rand uvm_reg_field hpmcounter14_field;

  function new( string name = "hpmcounter14_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter14_field = uvm_reg_field::type_id::create("hpmcounter14_field");
    hpmcounter14_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter14_reg


//------------------------------------------------------------------------------
// hpmcounter15 (0xc0f) - hpmcounter15
//------------------------------------------------------------------------------
class hpmcounter15_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter15_reg )

  rand uvm_reg_field hpmcounter15_field;

  function new( string name = "hpmcounter15_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter15_field = uvm_reg_field::type_id::create("hpmcounter15_field");
    hpmcounter15_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter15_reg


//------------------------------------------------------------------------------
// hpmcounter16 (0xc10) - hpmcounter16
//------------------------------------------------------------------------------
class hpmcounter16_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter16_reg )

  rand uvm_reg_field hpmcounter16_field;

  function new( string name = "hpmcounter16_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter16_field = uvm_reg_field::type_id::create("hpmcounter16_field");
    hpmcounter16_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter16_reg


//------------------------------------------------------------------------------
// hpmcounter17 (0xc11) - hpmcounter17
//------------------------------------------------------------------------------
class hpmcounter17_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter17_reg )

  rand uvm_reg_field hpmcounter17_field;

  function new( string name = "hpmcounter17_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter17_field = uvm_reg_field::type_id::create("hpmcounter17_field");
    hpmcounter17_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter17_reg


//------------------------------------------------------------------------------
// hpmcounter18 (0xc12) - hpmcounter18
//------------------------------------------------------------------------------
class hpmcounter18_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter18_reg )

  rand uvm_reg_field hpmcounter18_field;

  function new( string name = "hpmcounter18_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter18_field = uvm_reg_field::type_id::create("hpmcounter18_field");
    hpmcounter18_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter18_reg


//------------------------------------------------------------------------------
// hpmcounter19 (0xc13) - hpmcounter19
//------------------------------------------------------------------------------
class hpmcounter19_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter19_reg )

  rand uvm_reg_field hpmcounter19_field;

  function new( string name = "hpmcounter19_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter19_field = uvm_reg_field::type_id::create("hpmcounter19_field");
    hpmcounter19_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter19_reg


//------------------------------------------------------------------------------
// hpmcounter20 (0xc14) - hpmcounter20
//------------------------------------------------------------------------------
class hpmcounter20_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter20_reg )

  rand uvm_reg_field hpmcounter20_field;

  function new( string name = "hpmcounter20_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter20_field = uvm_reg_field::type_id::create("hpmcounter20_field");
    hpmcounter20_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter20_reg


//------------------------------------------------------------------------------
// hpmcounter21 (0xc15) - hpmcounter21
//------------------------------------------------------------------------------
class hpmcounter21_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter21_reg )

  rand uvm_reg_field hpmcounter21_field;

  function new( string name = "hpmcounter21_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter21_field = uvm_reg_field::type_id::create("hpmcounter21_field");
    hpmcounter21_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter21_reg


//------------------------------------------------------------------------------
// hpmcounter22 (0xc16) - hpmcounter22
//------------------------------------------------------------------------------
class hpmcounter22_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter22_reg )

  rand uvm_reg_field hpmcounter22_field;

  function new( string name = "hpmcounter22_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter22_field = uvm_reg_field::type_id::create("hpmcounter22_field");
    hpmcounter22_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter22_reg


//------------------------------------------------------------------------------
// hpmcounter23 (0xc17) - hpmcounter23
//------------------------------------------------------------------------------
class hpmcounter23_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter23_reg )

  rand uvm_reg_field hpmcounter23_field;

  function new( string name = "hpmcounter23_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter23_field = uvm_reg_field::type_id::create("hpmcounter23_field");
    hpmcounter23_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter23_reg


//------------------------------------------------------------------------------
// hpmcounter24 (0xc18) - hpmcounter24
//------------------------------------------------------------------------------
class hpmcounter24_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter24_reg )

  rand uvm_reg_field hpmcounter24_field;

  function new( string name = "hpmcounter24_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter24_field = uvm_reg_field::type_id::create("hpmcounter24_field");
    hpmcounter24_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter24_reg


//------------------------------------------------------------------------------
// hpmcounter25 (0xc19) - hpmcounter25
//------------------------------------------------------------------------------
class hpmcounter25_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter25_reg )

  rand uvm_reg_field hpmcounter25_field;

  function new( string name = "hpmcounter25_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter25_field = uvm_reg_field::type_id::create("hpmcounter25_field");
    hpmcounter25_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter25_reg


//------------------------------------------------------------------------------
// hpmcounter26 (0xc1a) - hpmcounter26
//------------------------------------------------------------------------------
class hpmcounter26_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter26_reg )

  rand uvm_reg_field hpmcounter26_field;

  function new( string name = "hpmcounter26_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter26_field = uvm_reg_field::type_id::create("hpmcounter26_field");
    hpmcounter26_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter26_reg


//------------------------------------------------------------------------------
// hpmcounter27 (0xc1b) - hpmcounter27
//------------------------------------------------------------------------------
class hpmcounter27_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter27_reg )

  rand uvm_reg_field hpmcounter27_field;

  function new( string name = "hpmcounter27_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter27_field = uvm_reg_field::type_id::create("hpmcounter27_field");
    hpmcounter27_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter27_reg


//------------------------------------------------------------------------------
// hpmcounter28 (0xc1c) - hpmcounter28
//------------------------------------------------------------------------------
class hpmcounter28_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter28_reg )

  rand uvm_reg_field hpmcounter28_field;

  function new( string name = "hpmcounter28_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter28_field = uvm_reg_field::type_id::create("hpmcounter28_field");
    hpmcounter28_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter28_reg


//------------------------------------------------------------------------------
// hpmcounter29 (0xc1d) - hpmcounter29
//------------------------------------------------------------------------------
class hpmcounter29_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter29_reg )

  rand uvm_reg_field hpmcounter29_field;

  function new( string name = "hpmcounter29_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter29_field = uvm_reg_field::type_id::create("hpmcounter29_field");
    hpmcounter29_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter29_reg


//------------------------------------------------------------------------------
// hpmcounter30 (0xc1e) - hpmcounter30
//------------------------------------------------------------------------------
class hpmcounter30_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter30_reg )

  rand uvm_reg_field hpmcounter30_field;

  function new( string name = "hpmcounter30_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter30_field = uvm_reg_field::type_id::create("hpmcounter30_field");
    hpmcounter30_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter30_reg


//------------------------------------------------------------------------------
// hpmcounter31 (0xc1f) - hpmcounter31
//------------------------------------------------------------------------------
class hpmcounter31_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter31_reg )

  rand uvm_reg_field hpmcounter31_field;

  function new( string name = "hpmcounter31_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter31_field = uvm_reg_field::type_id::create("hpmcounter31_field");
    hpmcounter31_field.configure( .parent(this),
                                  .size(64),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter31_reg
