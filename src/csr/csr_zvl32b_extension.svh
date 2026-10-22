//------------------------------------------------------------------------------
// vstart (0x008) - vstart
//------------------------------------------------------------------------------
class vstart_reg extends uvm_reg;
  `uvm_object_utils( vstart_reg )

  rand uvm_reg_field vstart_field;

  function new( string name = "vstart_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vstart_field = uvm_reg_field::type_id::create("vstart_field");
    vstart_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : vstart_reg


//------------------------------------------------------------------------------
// vxsat (0x009) - vxsat
//------------------------------------------------------------------------------
class vxsat_reg extends uvm_reg;
  `uvm_object_utils( vxsat_reg )

  rand uvm_reg_field vxsat_field;

  function new( string name = "vxsat_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vxsat_field = uvm_reg_field::type_id::create("vxsat_field");
    vxsat_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : vxsat_reg


//------------------------------------------------------------------------------
// vxrm (0x00a) - vxrm
//------------------------------------------------------------------------------
class vxrm_reg extends uvm_reg;
  `uvm_object_utils( vxrm_reg )

  rand uvm_reg_field vxrm_field;

  function new( string name = "vxrm_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vxrm_field = uvm_reg_field::type_id::create("vxrm_field");
    vxrm_field.configure( .parent(this),
                          .size(64),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : vxrm_reg


//------------------------------------------------------------------------------
// vcsr (0x00f) - vcsr
//------------------------------------------------------------------------------
class vcsr_reg extends uvm_reg;
  `uvm_object_utils( vcsr_reg )

  rand uvm_reg_field vcsr_field;

  function new( string name = "vcsr_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vcsr_field = uvm_reg_field::type_id::create("vcsr_field");
    vcsr_field.configure( .parent(this),
                          .size(64),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : vcsr_reg


//------------------------------------------------------------------------------
// vl (0xc20) - vl
//------------------------------------------------------------------------------
class vl_reg extends uvm_reg;
  `uvm_object_utils( vl_reg )

  rand uvm_reg_field vl_field;

  function new( string name = "vl_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vl_field = uvm_reg_field::type_id::create("vl_field");
    vl_field.configure( .parent(this),
                        .size(64),
                        .lsb_pos(0),
                        .access("RW"),
                        .volatile(0),
                        .reset(64'h0),
                        .has_reset(1),
                        .is_rand(1),
                        .individually_accessible(1) );
  endfunction : build
endclass : vl_reg


//------------------------------------------------------------------------------
// vtype (0xc21) - vtype
//------------------------------------------------------------------------------
class vtype_reg extends uvm_reg;
  `uvm_object_utils( vtype_reg )

  rand uvm_reg_field vtype_field;

  function new( string name = "vtype_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vtype_field = uvm_reg_field::type_id::create("vtype_field");
    vtype_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : vtype_reg


//------------------------------------------------------------------------------
// vlenb (0xc22) - vlenb
//------------------------------------------------------------------------------
class vlenb_reg extends uvm_reg;
  `uvm_object_utils( vlenb_reg )

  rand uvm_reg_field vlenb_field;

  function new( string name = "vlenb_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vlenb_field = uvm_reg_field::type_id::create("vlenb_field");
    vlenb_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : vlenb_reg
