//------------------------------------------------------------------------------
// csr_m_extension.svh
//
// Machine-mode CSR профиля RVA23.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// mstatus (0x300) - Machine Status
//------------------------------------------------------------------------------
class mstatus_reg extends uvm_reg;
  `uvm_object_utils( mstatus_reg )

  rand uvm_reg_field mstatus_field;

  function new( string name = "mstatus_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mstatus_field = uvm_reg_field::type_id::create("mstatus_field");
    mstatus_field.configure(.parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1));
  endfunction : build
endclass : mstatus_reg

//------------------------------------------------------------------------------
// mie (0x304) - Machine Interrupt Enable
//------------------------------------------------------------------------------
class mie_reg extends uvm_reg;
  `uvm_object_utils( mie_reg )

  rand uvm_reg_field ssie;
  rand uvm_reg_field msie;
  rand uvm_reg_field stie;
  rand uvm_reg_field mtie;
  rand uvm_reg_field seie;
  rand uvm_reg_field meie;
  rand uvm_reg_field lcofie;

  function new(string name = "mie_reg" );
    super.new(.name(name), 
              .n_bits(64), 
              .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    ssie = uvm_reg_field::type_id::create("ssie");
    ssie.configure (.parent(this),
                    .size(1),
                    .lsb_pos(1),
                    .access("RW"),
                    .volatile(0),
                    .reset(0),
                    .has_reset(1),
                    .is_rand(1),
                    .individually_accessible(1));

    msie = uvm_reg_field::type_id::create("msie");
    msie.configure (.parent(this),
                    .size(1),
                    .lsb_pos(3),
                    .access("RW"),
                    .volatile(0),
                    .reset(0),
                    .has_reset(1),
                    .is_rand(1),
                    .individually_accessible(1));

    stie = uvm_reg_field::type_id::create("stie");
    stie.configure (.parent(this),
                    .size(1),
                    .lsb_pos(5),
                    .access("RW"),
                    .volatile(0),
                    .reset(0),
                    .has_reset(1),
                    .is_rand(1),
                    .individually_accessible(1));

    mtie = uvm_reg_field::type_id::create("mtie");
    mtie.configure (.parent(this),
                    .size(1),
                    .lsb_pos(7),
                    .access("RW"),
                    .volatile(0),
                    .reset(0),
                    .has_reset(1),
                    .is_rand(1),
                    .individually_accessible(1));

    seie = uvm_reg_field::type_id::create("seie");
    seie.configure (.parent(this),
                    .size(1),
                    .lsb_pos(9),
                    .access("RW"),
                    .volatile(0),
                    .reset(0),
                    .has_reset(1),
                    .is_rand(1),
                    .individually_accessible(1));

    meie = uvm_reg_field::type_id::create("meie");
    meie.configure (.parent(this),
                    .size(1),
                    .lsb_pos(11),
                    .access("RW"),
                    .volatile(0),
                    .reset(0),
                    .has_reset(1),
                    .is_rand(1),
                    .individually_accessible(1));

    lcofie = uvm_reg_field::type_id::create("lcofie");
    lcofie.configure (.parent(this),
                      .size(1),
                      .lsb_pos(13),
                      .access("RW"),
                      .volatile(0),
                      .reset(0),
                      .has_reset(1),
                      .is_rand(1),
                      .individually_accessible(1));
  endfunction : build
endclass : mie_reg

//------------------------------------------------------------------------------
// mepc (0x341) - Machine Exception PC
//------------------------------------------------------------------------------
class mepc_reg extends uvm_reg;
  `uvm_object_utils( mepc_reg )

  rand uvm_reg_field pc;

  function new( string name = "mepc_reg" );
    super.new(.name(name), 
              .n_bits(64), 
              .has_coverage(UVM_NO_COVERAGE));
  endfunction : new

  virtual function void build();
    pc = uvm_reg_field::type_id::create("pc");
    pc.configure (.parent(this),
                  .size(64),
                  .lsb_pos(0),
                  .access("RW"),
                  .volatile(0),
                  .reset(0),
                  .has_reset(1),
                  .is_rand(1),
                  .individually_accessible(1) );
  endfunction : build
endclass : mepc_reg

//------------------------------------------------------------------------------
// mcause (0x342) - Machine Cause
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
                            .reset(0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mcause_reg