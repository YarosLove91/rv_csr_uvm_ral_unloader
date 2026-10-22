//------------------------------------------------------------------------------
// mcounteren (0x306) - mcounteren
//------------------------------------------------------------------------------
class mcounteren_reg extends uvm_reg;
  `uvm_object_utils( mcounteren_reg )

  rand uvm_reg_field mcounteren_field;

  function new( string name = "mcounteren_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcounteren_field = uvm_reg_field::type_id::create("mcounteren_field");
    mcounteren_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : mcounteren_reg
