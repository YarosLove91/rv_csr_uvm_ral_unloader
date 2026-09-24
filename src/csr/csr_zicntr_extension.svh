//------------------------------------------------------------------------------
// cycle (0xc00) - cycle
//------------------------------------------------------------------------------
class cycle_reg extends uvm_reg;
  `uvm_object_utils( cycle_reg )

  rand uvm_reg_field cycle_field;

  function new( string name = "cycle_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    cycle_field = uvm_reg_field::type_id::create("cycle_field");
    cycle_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : cycle_reg


//------------------------------------------------------------------------------
// time (0xc01) - time
//------------------------------------------------------------------------------
class time_reg extends uvm_reg;
  `uvm_object_utils( time_reg )

  rand uvm_reg_field time_field;

  function new( string name = "time_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    time_field = uvm_reg_field::type_id::create("time_field");
    time_field.configure( .parent(this),
                          .size(64),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : time_reg


//------------------------------------------------------------------------------
// instret (0xc02) - instret
//------------------------------------------------------------------------------
class instret_reg extends uvm_reg;
  `uvm_object_utils( instret_reg )

  rand uvm_reg_field instret_field;

  function new( string name = "instret_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    instret_field = uvm_reg_field::type_id::create("instret_field");
    instret_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : instret_reg
