//------------------------------------------------------------------------------
// sstateen0 (0x10c) - sstateen0
//------------------------------------------------------------------------------
class sstateen0_reg extends uvm_reg;
  `uvm_object_utils( sstateen0_reg )

  rand uvm_reg_field sstateen0_field;

  function new( string name = "sstateen0_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstateen0_field = uvm_reg_field::type_id::create("sstateen0_field");
    sstateen0_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sstateen0_reg


//------------------------------------------------------------------------------
// sstateen1 (0x10d) - sstateen1
//------------------------------------------------------------------------------
class sstateen1_reg extends uvm_reg;
  `uvm_object_utils( sstateen1_reg )

  rand uvm_reg_field sstateen1_field;

  function new( string name = "sstateen1_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstateen1_field = uvm_reg_field::type_id::create("sstateen1_field");
    sstateen1_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sstateen1_reg


//------------------------------------------------------------------------------
// sstateen2 (0x10e) - sstateen2
//------------------------------------------------------------------------------
class sstateen2_reg extends uvm_reg;
  `uvm_object_utils( sstateen2_reg )

  rand uvm_reg_field sstateen2_field;

  function new( string name = "sstateen2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstateen2_field = uvm_reg_field::type_id::create("sstateen2_field");
    sstateen2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sstateen2_reg


//------------------------------------------------------------------------------
// sstateen3 (0x10f) - sstateen3
//------------------------------------------------------------------------------
class sstateen3_reg extends uvm_reg;
  `uvm_object_utils( sstateen3_reg )

  rand uvm_reg_field sstateen3_field;

  function new( string name = "sstateen3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstateen3_field = uvm_reg_field::type_id::create("sstateen3_field");
    sstateen3_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sstateen3_reg
