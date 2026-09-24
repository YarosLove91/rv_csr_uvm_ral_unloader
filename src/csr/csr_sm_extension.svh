//------------------------------------------------------------------------------
// mstatus (0x300) - mstatus
//------------------------------------------------------------------------------
class mstatus_reg extends uvm_reg;
  `uvm_object_utils( mstatus_reg )

  rand uvm_reg_field mstatus_field;

  function new( string name = "mstatus_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mstatus_field = uvm_reg_field::type_id::create("mstatus_field");
    mstatus_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mstatus_reg


//------------------------------------------------------------------------------
// misa (0x301) - misa
//------------------------------------------------------------------------------
class misa_reg extends uvm_reg;
  `uvm_object_utils( misa_reg )

  rand uvm_reg_field misa_field;

  function new( string name = "misa_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    misa_field = uvm_reg_field::type_id::create("misa_field");
    misa_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : misa_reg


//------------------------------------------------------------------------------
// mideleg (0x303) - mideleg
//------------------------------------------------------------------------------
class mideleg_reg extends uvm_reg;
  `uvm_object_utils( mideleg_reg )

  rand uvm_reg_field mideleg_field;

  function new( string name = "mideleg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mideleg_field = uvm_reg_field::type_id::create("mideleg_field");
    mideleg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mideleg_reg


//------------------------------------------------------------------------------
// mie (0x304) - mie
//------------------------------------------------------------------------------
class mie_reg extends uvm_reg;
  `uvm_object_utils( mie_reg )

  rand uvm_reg_field mie_field;

  function new( string name = "mie_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mie_field = uvm_reg_field::type_id::create("mie_field");
    mie_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mie_reg


//------------------------------------------------------------------------------
// mtvec (0x305) - mtvec
//------------------------------------------------------------------------------
class mtvec_reg extends uvm_reg;
  `uvm_object_utils( mtvec_reg )

  rand uvm_reg_field mtvec_field;

  function new( string name = "mtvec_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtvec_field = uvm_reg_field::type_id::create("mtvec_field");
    mtvec_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtvec_reg


//------------------------------------------------------------------------------
// menvcfg (0x30a) - menvcfg
//------------------------------------------------------------------------------
class menvcfg_reg extends uvm_reg;
  `uvm_object_utils( menvcfg_reg )

  rand uvm_reg_field menvcfg_field;

  function new( string name = "menvcfg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    menvcfg_field = uvm_reg_field::type_id::create("menvcfg_field");
    menvcfg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : menvcfg_reg


//------------------------------------------------------------------------------
// mcountinhibit (0x320) - mcountinhibit
//------------------------------------------------------------------------------
class mcountinhibit_reg extends uvm_reg;
  `uvm_object_utils( mcountinhibit_reg )

  rand uvm_reg_field mcountinhibit_field;

  function new( string name = "mcountinhibit_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcountinhibit_field = uvm_reg_field::type_id::create("mcountinhibit_field");
    mcountinhibit_field.configure( .parent(this),
                            .size(32),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mcountinhibit_reg


//------------------------------------------------------------------------------
// mhpmevent3 (0x323) - mhpmevent3
//------------------------------------------------------------------------------
class mhpmevent3_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent3_reg )

  rand uvm_reg_field mhpmevent3_field;

  function new( string name = "mhpmevent3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent3_field = uvm_reg_field::type_id::create("mhpmevent3_field");
    mhpmevent3_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent3_reg


//------------------------------------------------------------------------------
// mhpmevent4 (0x324) - mhpmevent4
//------------------------------------------------------------------------------
class mhpmevent4_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent4_reg )

  rand uvm_reg_field mhpmevent4_field;

  function new( string name = "mhpmevent4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent4_field = uvm_reg_field::type_id::create("mhpmevent4_field");
    mhpmevent4_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent4_reg


//------------------------------------------------------------------------------
// mhpmevent5 (0x325) - mhpmevent5
//------------------------------------------------------------------------------
class mhpmevent5_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent5_reg )

  rand uvm_reg_field mhpmevent5_field;

  function new( string name = "mhpmevent5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent5_field = uvm_reg_field::type_id::create("mhpmevent5_field");
    mhpmevent5_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent5_reg


//------------------------------------------------------------------------------
// mhpmevent6 (0x326) - mhpmevent6
//------------------------------------------------------------------------------
class mhpmevent6_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent6_reg )

  rand uvm_reg_field mhpmevent6_field;

  function new( string name = "mhpmevent6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent6_field = uvm_reg_field::type_id::create("mhpmevent6_field");
    mhpmevent6_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent6_reg


//------------------------------------------------------------------------------
// mhpmevent7 (0x327) - mhpmevent7
//------------------------------------------------------------------------------
class mhpmevent7_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent7_reg )

  rand uvm_reg_field mhpmevent7_field;

  function new( string name = "mhpmevent7_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent7_field = uvm_reg_field::type_id::create("mhpmevent7_field");
    mhpmevent7_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent7_reg


//------------------------------------------------------------------------------
// mhpmevent8 (0x328) - mhpmevent8
//------------------------------------------------------------------------------
class mhpmevent8_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent8_reg )

  rand uvm_reg_field mhpmevent8_field;

  function new( string name = "mhpmevent8_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent8_field = uvm_reg_field::type_id::create("mhpmevent8_field");
    mhpmevent8_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent8_reg


//------------------------------------------------------------------------------
// mhpmevent9 (0x329) - mhpmevent9
//------------------------------------------------------------------------------
class mhpmevent9_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent9_reg )

  rand uvm_reg_field mhpmevent9_field;

  function new( string name = "mhpmevent9_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent9_field = uvm_reg_field::type_id::create("mhpmevent9_field");
    mhpmevent9_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent9_reg


//------------------------------------------------------------------------------
// mhpmevent10 (0x32a) - mhpmevent10
//------------------------------------------------------------------------------
class mhpmevent10_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent10_reg )

  rand uvm_reg_field mhpmevent10_field;

  function new( string name = "mhpmevent10_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent10_field = uvm_reg_field::type_id::create("mhpmevent10_field");
    mhpmevent10_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent10_reg


//------------------------------------------------------------------------------
// mhpmevent11 (0x32b) - mhpmevent11
//------------------------------------------------------------------------------
class mhpmevent11_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent11_reg )

  rand uvm_reg_field mhpmevent11_field;

  function new( string name = "mhpmevent11_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent11_field = uvm_reg_field::type_id::create("mhpmevent11_field");
    mhpmevent11_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent11_reg


//------------------------------------------------------------------------------
// mhpmevent12 (0x32c) - mhpmevent12
//------------------------------------------------------------------------------
class mhpmevent12_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent12_reg )

  rand uvm_reg_field mhpmevent12_field;

  function new( string name = "mhpmevent12_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent12_field = uvm_reg_field::type_id::create("mhpmevent12_field");
    mhpmevent12_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent12_reg


//------------------------------------------------------------------------------
// mhpmevent13 (0x32d) - mhpmevent13
//------------------------------------------------------------------------------
class mhpmevent13_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent13_reg )

  rand uvm_reg_field mhpmevent13_field;

  function new( string name = "mhpmevent13_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent13_field = uvm_reg_field::type_id::create("mhpmevent13_field");
    mhpmevent13_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent13_reg


//------------------------------------------------------------------------------
// mhpmevent14 (0x32e) - mhpmevent14
//------------------------------------------------------------------------------
class mhpmevent14_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent14_reg )

  rand uvm_reg_field mhpmevent14_field;

  function new( string name = "mhpmevent14_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent14_field = uvm_reg_field::type_id::create("mhpmevent14_field");
    mhpmevent14_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent14_reg


//------------------------------------------------------------------------------
// mhpmevent15 (0x32f) - mhpmevent15
//------------------------------------------------------------------------------
class mhpmevent15_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent15_reg )

  rand uvm_reg_field mhpmevent15_field;

  function new( string name = "mhpmevent15_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent15_field = uvm_reg_field::type_id::create("mhpmevent15_field");
    mhpmevent15_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent15_reg


//------------------------------------------------------------------------------
// mhpmevent16 (0x330) - mhpmevent16
//------------------------------------------------------------------------------
class mhpmevent16_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent16_reg )

  rand uvm_reg_field mhpmevent16_field;

  function new( string name = "mhpmevent16_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent16_field = uvm_reg_field::type_id::create("mhpmevent16_field");
    mhpmevent16_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent16_reg


//------------------------------------------------------------------------------
// mhpmevent17 (0x331) - mhpmevent17
//------------------------------------------------------------------------------
class mhpmevent17_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent17_reg )

  rand uvm_reg_field mhpmevent17_field;

  function new( string name = "mhpmevent17_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent17_field = uvm_reg_field::type_id::create("mhpmevent17_field");
    mhpmevent17_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent17_reg


//------------------------------------------------------------------------------
// mhpmevent18 (0x332) - mhpmevent18
//------------------------------------------------------------------------------
class mhpmevent18_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent18_reg )

  rand uvm_reg_field mhpmevent18_field;

  function new( string name = "mhpmevent18_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent18_field = uvm_reg_field::type_id::create("mhpmevent18_field");
    mhpmevent18_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent18_reg


//------------------------------------------------------------------------------
// mhpmevent19 (0x333) - mhpmevent19
//------------------------------------------------------------------------------
class mhpmevent19_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent19_reg )

  rand uvm_reg_field mhpmevent19_field;

  function new( string name = "mhpmevent19_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent19_field = uvm_reg_field::type_id::create("mhpmevent19_field");
    mhpmevent19_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent19_reg


//------------------------------------------------------------------------------
// mhpmevent20 (0x334) - mhpmevent20
//------------------------------------------------------------------------------
class mhpmevent20_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent20_reg )

  rand uvm_reg_field mhpmevent20_field;

  function new( string name = "mhpmevent20_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent20_field = uvm_reg_field::type_id::create("mhpmevent20_field");
    mhpmevent20_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent20_reg


//------------------------------------------------------------------------------
// mhpmevent21 (0x335) - mhpmevent21
//------------------------------------------------------------------------------
class mhpmevent21_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent21_reg )

  rand uvm_reg_field mhpmevent21_field;

  function new( string name = "mhpmevent21_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent21_field = uvm_reg_field::type_id::create("mhpmevent21_field");
    mhpmevent21_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent21_reg


//------------------------------------------------------------------------------
// mhpmevent22 (0x336) - mhpmevent22
//------------------------------------------------------------------------------
class mhpmevent22_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent22_reg )

  rand uvm_reg_field mhpmevent22_field;

  function new( string name = "mhpmevent22_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent22_field = uvm_reg_field::type_id::create("mhpmevent22_field");
    mhpmevent22_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent22_reg


//------------------------------------------------------------------------------
// mhpmevent23 (0x337) - mhpmevent23
//------------------------------------------------------------------------------
class mhpmevent23_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent23_reg )

  rand uvm_reg_field mhpmevent23_field;

  function new( string name = "mhpmevent23_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent23_field = uvm_reg_field::type_id::create("mhpmevent23_field");
    mhpmevent23_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent23_reg


//------------------------------------------------------------------------------
// mhpmevent24 (0x338) - mhpmevent24
//------------------------------------------------------------------------------
class mhpmevent24_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent24_reg )

  rand uvm_reg_field mhpmevent24_field;

  function new( string name = "mhpmevent24_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent24_field = uvm_reg_field::type_id::create("mhpmevent24_field");
    mhpmevent24_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent24_reg


//------------------------------------------------------------------------------
// mhpmevent25 (0x339) - mhpmevent25
//------------------------------------------------------------------------------
class mhpmevent25_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent25_reg )

  rand uvm_reg_field mhpmevent25_field;

  function new( string name = "mhpmevent25_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent25_field = uvm_reg_field::type_id::create("mhpmevent25_field");
    mhpmevent25_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent25_reg


//------------------------------------------------------------------------------
// mhpmevent26 (0x33a) - mhpmevent26
//------------------------------------------------------------------------------
class mhpmevent26_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent26_reg )

  rand uvm_reg_field mhpmevent26_field;

  function new( string name = "mhpmevent26_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent26_field = uvm_reg_field::type_id::create("mhpmevent26_field");
    mhpmevent26_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent26_reg


//------------------------------------------------------------------------------
// mhpmevent27 (0x33b) - mhpmevent27
//------------------------------------------------------------------------------
class mhpmevent27_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent27_reg )

  rand uvm_reg_field mhpmevent27_field;

  function new( string name = "mhpmevent27_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent27_field = uvm_reg_field::type_id::create("mhpmevent27_field");
    mhpmevent27_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent27_reg


//------------------------------------------------------------------------------
// mhpmevent28 (0x33c) - mhpmevent28
//------------------------------------------------------------------------------
class mhpmevent28_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent28_reg )

  rand uvm_reg_field mhpmevent28_field;

  function new( string name = "mhpmevent28_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent28_field = uvm_reg_field::type_id::create("mhpmevent28_field");
    mhpmevent28_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent28_reg


//------------------------------------------------------------------------------
// mhpmevent29 (0x33d) - mhpmevent29
//------------------------------------------------------------------------------
class mhpmevent29_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent29_reg )

  rand uvm_reg_field mhpmevent29_field;

  function new( string name = "mhpmevent29_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent29_field = uvm_reg_field::type_id::create("mhpmevent29_field");
    mhpmevent29_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent29_reg


//------------------------------------------------------------------------------
// mhpmevent30 (0x33e) - mhpmevent30
//------------------------------------------------------------------------------
class mhpmevent30_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent30_reg )

  rand uvm_reg_field mhpmevent30_field;

  function new( string name = "mhpmevent30_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent30_field = uvm_reg_field::type_id::create("mhpmevent30_field");
    mhpmevent30_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent30_reg


//------------------------------------------------------------------------------
// mhpmevent31 (0x33f) - mhpmevent31
//------------------------------------------------------------------------------
class mhpmevent31_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent31_reg )

  rand uvm_reg_field mhpmevent31_field;

  function new( string name = "mhpmevent31_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent31_field = uvm_reg_field::type_id::create("mhpmevent31_field");
    mhpmevent31_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent31_reg


//------------------------------------------------------------------------------
// mscratch (0x340) - mscratch
//------------------------------------------------------------------------------
class mscratch_reg extends uvm_reg;
  `uvm_object_utils( mscratch_reg )

  rand uvm_reg_field mscratch_field;

  function new( string name = "mscratch_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mscratch_field = uvm_reg_field::type_id::create("mscratch_field");
    mscratch_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mscratch_reg


//------------------------------------------------------------------------------
// mepc (0x341) - mepc
//------------------------------------------------------------------------------
class mepc_reg extends uvm_reg;
  `uvm_object_utils( mepc_reg )

  rand uvm_reg_field mepc_field;

  function new( string name = "mepc_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mepc_field = uvm_reg_field::type_id::create("mepc_field");
    mepc_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mepc_reg


//------------------------------------------------------------------------------
// mcause (0x342) - mcause
//------------------------------------------------------------------------------
class mcause_reg extends uvm_reg;
  `uvm_object_utils( mcause_reg )

  rand uvm_reg_field mcause_field;

  function new( string name = "mcause_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcause_field = uvm_reg_field::type_id::create("mcause_field");
    mcause_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mcause_reg


//------------------------------------------------------------------------------
// mtval (0x343) - mtval
//------------------------------------------------------------------------------
class mtval_reg extends uvm_reg;
  `uvm_object_utils( mtval_reg )

  rand uvm_reg_field mtval_field;

  function new( string name = "mtval_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtval_field = uvm_reg_field::type_id::create("mtval_field");
    mtval_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtval_reg


//------------------------------------------------------------------------------
// mip (0x344) - mip
//------------------------------------------------------------------------------
class mip_reg extends uvm_reg;
  `uvm_object_utils( mip_reg )

  rand uvm_reg_field mip_field;

  function new( string name = "mip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mip_field = uvm_reg_field::type_id::create("mip_field");
    mip_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mip_reg


//------------------------------------------------------------------------------
// pmpcfg0 (0x3a0) - pmpcfg0
//------------------------------------------------------------------------------
class pmpcfg0_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg0_reg )

  rand uvm_reg_field pmpcfg0_field;

  function new( string name = "pmpcfg0_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg0_field = uvm_reg_field::type_id::create("pmpcfg0_field");
    pmpcfg0_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg0_reg


//------------------------------------------------------------------------------
// pmpcfg2 (0x3a2) - pmpcfg2
//------------------------------------------------------------------------------
class pmpcfg2_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg2_reg )

  rand uvm_reg_field pmpcfg2_field;

  function new( string name = "pmpcfg2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg2_field = uvm_reg_field::type_id::create("pmpcfg2_field");
    pmpcfg2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg2_reg


//------------------------------------------------------------------------------
// pmpcfg4 (0x3a4) - pmpcfg4
//------------------------------------------------------------------------------
class pmpcfg4_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg4_reg )

  rand uvm_reg_field pmpcfg4_field;

  function new( string name = "pmpcfg4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg4_field = uvm_reg_field::type_id::create("pmpcfg4_field");
    pmpcfg4_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg4_reg


//------------------------------------------------------------------------------
// pmpcfg6 (0x3a6) - pmpcfg6
//------------------------------------------------------------------------------
class pmpcfg6_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg6_reg )

  rand uvm_reg_field pmpcfg6_field;

  function new( string name = "pmpcfg6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg6_field = uvm_reg_field::type_id::create("pmpcfg6_field");
    pmpcfg6_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg6_reg


//------------------------------------------------------------------------------
// pmpcfg8 (0x3a8) - pmpcfg8
//------------------------------------------------------------------------------
class pmpcfg8_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg8_reg )

  rand uvm_reg_field pmpcfg8_field;

  function new( string name = "pmpcfg8_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg8_field = uvm_reg_field::type_id::create("pmpcfg8_field");
    pmpcfg8_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg8_reg


//------------------------------------------------------------------------------
// pmpcfg10 (0x3aa) - pmpcfg10
//------------------------------------------------------------------------------
class pmpcfg10_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg10_reg )

  rand uvm_reg_field pmpcfg10_field;

  function new( string name = "pmpcfg10_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg10_field = uvm_reg_field::type_id::create("pmpcfg10_field");
    pmpcfg10_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg10_reg


//------------------------------------------------------------------------------
// pmpcfg12 (0x3ac) - pmpcfg12
//------------------------------------------------------------------------------
class pmpcfg12_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg12_reg )

  rand uvm_reg_field pmpcfg12_field;

  function new( string name = "pmpcfg12_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg12_field = uvm_reg_field::type_id::create("pmpcfg12_field");
    pmpcfg12_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg12_reg


//------------------------------------------------------------------------------
// pmpcfg14 (0x3ae) - pmpcfg14
//------------------------------------------------------------------------------
class pmpcfg14_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg14_reg )

  rand uvm_reg_field pmpcfg14_field;

  function new( string name = "pmpcfg14_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg14_field = uvm_reg_field::type_id::create("pmpcfg14_field");
    pmpcfg14_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg14_reg


//------------------------------------------------------------------------------
// pmpaddr0 (0x3b0) - pmpaddr0
//------------------------------------------------------------------------------
class pmpaddr0_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr0_reg )

  rand uvm_reg_field pmpaddr0_field;

  function new( string name = "pmpaddr0_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr0_field = uvm_reg_field::type_id::create("pmpaddr0_field");
    pmpaddr0_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr0_reg


//------------------------------------------------------------------------------
// pmpaddr1 (0x3b1) - pmpaddr1
//------------------------------------------------------------------------------
class pmpaddr1_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr1_reg )

  rand uvm_reg_field pmpaddr1_field;

  function new( string name = "pmpaddr1_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr1_field = uvm_reg_field::type_id::create("pmpaddr1_field");
    pmpaddr1_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr1_reg


//------------------------------------------------------------------------------
// pmpaddr2 (0x3b2) - pmpaddr2
//------------------------------------------------------------------------------
class pmpaddr2_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr2_reg )

  rand uvm_reg_field pmpaddr2_field;

  function new( string name = "pmpaddr2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr2_field = uvm_reg_field::type_id::create("pmpaddr2_field");
    pmpaddr2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr2_reg


//------------------------------------------------------------------------------
// pmpaddr3 (0x3b3) - pmpaddr3
//------------------------------------------------------------------------------
class pmpaddr3_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr3_reg )

  rand uvm_reg_field pmpaddr3_field;

  function new( string name = "pmpaddr3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr3_field = uvm_reg_field::type_id::create("pmpaddr3_field");
    pmpaddr3_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr3_reg


//------------------------------------------------------------------------------
// pmpaddr4 (0x3b4) - pmpaddr4
//------------------------------------------------------------------------------
class pmpaddr4_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr4_reg )

  rand uvm_reg_field pmpaddr4_field;

  function new( string name = "pmpaddr4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr4_field = uvm_reg_field::type_id::create("pmpaddr4_field");
    pmpaddr4_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr4_reg


//------------------------------------------------------------------------------
// pmpaddr5 (0x3b5) - pmpaddr5
//------------------------------------------------------------------------------
class pmpaddr5_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr5_reg )

  rand uvm_reg_field pmpaddr5_field;

  function new( string name = "pmpaddr5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr5_field = uvm_reg_field::type_id::create("pmpaddr5_field");
    pmpaddr5_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr5_reg


//------------------------------------------------------------------------------
// pmpaddr6 (0x3b6) - pmpaddr6
//------------------------------------------------------------------------------
class pmpaddr6_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr6_reg )

  rand uvm_reg_field pmpaddr6_field;

  function new( string name = "pmpaddr6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr6_field = uvm_reg_field::type_id::create("pmpaddr6_field");
    pmpaddr6_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr6_reg


//------------------------------------------------------------------------------
// pmpaddr7 (0x3b7) - pmpaddr7
//------------------------------------------------------------------------------
class pmpaddr7_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr7_reg )

  rand uvm_reg_field pmpaddr7_field;

  function new( string name = "pmpaddr7_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr7_field = uvm_reg_field::type_id::create("pmpaddr7_field");
    pmpaddr7_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr7_reg


//------------------------------------------------------------------------------
// pmpaddr8 (0x3b8) - pmpaddr8
//------------------------------------------------------------------------------
class pmpaddr8_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr8_reg )

  rand uvm_reg_field pmpaddr8_field;

  function new( string name = "pmpaddr8_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr8_field = uvm_reg_field::type_id::create("pmpaddr8_field");
    pmpaddr8_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr8_reg


//------------------------------------------------------------------------------
// pmpaddr9 (0x3b9) - pmpaddr9
//------------------------------------------------------------------------------
class pmpaddr9_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr9_reg )

  rand uvm_reg_field pmpaddr9_field;

  function new( string name = "pmpaddr9_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr9_field = uvm_reg_field::type_id::create("pmpaddr9_field");
    pmpaddr9_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr9_reg


//------------------------------------------------------------------------------
// pmpaddr10 (0x3ba) - pmpaddr10
//------------------------------------------------------------------------------
class pmpaddr10_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr10_reg )

  rand uvm_reg_field pmpaddr10_field;

  function new( string name = "pmpaddr10_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr10_field = uvm_reg_field::type_id::create("pmpaddr10_field");
    pmpaddr10_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr10_reg


//------------------------------------------------------------------------------
// pmpaddr11 (0x3bb) - pmpaddr11
//------------------------------------------------------------------------------
class pmpaddr11_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr11_reg )

  rand uvm_reg_field pmpaddr11_field;

  function new( string name = "pmpaddr11_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr11_field = uvm_reg_field::type_id::create("pmpaddr11_field");
    pmpaddr11_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr11_reg


//------------------------------------------------------------------------------
// pmpaddr12 (0x3bc) - pmpaddr12
//------------------------------------------------------------------------------
class pmpaddr12_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr12_reg )

  rand uvm_reg_field pmpaddr12_field;

  function new( string name = "pmpaddr12_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr12_field = uvm_reg_field::type_id::create("pmpaddr12_field");
    pmpaddr12_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr12_reg


//------------------------------------------------------------------------------
// pmpaddr13 (0x3bd) - pmpaddr13
//------------------------------------------------------------------------------
class pmpaddr13_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr13_reg )

  rand uvm_reg_field pmpaddr13_field;

  function new( string name = "pmpaddr13_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr13_field = uvm_reg_field::type_id::create("pmpaddr13_field");
    pmpaddr13_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr13_reg


//------------------------------------------------------------------------------
// pmpaddr14 (0x3be) - pmpaddr14
//------------------------------------------------------------------------------
class pmpaddr14_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr14_reg )

  rand uvm_reg_field pmpaddr14_field;

  function new( string name = "pmpaddr14_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr14_field = uvm_reg_field::type_id::create("pmpaddr14_field");
    pmpaddr14_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr14_reg


//------------------------------------------------------------------------------
// pmpaddr15 (0x3bf) - pmpaddr15
//------------------------------------------------------------------------------
class pmpaddr15_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr15_reg )

  rand uvm_reg_field pmpaddr15_field;

  function new( string name = "pmpaddr15_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr15_field = uvm_reg_field::type_id::create("pmpaddr15_field");
    pmpaddr15_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr15_reg


//------------------------------------------------------------------------------
// pmpaddr16 (0x3c0) - pmpaddr16
//------------------------------------------------------------------------------
class pmpaddr16_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr16_reg )

  rand uvm_reg_field pmpaddr16_field;

  function new( string name = "pmpaddr16_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr16_field = uvm_reg_field::type_id::create("pmpaddr16_field");
    pmpaddr16_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr16_reg


//------------------------------------------------------------------------------
// pmpaddr17 (0x3c1) - pmpaddr17
//------------------------------------------------------------------------------
class pmpaddr17_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr17_reg )

  rand uvm_reg_field pmpaddr17_field;

  function new( string name = "pmpaddr17_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr17_field = uvm_reg_field::type_id::create("pmpaddr17_field");
    pmpaddr17_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr17_reg


//------------------------------------------------------------------------------
// pmpaddr18 (0x3c2) - pmpaddr18
//------------------------------------------------------------------------------
class pmpaddr18_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr18_reg )

  rand uvm_reg_field pmpaddr18_field;

  function new( string name = "pmpaddr18_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr18_field = uvm_reg_field::type_id::create("pmpaddr18_field");
    pmpaddr18_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr18_reg


//------------------------------------------------------------------------------
// pmpaddr19 (0x3c3) - pmpaddr19
//------------------------------------------------------------------------------
class pmpaddr19_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr19_reg )

  rand uvm_reg_field pmpaddr19_field;

  function new( string name = "pmpaddr19_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr19_field = uvm_reg_field::type_id::create("pmpaddr19_field");
    pmpaddr19_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr19_reg


//------------------------------------------------------------------------------
// pmpaddr20 (0x3c4) - pmpaddr20
//------------------------------------------------------------------------------
class pmpaddr20_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr20_reg )

  rand uvm_reg_field pmpaddr20_field;

  function new( string name = "pmpaddr20_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr20_field = uvm_reg_field::type_id::create("pmpaddr20_field");
    pmpaddr20_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr20_reg


//------------------------------------------------------------------------------
// pmpaddr21 (0x3c5) - pmpaddr21
//------------------------------------------------------------------------------
class pmpaddr21_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr21_reg )

  rand uvm_reg_field pmpaddr21_field;

  function new( string name = "pmpaddr21_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr21_field = uvm_reg_field::type_id::create("pmpaddr21_field");
    pmpaddr21_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr21_reg


//------------------------------------------------------------------------------
// pmpaddr22 (0x3c6) - pmpaddr22
//------------------------------------------------------------------------------
class pmpaddr22_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr22_reg )

  rand uvm_reg_field pmpaddr22_field;

  function new( string name = "pmpaddr22_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr22_field = uvm_reg_field::type_id::create("pmpaddr22_field");
    pmpaddr22_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr22_reg


//------------------------------------------------------------------------------
// pmpaddr23 (0x3c7) - pmpaddr23
//------------------------------------------------------------------------------
class pmpaddr23_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr23_reg )

  rand uvm_reg_field pmpaddr23_field;

  function new( string name = "pmpaddr23_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr23_field = uvm_reg_field::type_id::create("pmpaddr23_field");
    pmpaddr23_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr23_reg


//------------------------------------------------------------------------------
// pmpaddr24 (0x3c8) - pmpaddr24
//------------------------------------------------------------------------------
class pmpaddr24_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr24_reg )

  rand uvm_reg_field pmpaddr24_field;

  function new( string name = "pmpaddr24_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr24_field = uvm_reg_field::type_id::create("pmpaddr24_field");
    pmpaddr24_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr24_reg


//------------------------------------------------------------------------------
// pmpaddr25 (0x3c9) - pmpaddr25
//------------------------------------------------------------------------------
class pmpaddr25_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr25_reg )

  rand uvm_reg_field pmpaddr25_field;

  function new( string name = "pmpaddr25_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr25_field = uvm_reg_field::type_id::create("pmpaddr25_field");
    pmpaddr25_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr25_reg


//------------------------------------------------------------------------------
// pmpaddr26 (0x3ca) - pmpaddr26
//------------------------------------------------------------------------------
class pmpaddr26_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr26_reg )

  rand uvm_reg_field pmpaddr26_field;

  function new( string name = "pmpaddr26_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr26_field = uvm_reg_field::type_id::create("pmpaddr26_field");
    pmpaddr26_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr26_reg


//------------------------------------------------------------------------------
// pmpaddr27 (0x3cb) - pmpaddr27
//------------------------------------------------------------------------------
class pmpaddr27_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr27_reg )

  rand uvm_reg_field pmpaddr27_field;

  function new( string name = "pmpaddr27_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr27_field = uvm_reg_field::type_id::create("pmpaddr27_field");
    pmpaddr27_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr27_reg


//------------------------------------------------------------------------------
// pmpaddr28 (0x3cc) - pmpaddr28
//------------------------------------------------------------------------------
class pmpaddr28_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr28_reg )

  rand uvm_reg_field pmpaddr28_field;

  function new( string name = "pmpaddr28_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr28_field = uvm_reg_field::type_id::create("pmpaddr28_field");
    pmpaddr28_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr28_reg


//------------------------------------------------------------------------------
// pmpaddr29 (0x3cd) - pmpaddr29
//------------------------------------------------------------------------------
class pmpaddr29_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr29_reg )

  rand uvm_reg_field pmpaddr29_field;

  function new( string name = "pmpaddr29_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr29_field = uvm_reg_field::type_id::create("pmpaddr29_field");
    pmpaddr29_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr29_reg


//------------------------------------------------------------------------------
// pmpaddr30 (0x3ce) - pmpaddr30
//------------------------------------------------------------------------------
class pmpaddr30_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr30_reg )

  rand uvm_reg_field pmpaddr30_field;

  function new( string name = "pmpaddr30_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr30_field = uvm_reg_field::type_id::create("pmpaddr30_field");
    pmpaddr30_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr30_reg


//------------------------------------------------------------------------------
// pmpaddr31 (0x3cf) - pmpaddr31
//------------------------------------------------------------------------------
class pmpaddr31_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr31_reg )

  rand uvm_reg_field pmpaddr31_field;

  function new( string name = "pmpaddr31_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr31_field = uvm_reg_field::type_id::create("pmpaddr31_field");
    pmpaddr31_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr31_reg


//------------------------------------------------------------------------------
// pmpaddr32 (0x3d0) - pmpaddr32
//------------------------------------------------------------------------------
class pmpaddr32_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr32_reg )

  rand uvm_reg_field pmpaddr32_field;

  function new( string name = "pmpaddr32_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr32_field = uvm_reg_field::type_id::create("pmpaddr32_field");
    pmpaddr32_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr32_reg


//------------------------------------------------------------------------------
// pmpaddr33 (0x3d1) - pmpaddr33
//------------------------------------------------------------------------------
class pmpaddr33_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr33_reg )

  rand uvm_reg_field pmpaddr33_field;

  function new( string name = "pmpaddr33_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr33_field = uvm_reg_field::type_id::create("pmpaddr33_field");
    pmpaddr33_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr33_reg


//------------------------------------------------------------------------------
// pmpaddr34 (0x3d2) - pmpaddr34
//------------------------------------------------------------------------------
class pmpaddr34_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr34_reg )

  rand uvm_reg_field pmpaddr34_field;

  function new( string name = "pmpaddr34_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr34_field = uvm_reg_field::type_id::create("pmpaddr34_field");
    pmpaddr34_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr34_reg


//------------------------------------------------------------------------------
// pmpaddr35 (0x3d3) - pmpaddr35
//------------------------------------------------------------------------------
class pmpaddr35_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr35_reg )

  rand uvm_reg_field pmpaddr35_field;

  function new( string name = "pmpaddr35_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr35_field = uvm_reg_field::type_id::create("pmpaddr35_field");
    pmpaddr35_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr35_reg


//------------------------------------------------------------------------------
// pmpaddr36 (0x3d4) - pmpaddr36
//------------------------------------------------------------------------------
class pmpaddr36_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr36_reg )

  rand uvm_reg_field pmpaddr36_field;

  function new( string name = "pmpaddr36_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr36_field = uvm_reg_field::type_id::create("pmpaddr36_field");
    pmpaddr36_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr36_reg


//------------------------------------------------------------------------------
// pmpaddr37 (0x3d5) - pmpaddr37
//------------------------------------------------------------------------------
class pmpaddr37_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr37_reg )

  rand uvm_reg_field pmpaddr37_field;

  function new( string name = "pmpaddr37_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr37_field = uvm_reg_field::type_id::create("pmpaddr37_field");
    pmpaddr37_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr37_reg


//------------------------------------------------------------------------------
// pmpaddr38 (0x3d6) - pmpaddr38
//------------------------------------------------------------------------------
class pmpaddr38_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr38_reg )

  rand uvm_reg_field pmpaddr38_field;

  function new( string name = "pmpaddr38_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr38_field = uvm_reg_field::type_id::create("pmpaddr38_field");
    pmpaddr38_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr38_reg


//------------------------------------------------------------------------------
// pmpaddr39 (0x3d7) - pmpaddr39
//------------------------------------------------------------------------------
class pmpaddr39_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr39_reg )

  rand uvm_reg_field pmpaddr39_field;

  function new( string name = "pmpaddr39_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr39_field = uvm_reg_field::type_id::create("pmpaddr39_field");
    pmpaddr39_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr39_reg


//------------------------------------------------------------------------------
// pmpaddr40 (0x3d8) - pmpaddr40
//------------------------------------------------------------------------------
class pmpaddr40_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr40_reg )

  rand uvm_reg_field pmpaddr40_field;

  function new( string name = "pmpaddr40_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr40_field = uvm_reg_field::type_id::create("pmpaddr40_field");
    pmpaddr40_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr40_reg


//------------------------------------------------------------------------------
// pmpaddr41 (0x3d9) - pmpaddr41
//------------------------------------------------------------------------------
class pmpaddr41_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr41_reg )

  rand uvm_reg_field pmpaddr41_field;

  function new( string name = "pmpaddr41_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr41_field = uvm_reg_field::type_id::create("pmpaddr41_field");
    pmpaddr41_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr41_reg


//------------------------------------------------------------------------------
// pmpaddr42 (0x3da) - pmpaddr42
//------------------------------------------------------------------------------
class pmpaddr42_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr42_reg )

  rand uvm_reg_field pmpaddr42_field;

  function new( string name = "pmpaddr42_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr42_field = uvm_reg_field::type_id::create("pmpaddr42_field");
    pmpaddr42_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr42_reg


//------------------------------------------------------------------------------
// pmpaddr43 (0x3db) - pmpaddr43
//------------------------------------------------------------------------------
class pmpaddr43_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr43_reg )

  rand uvm_reg_field pmpaddr43_field;

  function new( string name = "pmpaddr43_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr43_field = uvm_reg_field::type_id::create("pmpaddr43_field");
    pmpaddr43_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr43_reg


//------------------------------------------------------------------------------
// pmpaddr44 (0x3dc) - pmpaddr44
//------------------------------------------------------------------------------
class pmpaddr44_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr44_reg )

  rand uvm_reg_field pmpaddr44_field;

  function new( string name = "pmpaddr44_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr44_field = uvm_reg_field::type_id::create("pmpaddr44_field");
    pmpaddr44_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr44_reg


//------------------------------------------------------------------------------
// pmpaddr45 (0x3dd) - pmpaddr45
//------------------------------------------------------------------------------
class pmpaddr45_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr45_reg )

  rand uvm_reg_field pmpaddr45_field;

  function new( string name = "pmpaddr45_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr45_field = uvm_reg_field::type_id::create("pmpaddr45_field");
    pmpaddr45_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr45_reg


//------------------------------------------------------------------------------
// pmpaddr46 (0x3de) - pmpaddr46
//------------------------------------------------------------------------------
class pmpaddr46_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr46_reg )

  rand uvm_reg_field pmpaddr46_field;

  function new( string name = "pmpaddr46_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr46_field = uvm_reg_field::type_id::create("pmpaddr46_field");
    pmpaddr46_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr46_reg


//------------------------------------------------------------------------------
// pmpaddr47 (0x3df) - pmpaddr47
//------------------------------------------------------------------------------
class pmpaddr47_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr47_reg )

  rand uvm_reg_field pmpaddr47_field;

  function new( string name = "pmpaddr47_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr47_field = uvm_reg_field::type_id::create("pmpaddr47_field");
    pmpaddr47_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr47_reg


//------------------------------------------------------------------------------
// pmpaddr48 (0x3e0) - pmpaddr48
//------------------------------------------------------------------------------
class pmpaddr48_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr48_reg )

  rand uvm_reg_field pmpaddr48_field;

  function new( string name = "pmpaddr48_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr48_field = uvm_reg_field::type_id::create("pmpaddr48_field");
    pmpaddr48_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr48_reg


//------------------------------------------------------------------------------
// pmpaddr49 (0x3e1) - pmpaddr49
//------------------------------------------------------------------------------
class pmpaddr49_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr49_reg )

  rand uvm_reg_field pmpaddr49_field;

  function new( string name = "pmpaddr49_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr49_field = uvm_reg_field::type_id::create("pmpaddr49_field");
    pmpaddr49_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr49_reg


//------------------------------------------------------------------------------
// pmpaddr50 (0x3e2) - pmpaddr50
//------------------------------------------------------------------------------
class pmpaddr50_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr50_reg )

  rand uvm_reg_field pmpaddr50_field;

  function new( string name = "pmpaddr50_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr50_field = uvm_reg_field::type_id::create("pmpaddr50_field");
    pmpaddr50_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr50_reg


//------------------------------------------------------------------------------
// pmpaddr51 (0x3e3) - pmpaddr51
//------------------------------------------------------------------------------
class pmpaddr51_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr51_reg )

  rand uvm_reg_field pmpaddr51_field;

  function new( string name = "pmpaddr51_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr51_field = uvm_reg_field::type_id::create("pmpaddr51_field");
    pmpaddr51_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr51_reg


//------------------------------------------------------------------------------
// pmpaddr52 (0x3e4) - pmpaddr52
//------------------------------------------------------------------------------
class pmpaddr52_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr52_reg )

  rand uvm_reg_field pmpaddr52_field;

  function new( string name = "pmpaddr52_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr52_field = uvm_reg_field::type_id::create("pmpaddr52_field");
    pmpaddr52_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr52_reg


//------------------------------------------------------------------------------
// pmpaddr53 (0x3e5) - pmpaddr53
//------------------------------------------------------------------------------
class pmpaddr53_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr53_reg )

  rand uvm_reg_field pmpaddr53_field;

  function new( string name = "pmpaddr53_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr53_field = uvm_reg_field::type_id::create("pmpaddr53_field");
    pmpaddr53_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr53_reg


//------------------------------------------------------------------------------
// pmpaddr54 (0x3e6) - pmpaddr54
//------------------------------------------------------------------------------
class pmpaddr54_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr54_reg )

  rand uvm_reg_field pmpaddr54_field;

  function new( string name = "pmpaddr54_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr54_field = uvm_reg_field::type_id::create("pmpaddr54_field");
    pmpaddr54_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr54_reg


//------------------------------------------------------------------------------
// pmpaddr55 (0x3e7) - pmpaddr55
//------------------------------------------------------------------------------
class pmpaddr55_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr55_reg )

  rand uvm_reg_field pmpaddr55_field;

  function new( string name = "pmpaddr55_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr55_field = uvm_reg_field::type_id::create("pmpaddr55_field");
    pmpaddr55_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr55_reg


//------------------------------------------------------------------------------
// pmpaddr56 (0x3e8) - pmpaddr56
//------------------------------------------------------------------------------
class pmpaddr56_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr56_reg )

  rand uvm_reg_field pmpaddr56_field;

  function new( string name = "pmpaddr56_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr56_field = uvm_reg_field::type_id::create("pmpaddr56_field");
    pmpaddr56_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr56_reg


//------------------------------------------------------------------------------
// pmpaddr57 (0x3e9) - pmpaddr57
//------------------------------------------------------------------------------
class pmpaddr57_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr57_reg )

  rand uvm_reg_field pmpaddr57_field;

  function new( string name = "pmpaddr57_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr57_field = uvm_reg_field::type_id::create("pmpaddr57_field");
    pmpaddr57_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr57_reg


//------------------------------------------------------------------------------
// pmpaddr58 (0x3ea) - pmpaddr58
//------------------------------------------------------------------------------
class pmpaddr58_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr58_reg )

  rand uvm_reg_field pmpaddr58_field;

  function new( string name = "pmpaddr58_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr58_field = uvm_reg_field::type_id::create("pmpaddr58_field");
    pmpaddr58_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr58_reg


//------------------------------------------------------------------------------
// pmpaddr59 (0x3eb) - pmpaddr59
//------------------------------------------------------------------------------
class pmpaddr59_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr59_reg )

  rand uvm_reg_field pmpaddr59_field;

  function new( string name = "pmpaddr59_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr59_field = uvm_reg_field::type_id::create("pmpaddr59_field");
    pmpaddr59_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr59_reg


//------------------------------------------------------------------------------
// pmpaddr60 (0x3ec) - pmpaddr60
//------------------------------------------------------------------------------
class pmpaddr60_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr60_reg )

  rand uvm_reg_field pmpaddr60_field;

  function new( string name = "pmpaddr60_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr60_field = uvm_reg_field::type_id::create("pmpaddr60_field");
    pmpaddr60_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr60_reg


//------------------------------------------------------------------------------
// pmpaddr61 (0x3ed) - pmpaddr61
//------------------------------------------------------------------------------
class pmpaddr61_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr61_reg )

  rand uvm_reg_field pmpaddr61_field;

  function new( string name = "pmpaddr61_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr61_field = uvm_reg_field::type_id::create("pmpaddr61_field");
    pmpaddr61_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr61_reg


//------------------------------------------------------------------------------
// pmpaddr62 (0x3ee) - pmpaddr62
//------------------------------------------------------------------------------
class pmpaddr62_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr62_reg )

  rand uvm_reg_field pmpaddr62_field;

  function new( string name = "pmpaddr62_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr62_field = uvm_reg_field::type_id::create("pmpaddr62_field");
    pmpaddr62_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr62_reg


//------------------------------------------------------------------------------
// pmpaddr63 (0x3ef) - pmpaddr63
//------------------------------------------------------------------------------
class pmpaddr63_reg extends uvm_reg;
  `uvm_object_utils( pmpaddr63_reg )

  rand uvm_reg_field pmpaddr63_field;

  function new( string name = "pmpaddr63_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpaddr63_field = uvm_reg_field::type_id::create("pmpaddr63_field");
    pmpaddr63_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : pmpaddr63_reg


//------------------------------------------------------------------------------
// henvcfg (0x60a) - henvcfg
//------------------------------------------------------------------------------
class henvcfg_reg extends uvm_reg;
  `uvm_object_utils( henvcfg_reg )

  rand uvm_reg_field henvcfg_field;

  function new( string name = "henvcfg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    henvcfg_field = uvm_reg_field::type_id::create("henvcfg_field");
    henvcfg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : henvcfg_reg


//------------------------------------------------------------------------------
// mseccfg (0x747) - mseccfg
//------------------------------------------------------------------------------
class mseccfg_reg extends uvm_reg;
  `uvm_object_utils( mseccfg_reg )

  rand uvm_reg_field mseccfg_field;

  function new( string name = "mseccfg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mseccfg_field = uvm_reg_field::type_id::create("mseccfg_field");
    mseccfg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mseccfg_reg


//------------------------------------------------------------------------------
// mcycle (0xb00) - mcycle
//------------------------------------------------------------------------------
class mcycle_reg extends uvm_reg;
  `uvm_object_utils( mcycle_reg )

  rand uvm_reg_field mcycle_field;

  function new( string name = "mcycle_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcycle_field = uvm_reg_field::type_id::create("mcycle_field");
    mcycle_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mcycle_reg


//------------------------------------------------------------------------------
// minstret (0xb02) - minstret
//------------------------------------------------------------------------------
class minstret_reg extends uvm_reg;
  `uvm_object_utils( minstret_reg )

  rand uvm_reg_field minstret_field;

  function new( string name = "minstret_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    minstret_field = uvm_reg_field::type_id::create("minstret_field");
    minstret_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : minstret_reg


//------------------------------------------------------------------------------
// mhpmcounter3 (0xb03) - mhpmcounter3
//------------------------------------------------------------------------------
class mhpmcounter3_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter3_reg )

  rand uvm_reg_field mhpmcounter3_field;

  function new( string name = "mhpmcounter3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter3_field = uvm_reg_field::type_id::create("mhpmcounter3_field");
    mhpmcounter3_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter3_reg


//------------------------------------------------------------------------------
// mhpmcounter4 (0xb04) - mhpmcounter4
//------------------------------------------------------------------------------
class mhpmcounter4_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter4_reg )

  rand uvm_reg_field mhpmcounter4_field;

  function new( string name = "mhpmcounter4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter4_field = uvm_reg_field::type_id::create("mhpmcounter4_field");
    mhpmcounter4_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter4_reg


//------------------------------------------------------------------------------
// mhpmcounter5 (0xb05) - mhpmcounter5
//------------------------------------------------------------------------------
class mhpmcounter5_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter5_reg )

  rand uvm_reg_field mhpmcounter5_field;

  function new( string name = "mhpmcounter5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter5_field = uvm_reg_field::type_id::create("mhpmcounter5_field");
    mhpmcounter5_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter5_reg


//------------------------------------------------------------------------------
// mhpmcounter6 (0xb06) - mhpmcounter6
//------------------------------------------------------------------------------
class mhpmcounter6_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter6_reg )

  rand uvm_reg_field mhpmcounter6_field;

  function new( string name = "mhpmcounter6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter6_field = uvm_reg_field::type_id::create("mhpmcounter6_field");
    mhpmcounter6_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter6_reg


//------------------------------------------------------------------------------
// mhpmcounter7 (0xb07) - mhpmcounter7
//------------------------------------------------------------------------------
class mhpmcounter7_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter7_reg )

  rand uvm_reg_field mhpmcounter7_field;

  function new( string name = "mhpmcounter7_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter7_field = uvm_reg_field::type_id::create("mhpmcounter7_field");
    mhpmcounter7_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter7_reg


//------------------------------------------------------------------------------
// mhpmcounter8 (0xb08) - mhpmcounter8
//------------------------------------------------------------------------------
class mhpmcounter8_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter8_reg )

  rand uvm_reg_field mhpmcounter8_field;

  function new( string name = "mhpmcounter8_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter8_field = uvm_reg_field::type_id::create("mhpmcounter8_field");
    mhpmcounter8_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter8_reg


//------------------------------------------------------------------------------
// mhpmcounter9 (0xb09) - mhpmcounter9
//------------------------------------------------------------------------------
class mhpmcounter9_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter9_reg )

  rand uvm_reg_field mhpmcounter9_field;

  function new( string name = "mhpmcounter9_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter9_field = uvm_reg_field::type_id::create("mhpmcounter9_field");
    mhpmcounter9_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter9_reg


//------------------------------------------------------------------------------
// mhpmcounter10 (0xb0a) - mhpmcounter10
//------------------------------------------------------------------------------
class mhpmcounter10_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter10_reg )

  rand uvm_reg_field mhpmcounter10_field;

  function new( string name = "mhpmcounter10_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter10_field = uvm_reg_field::type_id::create("mhpmcounter10_field");
    mhpmcounter10_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter10_reg


//------------------------------------------------------------------------------
// mhpmcounter11 (0xb0b) - mhpmcounter11
//------------------------------------------------------------------------------
class mhpmcounter11_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter11_reg )

  rand uvm_reg_field mhpmcounter11_field;

  function new( string name = "mhpmcounter11_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter11_field = uvm_reg_field::type_id::create("mhpmcounter11_field");
    mhpmcounter11_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter11_reg


//------------------------------------------------------------------------------
// mhpmcounter12 (0xb0c) - mhpmcounter12
//------------------------------------------------------------------------------
class mhpmcounter12_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter12_reg )

  rand uvm_reg_field mhpmcounter12_field;

  function new( string name = "mhpmcounter12_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter12_field = uvm_reg_field::type_id::create("mhpmcounter12_field");
    mhpmcounter12_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter12_reg


//------------------------------------------------------------------------------
// mhpmcounter13 (0xb0d) - mhpmcounter13
//------------------------------------------------------------------------------
class mhpmcounter13_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter13_reg )

  rand uvm_reg_field mhpmcounter13_field;

  function new( string name = "mhpmcounter13_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter13_field = uvm_reg_field::type_id::create("mhpmcounter13_field");
    mhpmcounter13_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter13_reg


//------------------------------------------------------------------------------
// mhpmcounter14 (0xb0e) - mhpmcounter14
//------------------------------------------------------------------------------
class mhpmcounter14_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter14_reg )

  rand uvm_reg_field mhpmcounter14_field;

  function new( string name = "mhpmcounter14_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter14_field = uvm_reg_field::type_id::create("mhpmcounter14_field");
    mhpmcounter14_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter14_reg


//------------------------------------------------------------------------------
// mhpmcounter15 (0xb0f) - mhpmcounter15
//------------------------------------------------------------------------------
class mhpmcounter15_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter15_reg )

  rand uvm_reg_field mhpmcounter15_field;

  function new( string name = "mhpmcounter15_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter15_field = uvm_reg_field::type_id::create("mhpmcounter15_field");
    mhpmcounter15_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter15_reg


//------------------------------------------------------------------------------
// mhpmcounter16 (0xb10) - mhpmcounter16
//------------------------------------------------------------------------------
class mhpmcounter16_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter16_reg )

  rand uvm_reg_field mhpmcounter16_field;

  function new( string name = "mhpmcounter16_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter16_field = uvm_reg_field::type_id::create("mhpmcounter16_field");
    mhpmcounter16_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter16_reg


//------------------------------------------------------------------------------
// mhpmcounter17 (0xb11) - mhpmcounter17
//------------------------------------------------------------------------------
class mhpmcounter17_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter17_reg )

  rand uvm_reg_field mhpmcounter17_field;

  function new( string name = "mhpmcounter17_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter17_field = uvm_reg_field::type_id::create("mhpmcounter17_field");
    mhpmcounter17_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter17_reg


//------------------------------------------------------------------------------
// mhpmcounter18 (0xb12) - mhpmcounter18
//------------------------------------------------------------------------------
class mhpmcounter18_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter18_reg )

  rand uvm_reg_field mhpmcounter18_field;

  function new( string name = "mhpmcounter18_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter18_field = uvm_reg_field::type_id::create("mhpmcounter18_field");
    mhpmcounter18_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter18_reg


//------------------------------------------------------------------------------
// mhpmcounter19 (0xb13) - mhpmcounter19
//------------------------------------------------------------------------------
class mhpmcounter19_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter19_reg )

  rand uvm_reg_field mhpmcounter19_field;

  function new( string name = "mhpmcounter19_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter19_field = uvm_reg_field::type_id::create("mhpmcounter19_field");
    mhpmcounter19_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter19_reg


//------------------------------------------------------------------------------
// mhpmcounter20 (0xb14) - mhpmcounter20
//------------------------------------------------------------------------------
class mhpmcounter20_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter20_reg )

  rand uvm_reg_field mhpmcounter20_field;

  function new( string name = "mhpmcounter20_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter20_field = uvm_reg_field::type_id::create("mhpmcounter20_field");
    mhpmcounter20_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter20_reg


//------------------------------------------------------------------------------
// mhpmcounter21 (0xb15) - mhpmcounter21
//------------------------------------------------------------------------------
class mhpmcounter21_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter21_reg )

  rand uvm_reg_field mhpmcounter21_field;

  function new( string name = "mhpmcounter21_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter21_field = uvm_reg_field::type_id::create("mhpmcounter21_field");
    mhpmcounter21_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter21_reg


//------------------------------------------------------------------------------
// mhpmcounter22 (0xb16) - mhpmcounter22
//------------------------------------------------------------------------------
class mhpmcounter22_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter22_reg )

  rand uvm_reg_field mhpmcounter22_field;

  function new( string name = "mhpmcounter22_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter22_field = uvm_reg_field::type_id::create("mhpmcounter22_field");
    mhpmcounter22_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter22_reg


//------------------------------------------------------------------------------
// mhpmcounter23 (0xb17) - mhpmcounter23
//------------------------------------------------------------------------------
class mhpmcounter23_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter23_reg )

  rand uvm_reg_field mhpmcounter23_field;

  function new( string name = "mhpmcounter23_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter23_field = uvm_reg_field::type_id::create("mhpmcounter23_field");
    mhpmcounter23_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter23_reg


//------------------------------------------------------------------------------
// mhpmcounter24 (0xb18) - mhpmcounter24
//------------------------------------------------------------------------------
class mhpmcounter24_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter24_reg )

  rand uvm_reg_field mhpmcounter24_field;

  function new( string name = "mhpmcounter24_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter24_field = uvm_reg_field::type_id::create("mhpmcounter24_field");
    mhpmcounter24_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter24_reg


//------------------------------------------------------------------------------
// mhpmcounter25 (0xb19) - mhpmcounter25
//------------------------------------------------------------------------------
class mhpmcounter25_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter25_reg )

  rand uvm_reg_field mhpmcounter25_field;

  function new( string name = "mhpmcounter25_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter25_field = uvm_reg_field::type_id::create("mhpmcounter25_field");
    mhpmcounter25_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter25_reg


//------------------------------------------------------------------------------
// mhpmcounter26 (0xb1a) - mhpmcounter26
//------------------------------------------------------------------------------
class mhpmcounter26_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter26_reg )

  rand uvm_reg_field mhpmcounter26_field;

  function new( string name = "mhpmcounter26_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter26_field = uvm_reg_field::type_id::create("mhpmcounter26_field");
    mhpmcounter26_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter26_reg


//------------------------------------------------------------------------------
// mhpmcounter27 (0xb1b) - mhpmcounter27
//------------------------------------------------------------------------------
class mhpmcounter27_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter27_reg )

  rand uvm_reg_field mhpmcounter27_field;

  function new( string name = "mhpmcounter27_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter27_field = uvm_reg_field::type_id::create("mhpmcounter27_field");
    mhpmcounter27_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter27_reg


//------------------------------------------------------------------------------
// mhpmcounter28 (0xb1c) - mhpmcounter28
//------------------------------------------------------------------------------
class mhpmcounter28_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter28_reg )

  rand uvm_reg_field mhpmcounter28_field;

  function new( string name = "mhpmcounter28_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter28_field = uvm_reg_field::type_id::create("mhpmcounter28_field");
    mhpmcounter28_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter28_reg


//------------------------------------------------------------------------------
// mhpmcounter29 (0xb1d) - mhpmcounter29
//------------------------------------------------------------------------------
class mhpmcounter29_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter29_reg )

  rand uvm_reg_field mhpmcounter29_field;

  function new( string name = "mhpmcounter29_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter29_field = uvm_reg_field::type_id::create("mhpmcounter29_field");
    mhpmcounter29_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter29_reg


//------------------------------------------------------------------------------
// mhpmcounter30 (0xb1e) - mhpmcounter30
//------------------------------------------------------------------------------
class mhpmcounter30_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter30_reg )

  rand uvm_reg_field mhpmcounter30_field;

  function new( string name = "mhpmcounter30_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter30_field = uvm_reg_field::type_id::create("mhpmcounter30_field");
    mhpmcounter30_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter30_reg


//------------------------------------------------------------------------------
// mhpmcounter31 (0xb1f) - mhpmcounter31
//------------------------------------------------------------------------------
class mhpmcounter31_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter31_reg )

  rand uvm_reg_field mhpmcounter31_field;

  function new( string name = "mhpmcounter31_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter31_field = uvm_reg_field::type_id::create("mhpmcounter31_field");
    mhpmcounter31_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter31_reg


//------------------------------------------------------------------------------
// mvendorid (0xf11) - mvendorid
//------------------------------------------------------------------------------
class mvendorid_reg extends uvm_reg;
  `uvm_object_utils( mvendorid_reg )

  rand uvm_reg_field mvendorid_field;

  function new( string name = "mvendorid_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mvendorid_field = uvm_reg_field::type_id::create("mvendorid_field");
    mvendorid_field.configure( .parent(this),
                            .size(32),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mvendorid_reg


//------------------------------------------------------------------------------
// marchid (0xf12) - marchid
//------------------------------------------------------------------------------
class marchid_reg extends uvm_reg;
  `uvm_object_utils( marchid_reg )

  rand uvm_reg_field marchid_field;

  function new( string name = "marchid_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    marchid_field = uvm_reg_field::type_id::create("marchid_field");
    marchid_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : marchid_reg


//------------------------------------------------------------------------------
// mimpid (0xf13) - mimpid
//------------------------------------------------------------------------------
class mimpid_reg extends uvm_reg;
  `uvm_object_utils( mimpid_reg )

  rand uvm_reg_field mimpid_field;

  function new( string name = "mimpid_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mimpid_field = uvm_reg_field::type_id::create("mimpid_field");
    mimpid_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mimpid_reg


//------------------------------------------------------------------------------
// mhartid (0xf14) - mhartid
//------------------------------------------------------------------------------
class mhartid_reg extends uvm_reg;
  `uvm_object_utils( mhartid_reg )

  rand uvm_reg_field mhartid_field;

  function new( string name = "mhartid_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhartid_field = uvm_reg_field::type_id::create("mhartid_field");
    mhartid_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhartid_reg


//------------------------------------------------------------------------------
// mconfigptr (0xf15) - mconfigptr
//------------------------------------------------------------------------------
class mconfigptr_reg extends uvm_reg;
  `uvm_object_utils( mconfigptr_reg )

  rand uvm_reg_field mconfigptr_field;

  function new( string name = "mconfigptr_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mconfigptr_field = uvm_reg_field::type_id::create("mconfigptr_field");
    mconfigptr_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mconfigptr_reg
