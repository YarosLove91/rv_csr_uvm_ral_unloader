// reg_pkg.sv

class ral_control_reg extends uvm_reg;
  rand uvm_reg_field ctrl_en;
  rand uvm_reg_field parity_en;
  rand uvm_reg_field dbg_en;
  rand uvm_reg_field mod_en;
  
  `uvm_object_utils(ral_control_reg)
  function new(string name = "ral_control_reg");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction
  
  virtual function void build();
    ctrl_en = uvm_reg_field::type_id::create("ctrl_en");
    parity_en = uvm_reg_field::type_id::create("parity_en");
    dbg_en = uvm_reg_field::type_id::create("dbg_en");
    mod_en = uvm_reg_field::type_id::create("mod_en");
    
    ctrl_en.configure     (this, 29, 3, "RW", 0, 1'b0, 1, 1, 0);
    parity_en.configure(this,  1, 2, "RW", 0, 1'b1, 1, 1, 0);
    dbg_en.configure   (this,  1, 1, "RW", 0, 1'b0, 1, 1, 0);
    mod_en.configure   (this,  1, 0, "RW", 0, 1'b1, 1, 1, 0);
  endfunction
endclass

//----------------------------------------------------------------------

class ral_intr_sts_reg extends uvm_reg;
  rand uvm_reg_field misc_err;
  rand uvm_reg_field r_axi_err;
  rand uvm_reg_field w_axi_err;
  
  `uvm_object_utils(ral_intr_sts_reg)
  function new(string name = "ral_intr_sts_reg");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction
  
  virtual function void build();
    misc_err = uvm_reg_field::type_id::create("misc_err");
    r_axi_err = uvm_reg_field::type_id::create("r_axi_err");
    w_axi_err = uvm_reg_field::type_id::create("w_axi_err");
    
    misc_err.configure        (this, 30, 2, "RW", 0, 1'b0, 1, 1, 0);
    r_axi_err.configure   (this,  1, 1, "W1C", 0, 1'b0, 1, 1, 0);
    w_axi_err.configure   (this,  1, 0, "W1C", 0, 1'b0, 1, 1, 0);
  endfunction
endclass

//----------------------------------------------------------------------

class ral_intr_msk_reg extends uvm_reg;
  rand uvm_reg_field err_msk;
  rand uvm_reg_field r_axi_err_msk;
  rand uvm_reg_field w_axi_err_msk;
  
  `uvm_object_utils(ral_intr_msk_reg)
  function new(string name = "ral_intr_msk_reg");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction
  
  virtual function void build();
    err_msk = uvm_reg_field::type_id::create("err_msk");
    r_axi_err_msk = uvm_reg_field::type_id::create("r_axi_err_msk");
    w_axi_err_msk = uvm_reg_field::type_id::create("w_axi_err_msk");
    
    err_msk.configure       (this, 30, 2, "RW", 0, 1'b0, 1, 1, 0);
    r_axi_err_msk.configure (this,  1, 1, "RW", 0, 1'b0, 1, 1, 0);
    w_axi_err_msk.configure (this,  1, 0, "RW", 0, 1'b1, 1, 1, 0);
  endfunction
endclass

//----------------------------------------------------------------------

class module_reg extends uvm_reg_block;
  rand ral_control_reg  control_reg;
  rand ral_intr_sts_reg intr_sts_reg;
  rand ral_intr_msk_reg intr_msk_reg;

  `uvm_object_utils(module_reg)
  function new(string name = "module_reg");
    super.new(name);
  endfunction
  
  virtual function void build();
    control_reg = ral_control_reg::type_id::create("control_reg");
    control_reg.configure(this, null);
    control_reg.build();
    
    intr_sts_reg = ral_intr_sts_reg::type_id::create("intr_sts_reg");
    intr_sts_reg.configure(this, null);
    intr_sts_reg.build();
    
    intr_msk_reg = ral_intr_msk_reg::type_id::create("intr_msk_reg");
    intr_msk_reg.configure(this, null);
    intr_msk_reg.build();
    
    default_map = create_map("", `UVM_REG_ADDR_WIDTH'h0, 4, UVM_LITTLE_ENDIAN, 1);
    
    this.default_map.add_reg(control_reg,  `UVM_REG_ADDR_WIDTH'h0, "RW");
    this.default_map.add_reg(intr_sts_reg, `UVM_REG_ADDR_WIDTH'h4, "RW");
    this.default_map.add_reg(intr_msk_reg, `UVM_REG_ADDR_WIDTH'h8, "RW");
  endfunction
endclass

//----------------------------------------------------------------------
//----------------------------------------------------------------------

// Machine reg
//------------------------------------------------------------------------------
// Class: mstatus_reg - Machine Status Register (0x300)
// Note: MXLEN = 64 for RVA23U64 profile (UXLEN = 64)
//------------------------------------------------------------------------------

class mstatus_reg extends uvm_reg;
  `uvm_object_utils( mstatus_reg )

  rand uvm_reg_field mstatus_field;

  function new( string name = "mstatus_reg" );
      super.new( .name( name ), .n_bits( 64 ), .has_coverage( UVM_NO_COVERAGE ) );
  endfunction: new

  virtual function void build();
      mstatus_field = uvm_reg_field::type_id::create( "mstatus_field" );
      mstatus_field.configure(.parent                 ( this ), 
                              .size                   ( 64   ), 
                              .lsb_pos                ( 0    ), 
                              .access                 ( "RW" ), 
                              .volatile               ( 0    ),
                              .reset                  ( 0    ), 
                              .has_reset              ( 1    ), 
                              .is_rand                ( 1    ), 
                              .individually_accessible( 1    ) );
   endfunction: build
endclass: mstatus_reg

//------------------------------------------------------------------------------
// Class: mcause_reg - Machine Cause Register (0x342)
// Note: MXLEN = 64 for RVA23U64 profile (UXLEN = 64)
//------------------------------------------------------------------------------

class mcause_reg extends uvm_reg;
  `uvm_object_utils( mcause_reg )

  rand uvm_reg_field mcause_field;

  function new( string name = "mcause_reg" );
      super.new( .name( name ), .n_bits( 64 ), .has_coverage( UVM_NO_COVERAGE ) );
  endfunction: new

  virtual function void build();
      mcause_field = uvm_reg_field::type_id::create( "mcause_field" );
      mcause_field.configure( .parent                 ( this ), 
                              .size                   ( 64   ), 
                              .lsb_pos                ( 0    ), 
                              .access                 ( "RW" ), 
                              .volatile               ( 0    ),
                              .reset                  ( 0    ), 
                              .has_reset              ( 1    ), 
                              .is_rand                ( 1    ), 
                              .individually_accessible( 1    ) );
  endfunction: build
endclass: mcause_reg

//------------------------------------------------------------------------------
// Class: mepc_reg - Machine Exception Program Counter (0x341)
// Note: MXLEN = 64 for RVA23U64 profile (UXLEN = 64)
//------------------------------------------------------------------------------

class mepc_reg extends uvm_reg;
  `uvm_object_utils( mepc_reg )

  rand uvm_reg_field pc;

   function new( string name = "mepc_reg" );
      super.new( .name( name ), .n_bits( 64 ), .has_coverage( UVM_NO_COVERAGE ) );
   endfunction: new

   virtual function void build();
      pc = uvm_reg_field::type_id::create( "pc" );
      pc.configure( .parent                 ( this ), 
                    .size                   ( 64   ), 
                    .lsb_pos                ( 0    ), 
                    .access                 ( "RW" ), 
                    .volatile               ( 0    ),
                    .reset                  ( 0    ), 
                    .has_reset              ( 1    ), 
                    .is_rand                ( 1    ), 
                    .individually_accessible( 1    ) );
   endfunction: build
endclass: mepc_reg

//------------------------------------------------------------------------------
// Class: mie_reg - Machine Interrupt Enable (0x304)
// Note: MXLEN = 64 for RVA23U64 profile (UXLEN = 64)
//------------------------------------------------------------------------------

class mie_reg extends uvm_reg;
  `uvm_object_utils( mie_reg )

  rand uvm_reg_field ssie;    // Supervisor Software Interrupt Enable (bit 1)
  rand uvm_reg_field msie;    // Machine Software Interrupt Enable (bit 3)
  rand uvm_reg_field stie;    // Supervisor Timer Interrupt Enable (bit 5)
  rand uvm_reg_field mtie;    // Machine Timer Interrupt Enable (bit 7)
  rand uvm_reg_field seie;    // Supervisor External Interrupt Enable (bit 9)
  rand uvm_reg_field meie;    // Machine External Interrupt Enable (bit 11)
  rand uvm_reg_field lcofie;  // Local Counter Overflow Interrupt Enable (bit 13)

  function new( string name = "mie_reg" );
    super.new( .name( name ), .n_bits( 64 ), .has_coverage( UVM_NO_COVERAGE ) );
  endfunction: new

  virtual function void build();
      // Supervisor Software Interrupt Enable (bit 1)
      ssie = uvm_reg_field::type_id::create( "ssie" );
      ssie.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 1    ), 
                      .access                 ( "RW" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );

      // Machine Software Interrupt Enable (bit 3)
      msie = uvm_reg_field::type_id::create( "msie" );
      msie.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 3    ), 
                      .access                 ( "RW" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );

      // Supervisor Timer Interrupt Enable (bit 5)
      stie = uvm_reg_field::type_id::create( "stie" );
      stie.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 5    ), 
                      .access                 ( "RW" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );

      // Machine Timer Interrupt Enable (bit 7)
      mtie = uvm_reg_field::type_id::create( "mtie" );
      mtie.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 7    ), 
                      .access                 ( "RW" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );

      // Supervisor External Interrupt Enable (bit 9)
      seie = uvm_reg_field::type_id::create( "seie" );
      seie.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 9    ), 
                      .access                 ( "RW" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );

      // Machine External Interrupt Enable (bit 11)
      meie = uvm_reg_field::type_id::create( "meie" );
      meie.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 11   ), 
                      .access                 ( "RW" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );

      // Local Counter Overflow Interrupt Enable (bit 13)
      lcofie = uvm_reg_field::type_id::create( "lcofie" );
      lcofie.configure( .parent                 ( this ), 
                        .size                   ( 1    ), 
                        .lsb_pos                ( 13   ), 
                        .access                 ( "RW" ), 
                        .volatile               ( 0    ),
                        .reset                  ( 0    ), 
                        .has_reset              ( 1    ), 
                        .is_rand                ( 1    ), 
                        .individually_accessible( 1    ) );
  endfunction: build
endclass: mie_reg

// Top Level class: SFR Reg Model
class RegModel_SFR extends uvm_reg_block;
  rand module_reg mod_reg;
  
  // Machine reg
  rand mstatus_reg           mstatus;
  rand mcause_reg            mcause;
  rand mepc_reg              mepc;
  rand mie_reg               mie;

  uvm_reg_map axi_map;
  uvm_reg_map csr_map;

  `uvm_object_utils(RegModel_SFR)
  
  function new(string name = "RegModel_SFR");
    super.new(name, .has_coverage(UVM_NO_COVERAGE));
  endfunction : new
  
  virtual function build_machine_reg();
    mstatus = mstatus_reg::type_id::create("mstatus");
    mstatus.configure(.blk_parent(this));
    mstatus.build();

    mcause = mcause_reg::type_id::create( "mcause" );
    mcause.configure(.blk_parent(this));
    mcause.build();

    mepc = mepc_reg::type_id::create("mepc");
    mepc.configure(.blk_parent( this ));
    mepc.build();

    mie = mie_reg::type_id::create( "mie" );
    mie.configure( .blk_parent( this ) );
    mie.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(mstatus, 12'h300, "RW");
    csr_map.add_reg(mie,     12'h304, "RW");
    csr_map.add_reg(mepc,    12'h341, "RW");
    csr_map.add_reg(mcause,  12'h342, "RW");
  endfunction : build_machine_reg

  virtual function void build();
    default_map = create_map("axi_map", 'h0, 4, UVM_LITTLE_ENDIAN, 1);
    mod_reg = module_reg::type_id::create("mod_reg");
    mod_reg.configure(this);
    mod_reg.build();
    default_map.add_submap(this.mod_reg.default_map, 0);

    build_machine_reg();
  endfunction : build
endclass : RegModel_SFR