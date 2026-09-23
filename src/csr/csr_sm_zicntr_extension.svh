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
