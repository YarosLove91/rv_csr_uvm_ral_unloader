//------------------------------------------------------------------------------
// sstatus (0x100) - sstatus
//------------------------------------------------------------------------------
class sstatus_reg extends uvm_reg;
  `uvm_object_utils( sstatus_reg )

  rand uvm_reg_field sstatus_field;

  function new( string name = "sstatus_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sstatus_field = uvm_reg_field::type_id::create("sstatus_field");
    sstatus_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h200000000),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sstatus_reg


//------------------------------------------------------------------------------
// sie (0x104) - sie
//------------------------------------------------------------------------------
class sie_reg extends uvm_reg;
  `uvm_object_utils( sie_reg )

  rand uvm_reg_field sie_field;

  function new( string name = "sie_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sie_field = uvm_reg_field::type_id::create("sie_field");
    sie_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sie_reg


//------------------------------------------------------------------------------
// stvec (0x105) - stvec
//------------------------------------------------------------------------------
class stvec_reg extends uvm_reg;
  `uvm_object_utils( stvec_reg )

  rand uvm_reg_field stvec_field;

  function new( string name = "stvec_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    stvec_field = uvm_reg_field::type_id::create("stvec_field");
    stvec_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : stvec_reg


//------------------------------------------------------------------------------
// scounteren (0x106) - scounteren
//------------------------------------------------------------------------------
class scounteren_reg extends uvm_reg;
  `uvm_object_utils( scounteren_reg )

  rand uvm_reg_field scounteren_field;

  function new( string name = "scounteren_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    scounteren_field = uvm_reg_field::type_id::create("scounteren_field");
    scounteren_field.configure( .parent(this),
                            .size(32),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : scounteren_reg


//------------------------------------------------------------------------------
// senvcfg (0x10a) - senvcfg
//------------------------------------------------------------------------------
class senvcfg_reg extends uvm_reg;
  `uvm_object_utils( senvcfg_reg )

  rand uvm_reg_field senvcfg_field;

  function new( string name = "senvcfg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    senvcfg_field = uvm_reg_field::type_id::create("senvcfg_field");
    senvcfg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : senvcfg_reg


//------------------------------------------------------------------------------
// sscratch (0x140) - sscratch
//------------------------------------------------------------------------------
class sscratch_reg extends uvm_reg;
  `uvm_object_utils( sscratch_reg )

  rand uvm_reg_field sscratch_field;

  function new( string name = "sscratch_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sscratch_field = uvm_reg_field::type_id::create("sscratch_field");
    sscratch_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sscratch_reg


//------------------------------------------------------------------------------
// sepc (0x141) - sepc
//------------------------------------------------------------------------------
class sepc_reg extends uvm_reg;
  `uvm_object_utils( sepc_reg )

  rand uvm_reg_field sepc_field;

  function new( string name = "sepc_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sepc_field = uvm_reg_field::type_id::create("sepc_field");
    sepc_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sepc_reg


//------------------------------------------------------------------------------
// scause (0x142) - scause
//------------------------------------------------------------------------------
class scause_reg extends uvm_reg;
  `uvm_object_utils( scause_reg )

  rand uvm_reg_field scause_field;

  function new( string name = "scause_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    scause_field = uvm_reg_field::type_id::create("scause_field");
    scause_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : scause_reg


//------------------------------------------------------------------------------
// stval (0x143) - stval
//------------------------------------------------------------------------------
class stval_reg extends uvm_reg;
  `uvm_object_utils( stval_reg )

  rand uvm_reg_field stval_field;

  function new( string name = "stval_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    stval_field = uvm_reg_field::type_id::create("stval_field");
    stval_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : stval_reg


//------------------------------------------------------------------------------
// sip (0x144) - sip
//------------------------------------------------------------------------------
class sip_reg extends uvm_reg;
  `uvm_object_utils( sip_reg )

  rand uvm_reg_field sip_field;

  function new( string name = "sip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    sip_field = uvm_reg_field::type_id::create("sip_field");
    sip_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : sip_reg


//------------------------------------------------------------------------------
// satp (0x180) - satp
//------------------------------------------------------------------------------
class satp_reg extends uvm_reg;
  `uvm_object_utils( satp_reg )

  rand uvm_reg_field satp_field;

  function new( string name = "satp_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    satp_field = uvm_reg_field::type_id::create("satp_field");
    satp_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : satp_reg


//------------------------------------------------------------------------------
// medeleg (0x302) - medeleg
//------------------------------------------------------------------------------
class medeleg_reg extends uvm_reg;
  `uvm_object_utils( medeleg_reg )

  rand uvm_reg_field medeleg_field;

  function new( string name = "medeleg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    medeleg_field = uvm_reg_field::type_id::create("medeleg_field");
    medeleg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : medeleg_reg


//------------------------------------------------------------------------------
// scontext (0x5a8) - scontext
//------------------------------------------------------------------------------
class scontext_reg extends uvm_reg;
  `uvm_object_utils( scontext_reg )

  rand uvm_reg_field scontext_field;

  function new( string name = "scontext_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    scontext_field = uvm_reg_field::type_id::create("scontext_field");
    scontext_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : scontext_reg


//------------------------------------------------------------------------------
// mscontext (0x7aa) - mscontext
//------------------------------------------------------------------------------
class mscontext_reg extends uvm_reg;
  `uvm_object_utils( mscontext_reg )

  rand uvm_reg_field mscontext_field;

  function new( string name = "mscontext_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mscontext_field = uvm_reg_field::type_id::create("mscontext_field");
    mscontext_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mscontext_reg
