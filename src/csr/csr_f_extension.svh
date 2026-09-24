//------------------------------------------------------------------------------
// fflags (0x001) - fflags
//------------------------------------------------------------------------------
class fflags_reg extends uvm_reg;
  `uvm_object_utils( fflags_reg )

  rand uvm_reg_field fflags_field;

  function new( string name = "fflags_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    fflags_field = uvm_reg_field::type_id::create("fflags_field");
    fflags_field.configure( .parent(this),
                            .size(32),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : fflags_reg


//------------------------------------------------------------------------------
// frm (0x002) - frm
//------------------------------------------------------------------------------
class frm_reg extends uvm_reg;
  `uvm_object_utils( frm_reg )

  rand uvm_reg_field frm_field;

  function new( string name = "frm_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    frm_field = uvm_reg_field::type_id::create("frm_field");
    frm_field.configure( .parent(this),
                         .size(32),
                         .lsb_pos(0),
                         .access("RW"),
                         .volatile(0),
                         .reset(64'h0),
                         .has_reset(1),
                         .is_rand(1),
                         .individually_accessible(1) );
  endfunction : build
endclass : frm_reg


//------------------------------------------------------------------------------
// fcsr (0x003) - fcsr
//------------------------------------------------------------------------------
class fcsr_reg extends uvm_reg;
  `uvm_object_utils( fcsr_reg )

  rand uvm_reg_field fcsr_field;

  function new( string name = "fcsr_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    fcsr_field = uvm_reg_field::type_id::create("fcsr_field");
    fcsr_field.configure( .parent(this),
                          .size(32),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : fcsr_reg
