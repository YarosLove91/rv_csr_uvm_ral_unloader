//------------------------------------------------------------------------------
// stimecmp (0x14d) - stimecmp
//------------------------------------------------------------------------------
class stimecmp_reg extends uvm_reg;
  `uvm_object_utils( stimecmp_reg )

  rand uvm_reg_field stimecmp_field;

  function new( string name = "stimecmp_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    stimecmp_field = uvm_reg_field::type_id::create("stimecmp_field");
    stimecmp_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : stimecmp_reg
