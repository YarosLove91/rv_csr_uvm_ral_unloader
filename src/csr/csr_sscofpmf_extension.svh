//------------------------------------------------------------------------------
// scountovf (0xda0) - scountovf
//------------------------------------------------------------------------------
class scountovf_reg extends uvm_reg;
  `uvm_object_utils( scountovf_reg )

  rand uvm_reg_field scountovf_field;

  function new( string name = "scountovf_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    scountovf_field = uvm_reg_field::type_id::create("scountovf_field");
    scountovf_field.configure( .parent(this),
                               .size(32),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : scountovf_reg
