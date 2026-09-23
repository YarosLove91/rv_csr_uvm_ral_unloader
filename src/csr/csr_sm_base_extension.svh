//------------------------------------------------------------------------------
// mstatus (0x300) - mstatus
//------------------------------------------------------------------------------
class mstatus_reg extends uvm_reg;
  `uvm_object_utils( mstatus_reg )

  rand uvm_reg_field mstatus_field;

  function new( string name = "mstatus_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mstatus_field = uvm_reg_field::type_id::create("mstatus_field");
    mstatus_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mstatus_reg


//------------------------------------------------------------------------------
// misa (0x301) - misa
//------------------------------------------------------------------------------
class misa_reg extends uvm_reg;
  `uvm_object_utils( misa_reg )

  rand uvm_reg_field misa_field;

  function new( string name = "misa_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    misa_field = uvm_reg_field::type_id::create("misa_field");
    misa_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : misa_reg


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
// mideleg (0x303) - mideleg
//------------------------------------------------------------------------------
class mideleg_reg extends uvm_reg;
  `uvm_object_utils( mideleg_reg )

  rand uvm_reg_field mideleg_field;

  function new( string name = "mideleg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mideleg_field = uvm_reg_field::type_id::create("mideleg_field");
    mideleg_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mideleg_reg


//------------------------------------------------------------------------------
// mie (0x304) - mie
//------------------------------------------------------------------------------
class mie_reg extends uvm_reg;
  `uvm_object_utils( mie_reg )

  rand uvm_reg_field mie_field;

  function new( string name = "mie_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mie_field = uvm_reg_field::type_id::create("mie_field");
    mie_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mie_reg


//------------------------------------------------------------------------------
// mtvec (0x305) - mtvec
//------------------------------------------------------------------------------
class mtvec_reg extends uvm_reg;
  `uvm_object_utils( mtvec_reg )

  rand uvm_reg_field mtvec_field;

  function new( string name = "mtvec_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtvec_field = uvm_reg_field::type_id::create("mtvec_field");
    mtvec_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtvec_reg


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


//------------------------------------------------------------------------------
// mscratch (0x340) - mscratch
//------------------------------------------------------------------------------
class mscratch_reg extends uvm_reg;
  `uvm_object_utils( mscratch_reg )

  rand uvm_reg_field mscratch_field;

  function new( string name = "mscratch_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mscratch_field = uvm_reg_field::type_id::create("mscratch_field");
    mscratch_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mscratch_reg


//------------------------------------------------------------------------------
// mepc (0x341) - mepc
//------------------------------------------------------------------------------
class mepc_reg extends uvm_reg;
  `uvm_object_utils( mepc_reg )

  rand uvm_reg_field mepc_field;

  function new( string name = "mepc_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mepc_field = uvm_reg_field::type_id::create("mepc_field");
    mepc_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mepc_reg


//------------------------------------------------------------------------------
// mcause (0x342) - mcause
//------------------------------------------------------------------------------
class mcause_reg extends uvm_reg;
  `uvm_object_utils( mcause_reg )

  rand uvm_reg_field mcause_field;

  function new( string name = "mcause_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcause_field = uvm_reg_field::type_id::create("mcause_field");
    mcause_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mcause_reg


//------------------------------------------------------------------------------
// mtval (0x343) - mtval
//------------------------------------------------------------------------------
class mtval_reg extends uvm_reg;
  `uvm_object_utils( mtval_reg )

  rand uvm_reg_field mtval_field;

  function new( string name = "mtval_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtval_field = uvm_reg_field::type_id::create("mtval_field");
    mtval_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtval_reg


//------------------------------------------------------------------------------
// mip (0x344) - mip
//------------------------------------------------------------------------------
class mip_reg extends uvm_reg;
  `uvm_object_utils( mip_reg )

  rand uvm_reg_field mip_field;

  function new( string name = "mip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mip_field = uvm_reg_field::type_id::create("mip_field");
    mip_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mip_reg


//------------------------------------------------------------------------------
// mvendorid (0xf11) - mvendorid
//------------------------------------------------------------------------------
class mvendorid_reg extends uvm_reg;
  `uvm_object_utils( mvendorid_reg )

  rand uvm_reg_field mvendorid_field;

  function new( string name = "mvendorid_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mvendorid_field = uvm_reg_field::type_id::create("mvendorid_field");
    mvendorid_field.configure( .parent(this),
                            .size(32),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mvendorid_reg


//------------------------------------------------------------------------------
// marchid (0xf12) - marchid
//------------------------------------------------------------------------------
class marchid_reg extends uvm_reg;
  `uvm_object_utils( marchid_reg )

  rand uvm_reg_field marchid_field;

  function new( string name = "marchid_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    marchid_field = uvm_reg_field::type_id::create("marchid_field");
    marchid_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : marchid_reg


//------------------------------------------------------------------------------
// mimpid (0xf13) - mimpid
//------------------------------------------------------------------------------
class mimpid_reg extends uvm_reg;
  `uvm_object_utils( mimpid_reg )

  rand uvm_reg_field mimpid_field;

  function new( string name = "mimpid_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mimpid_field = uvm_reg_field::type_id::create("mimpid_field");
    mimpid_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mimpid_reg


//------------------------------------------------------------------------------
// mhartid (0xf14) - mhartid
//------------------------------------------------------------------------------
class mhartid_reg extends uvm_reg;
  `uvm_object_utils( mhartid_reg )

  rand uvm_reg_field mhartid_field;

  function new( string name = "mhartid_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhartid_field = uvm_reg_field::type_id::create("mhartid_field");
    mhartid_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mhartid_reg


//------------------------------------------------------------------------------
// mconfigptr (0xf15) - mconfigptr
//------------------------------------------------------------------------------
class mconfigptr_reg extends uvm_reg;
  `uvm_object_utils( mconfigptr_reg )

  rand uvm_reg_field mconfigptr_field;

  function new( string name = "mconfigptr_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mconfigptr_field = uvm_reg_field::type_id::create("mconfigptr_field");
    mconfigptr_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mconfigptr_reg
