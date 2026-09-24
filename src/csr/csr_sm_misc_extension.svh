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
// mtinst (0x34a) - mtinst
//------------------------------------------------------------------------------
class mtinst_reg extends uvm_reg;
  `uvm_object_utils( mtinst_reg )

  rand uvm_reg_field mtinst_field;

  function new( string name = "mtinst_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtinst_field = uvm_reg_field::type_id::create("mtinst_field");
    mtinst_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtinst_reg


//------------------------------------------------------------------------------
// mtval2 (0x34b) - mtval2
//------------------------------------------------------------------------------
class mtval2_reg extends uvm_reg;
  `uvm_object_utils( mtval2_reg )

  rand uvm_reg_field mtval2_field;

  function new( string name = "mtval2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtval2_field = uvm_reg_field::type_id::create("mtval2_field");
    mtval2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtval2_reg


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
// tselect (0x7a0) - tselect
//------------------------------------------------------------------------------
class tselect_reg extends uvm_reg;
  `uvm_object_utils( tselect_reg )

  rand uvm_reg_field tselect_field;

  function new( string name = "tselect_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    tselect_field = uvm_reg_field::type_id::create("tselect_field");
    tselect_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : tselect_reg


//------------------------------------------------------------------------------
// tdata1 (0x7a1) - tdata1
//------------------------------------------------------------------------------
class tdata1_reg extends uvm_reg;
  `uvm_object_utils( tdata1_reg )

  rand uvm_reg_field tdata1_field;

  function new( string name = "tdata1_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    tdata1_field = uvm_reg_field::type_id::create("tdata1_field");
    tdata1_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : tdata1_reg


//------------------------------------------------------------------------------
// tdata2 (0x7a2) - tdata2
//------------------------------------------------------------------------------
class tdata2_reg extends uvm_reg;
  `uvm_object_utils( tdata2_reg )

  rand uvm_reg_field tdata2_field;

  function new( string name = "tdata2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    tdata2_field = uvm_reg_field::type_id::create("tdata2_field");
    tdata2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : tdata2_reg


//------------------------------------------------------------------------------
// tdata3 (0x7a3) - tdata3
//------------------------------------------------------------------------------
class tdata3_reg extends uvm_reg;
  `uvm_object_utils( tdata3_reg )

  rand uvm_reg_field tdata3_field;

  function new( string name = "tdata3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    tdata3_field = uvm_reg_field::type_id::create("tdata3_field");
    tdata3_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : tdata3_reg


//------------------------------------------------------------------------------
// tinfo (0x7a4) - tinfo
//------------------------------------------------------------------------------
class tinfo_reg extends uvm_reg;
  `uvm_object_utils( tinfo_reg )

  rand uvm_reg_field tinfo_field;

  function new( string name = "tinfo_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    tinfo_field = uvm_reg_field::type_id::create("tinfo_field");
    tinfo_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : tinfo_reg


//------------------------------------------------------------------------------
// tcontrol (0x7a5) - tcontrol
//------------------------------------------------------------------------------
class tcontrol_reg extends uvm_reg;
  `uvm_object_utils( tcontrol_reg )

  rand uvm_reg_field tcontrol_field;

  function new( string name = "tcontrol_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    tcontrol_field = uvm_reg_field::type_id::create("tcontrol_field");
    tcontrol_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : tcontrol_reg


//------------------------------------------------------------------------------
// mcontext (0x7a8) - mcontext
//------------------------------------------------------------------------------
class mcontext_reg extends uvm_reg;
  `uvm_object_utils( mcontext_reg )

  rand uvm_reg_field mcontext_field;

  function new( string name = "mcontext_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcontext_field = uvm_reg_field::type_id::create("mcontext_field");
    mcontext_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mcontext_reg
