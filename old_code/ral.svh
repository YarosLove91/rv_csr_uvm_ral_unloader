//------------------------------------------------------------------------------
// Class: jelly_bean_recipe_reg
//------------------------------------------------------------------------------

class jelly_bean_recipe_reg extends uvm_reg;
   `uvm_object_utils( jelly_bean_recipe_reg )

   rand uvm_reg_field flavor;
   rand uvm_reg_field color;
   rand uvm_reg_field sugar_free;
   rand uvm_reg_field sour;

   constraint flavor_color_con {
      flavor.value != jelly_bean_types::NO_FLAVOR;
      flavor.value == jelly_bean_types::APPLE
                   -> color.value != jelly_bean_types::BLUE;
      flavor.value == jelly_bean_types::BLUEBERRY
                   -> color.value == jelly_bean_types::BLUE;
      flavor.value <= jelly_bean_types::CHOCOLATE;
   }

   function new( string name = "jelly_bean_recipe_reg" );
      super.new( .name( name ), .n_bits( 7 ), .has_coverage( UVM_NO_COVERAGE ) );
   endfunction: new

   virtual function void build();
      flavor = uvm_reg_field::type_id::create( "flavor" );
      flavor.configure( .parent                 ( this ), 
                        .size                   ( 3    ), 
                        .lsb_pos                ( 0    ), 
                        .access                 ( "WO" ), 
                        .volatile               ( 0    ),
                        .reset                  ( 0    ), 
                        .has_reset              ( 1    ), 
                        .is_rand                ( 1    ), 
                        .individually_accessible( 1    ) );

      color = uvm_reg_field::type_id::create( "color" );
      color.configure( .parent                 ( this ), 
                       .size                   ( 2    ), 
                       .lsb_pos                ( 3    ), 
                       .access                 ( "WO" ), 
                       .volatile               ( 0    ),
                       .reset                  ( 0    ), 
                       .has_reset              ( 1    ), 
                       .is_rand                ( 1    ), 
                       .individually_accessible( 1    ) );

      sugar_free = uvm_reg_field::type_id::create( "sugar_free" );
      sugar_free.configure( .parent                 ( this ), 
                            .size                   ( 1    ), 
                            .lsb_pos                ( 5    ), 
                            .access                 ( "WO" ), 
                            .volatile               ( 0    ),
                            .reset                  ( 0    ), 
                            .has_reset              ( 1    ), 
                            .is_rand                ( 1    ), 
                            .individually_accessible( 1    ) );

      sour = uvm_reg_field::type_id::create( "sour" );
      sour.configure( .parent                 ( this ), 
                      .size                   ( 1    ), 
                      .lsb_pos                ( 6    ), 
                      .access                 ( "WO" ), 
                      .volatile               ( 0    ),
                      .reset                  ( 0    ), 
                      .has_reset              ( 1    ), 
                      .is_rand                ( 1    ), 
                      .individually_accessible( 1    ) );
   endfunction: build
endclass: jelly_bean_recipe_reg

//------------------------------------------------------------------------------
// Class: jelly_bean_taste_reg
//------------------------------------------------------------------------------

class jelly_bean_taste_reg extends uvm_reg;
   `uvm_object_utils( jelly_bean_taste_reg )

   rand uvm_reg_field taste;

   function new( string name = "jelly_bean_taste_reg" );
      super.new( .name( name ), .n_bits( 2 ), .has_coverage( UVM_NO_COVERAGE ) );
   endfunction: new


   virtual function void build();
      taste = uvm_reg_field::type_id::create( "taste" );
      taste.configure( .parent                 ( this ), 
                       .size                   ( 2    ), 
                       .lsb_pos                ( 0    ), 
                       .access                 ( "RO" ), 
                       .volatile               ( 1    ),
                       .reset                  ( 0    ), 
                       .has_reset              ( 1    ), 
                       .is_rand                ( 1    ), 
                       .individually_accessible( 1    ) );
   endfunction: build
endclass: jelly_bean_taste_reg

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
      mstatus_field.configure( .parent                 ( this ), 
                               .size                   ( 64   ), 
                               .lsb_pos                ( 0    ), 
                               .access                 ( "RW" ), 
                               .volatile               ( 1    ),
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
                              .volatile               ( 1    ),
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
                    .volatile               ( 1    ),
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
                      .volatile               ( 1    ),
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
                      .volatile               ( 1    ),
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
                      .volatile               ( 1    ),
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
                      .volatile               ( 1    ),
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
                      .volatile               ( 1    ),
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
                      .volatile               ( 1    ),
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
                        .volatile               ( 1    ),
                        .reset                  ( 0    ), 
                        .has_reset              ( 1    ), 
                        .is_rand                ( 1    ), 
                        .individually_accessible( 1    ) );
   endfunction: build
endclass: mie_reg

//------------------------------------------------------------------------------
// Class: jelly_bean_reg_block
//------------------------------------------------------------------------------

class jelly_bean_reg_block extends uvm_reg_block;
   `uvm_object_utils( jelly_bean_reg_block )

   rand jelly_bean_recipe_reg jb_recipe_reg;
   rand jelly_bean_taste_reg  jb_taste_reg;
   rand mstatus_reg           mstatus;
   rand mcause_reg            mcause;
   rand mepc_reg              mepc;
   rand mie_reg               mie;
   uvm_reg_map                reg_map;

   function new( string name = "jelly_bean_reg_block" );
      super.new( .name( name ), .has_coverage( UVM_NO_COVERAGE ) );
   endfunction: new

   virtual function void build();
      jb_recipe_reg = jelly_bean_recipe_reg::type_id::create( "jb_recipe_reg" );
      jb_recipe_reg.configure( .blk_parent( this ) );
      jb_recipe_reg.build();

      jb_taste_reg = jelly_bean_taste_reg::type_id::create( "jb_taste_reg" );
      jb_taste_reg.configure( .blk_parent( this ) );
      jb_taste_reg.build();

      mstatus = mstatus_reg::type_id::create( "mstatus" );
      mstatus.configure( .blk_parent( this ) );
      mstatus.build();

      mcause = mcause_reg::type_id::create( "mcause" );
      mcause.configure( .blk_parent( this ) );
      mcause.build();

      mepc = mepc_reg::type_id::create( "mepc" );
      mepc.configure( .blk_parent( this ) );
      mepc.build();

      mie = mie_reg::type_id::create( "mie" );
      mie.configure( .blk_parent( this ) );
      mie.build();

      reg_map = create_map( .name( "reg_map" ), .base_addr( 8'h00 ), 
                            .n_bytes( 8 ), .endian( UVM_LITTLE_ENDIAN ) );
      reg_map.add_reg( .rg( jb_recipe_reg ), .offset( 8'h00 ), .rights( "WO" ) );
      reg_map.add_reg( .rg( jb_taste_reg  ), .offset( 8'h01 ), .rights( "RO" ) );
      reg_map.add_reg( .rg( mstatus       ), .offset( 12'h300 ), .rights( "RW" ) );
      reg_map.add_reg( .rg( mie           ), .offset( 12'h304 ), .rights( "RW" ) );
      reg_map.add_reg( .rg( mepc          ), .offset( 12'h341 ), .rights( "RW" ) );
      reg_map.add_reg( .rg( mcause        ), .offset( 12'h342 ), .rights( "RW" ) );
      lock_model(); // finalize the address mapping
   endfunction: build

endclass: jelly_bean_reg_block   

//------------------------------------------------------------------------------
// Class: jelly_bean_reg_adapter
//------------------------------------------------------------------------------

class jelly_bean_reg_adapter extends uvm_reg_adapter;
   `uvm_object_utils( jelly_bean_reg_adapter )

   function new( string name = "" );
      super.new( name );
      supports_byte_enable = 0;
      provides_responses   = 0;
   endfunction: new

   virtual function uvm_sequence_item reg2bus( const ref uvm_reg_bus_op rw );
      jelly_bean_transaction jb_tx 
        = jelly_bean_transaction::type_id::create("jb_tx");

      if ( rw.kind == UVM_READ )       jb_tx.command = jelly_bean_types::READ;
      else if ( rw.kind == UVM_WRITE ) jb_tx.command = jelly_bean_types::WRITE;
      else                             jb_tx.command = jelly_bean_types::NO_OP;
      if ( rw.kind == UVM_WRITE )
        { jb_tx.sour, jb_tx.sugar_free, jb_tx.color, jb_tx.flavor } = rw.data;
      return jb_tx;
   endfunction: reg2bus

   virtual function void bus2reg( uvm_sequence_item bus_item,
                                  ref uvm_reg_bus_op rw );
      jelly_bean_transaction jb_tx;

      if ( ! $cast( jb_tx, bus_item ) ) begin
         `uvm_fatal( get_name(),
                     "bus_item is not of the jelly_bean_transaction type." )
         return;
      end

      rw.kind = ( jb_tx.command == jelly_bean_types::READ ) ? UVM_READ : UVM_WRITE;
      if ( jb_tx.command == jelly_bean_types::READ )
        rw.data = jb_tx.taste;
      else if ( jb_tx.command == jelly_bean_types::WRITE )
        rw.data = { jb_tx.sour, jb_tx.sugar_free, jb_tx.color, jb_tx.flavor };
      rw.status = UVM_IS_OK;
   endfunction: bus2reg
endclass: jelly_bean_reg_adapter

//------------------------------------------------------------------------------
// jelly_bean_reg_predictor
//------------------------------------------------------------------------------

typedef uvm_reg_predictor#( jelly_bean_transaction ) jelly_bean_reg_predictor;

//==============================================================================
// Copyright (c) 2011-2015 ClueLogic, LLC
// http://cluelogic.com/
//==============================================================================