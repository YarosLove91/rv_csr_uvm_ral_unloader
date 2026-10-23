//------------------------------------------------------------------------------
// vsiselect (0x250) - vsiselect
//------------------------------------------------------------------------------
class vsiselect_reg extends uvm_reg;
  `uvm_object_utils( vsiselect_reg )

  rand uvm_reg_field vsiselect_field;

  function new( string name = "vsiselect_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsiselect_field = uvm_reg_field::type_id::create("vsiselect_field");
    vsiselect_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : vsiselect_reg


//------------------------------------------------------------------------------
// vsireg (0x251) - vsireg
//------------------------------------------------------------------------------
class vsireg_reg extends uvm_reg;
  `uvm_object_utils( vsireg_reg )

  rand uvm_reg_field vsireg_field;

  function new( string name = "vsireg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsireg_field = uvm_reg_field::type_id::create("vsireg_field");
    vsireg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : vsireg_reg


//------------------------------------------------------------------------------
// vsireg2 (0x252) - vsireg2
//------------------------------------------------------------------------------
class vsireg2_reg extends uvm_reg;
  `uvm_object_utils( vsireg2_reg )

  rand uvm_reg_field vsireg2_field;

  function new( string name = "vsireg2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsireg2_field = uvm_reg_field::type_id::create("vsireg2_field");
    vsireg2_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : vsireg2_reg


//------------------------------------------------------------------------------
// vsireg3 (0x253) - vsireg3
//------------------------------------------------------------------------------
class vsireg3_reg extends uvm_reg;
  `uvm_object_utils( vsireg3_reg )

  rand uvm_reg_field vsireg3_field;

  function new( string name = "vsireg3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsireg3_field = uvm_reg_field::type_id::create("vsireg3_field");
    vsireg3_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : vsireg3_reg


//------------------------------------------------------------------------------
// vsireg4 (0x255) - vsireg4
//------------------------------------------------------------------------------
class vsireg4_reg extends uvm_reg;
  `uvm_object_utils( vsireg4_reg )

  rand uvm_reg_field vsireg4_field;

  function new( string name = "vsireg4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsireg4_field = uvm_reg_field::type_id::create("vsireg4_field");
    vsireg4_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : vsireg4_reg


//------------------------------------------------------------------------------
// vsireg5 (0x256) - vsireg5
//------------------------------------------------------------------------------
class vsireg5_reg extends uvm_reg;
  `uvm_object_utils( vsireg5_reg )

  rand uvm_reg_field vsireg5_field;

  function new( string name = "vsireg5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsireg5_field = uvm_reg_field::type_id::create("vsireg5_field");
    vsireg5_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : vsireg5_reg


//------------------------------------------------------------------------------
// vsireg6 (0x257) - vsireg6
//------------------------------------------------------------------------------
class vsireg6_reg extends uvm_reg;
  `uvm_object_utils( vsireg6_reg )

  rand uvm_reg_field vsireg6_field;

  function new( string name = "vsireg6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsireg6_field = uvm_reg_field::type_id::create("vsireg6_field");
    vsireg6_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : vsireg6_reg


//------------------------------------------------------------------------------
// miselect (0x350) - miselect
//------------------------------------------------------------------------------
class miselect_reg extends uvm_reg;
  `uvm_object_utils( miselect_reg )

  rand uvm_reg_field miselect_field;

  function new( string name = "miselect_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    miselect_field = uvm_reg_field::type_id::create("miselect_field");
    miselect_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : miselect_reg


//------------------------------------------------------------------------------
// mireg (0x351) - mireg
//------------------------------------------------------------------------------
class mireg_reg extends uvm_reg;
  `uvm_object_utils( mireg_reg )

  rand uvm_reg_field mireg_field;

  function new( string name = "mireg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mireg_field = uvm_reg_field::type_id::create("mireg_field");
    mireg_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : mireg_reg


//------------------------------------------------------------------------------
// mireg2 (0x352) - mireg2
//------------------------------------------------------------------------------
class mireg2_reg extends uvm_reg;
  `uvm_object_utils( mireg2_reg )

  rand uvm_reg_field mireg2_field;

  function new( string name = "mireg2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mireg2_field = uvm_reg_field::type_id::create("mireg2_field");
    mireg2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mireg2_reg


//------------------------------------------------------------------------------
// mireg3 (0x353) - mireg3
//------------------------------------------------------------------------------
class mireg3_reg extends uvm_reg;
  `uvm_object_utils( mireg3_reg )

  rand uvm_reg_field mireg3_field;

  function new( string name = "mireg3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mireg3_field = uvm_reg_field::type_id::create("mireg3_field");
    mireg3_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mireg3_reg


//------------------------------------------------------------------------------
// mireg4 (0x355) - mireg4
//------------------------------------------------------------------------------
class mireg4_reg extends uvm_reg;
  `uvm_object_utils( mireg4_reg )

  rand uvm_reg_field mireg4_field;

  function new( string name = "mireg4_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mireg4_field = uvm_reg_field::type_id::create("mireg4_field");
    mireg4_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mireg4_reg


//------------------------------------------------------------------------------
// mireg5 (0x356) - mireg5
//------------------------------------------------------------------------------
class mireg5_reg extends uvm_reg;
  `uvm_object_utils( mireg5_reg )

  rand uvm_reg_field mireg5_field;

  function new( string name = "mireg5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mireg5_field = uvm_reg_field::type_id::create("mireg5_field");
    mireg5_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mireg5_reg


//------------------------------------------------------------------------------
// mireg6 (0x357) - mireg6
//------------------------------------------------------------------------------
class mireg6_reg extends uvm_reg;
  `uvm_object_utils( mireg6_reg )

  rand uvm_reg_field mireg6_field;

  function new( string name = "mireg6_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mireg6_field = uvm_reg_field::type_id::create("mireg6_field");
    mireg6_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mireg6_reg
