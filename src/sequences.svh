//------------------------------------------------------------------------------
// Class: jelly_bean_sequence
//------------------------------------------------------------------------------
   
class jelly_bean_sequence extends uvm_sequence#( jelly_bean_transaction );
   `uvm_object_utils( jelly_bean_sequence )

   function new( string name = "" );
      super.new( name );
   endfunction: new

   task body();
      jelly_bean_transaction jb_tx;
      jb_tx = jelly_bean_transaction::type_id::create( .name( "jb_tx" ) );
      start_item( jb_tx );
      jb_tx.flavor     = jelly_bean_types::APPLE;
      jb_tx.color      = jelly_bean_types::GREEN;
      jb_tx.sugar_free = 0;
      jb_tx.sour       = 1;
      finish_item(jb_tx);
   endtask: body
endclass: jelly_bean_sequence

//------------------------------------------------------------------------------
// Class: jelly_bean_reg_sequence
//------------------------------------------------------------------------------

class jelly_bean_reg_sequence extends uvm_reg_sequence;
   `uvm_object_utils( jelly_bean_reg_sequence )

   function new( string name = "" );
      super.new( name );
   endfunction: new

   virtual task body();
      jelly_bean_reg_block       jb_reg_block;
      jelly_bean_types::flavor_e flavor;
      jelly_bean_types::color_e  color;
      bit                        sugar_free;
      bit                        sour;
      uvm_status_e               status;
      uvm_reg_data_t             value;

      $cast( jb_reg_block, model );
      flavor     = jelly_bean_types::APPLE;
      color      = jelly_bean_types::GREEN;
      sugar_free = 0;
      sour       = 1;
      
      write_reg( jb_reg_block.jb_recipe_reg, status, { sour, sugar_free, color, flavor } );
      read_reg( jb_reg_block.jb_taste_reg, status, value );
   endtask: body
     
endclass: jelly_bean_reg_sequence

//------------------------------------------------------------------------------
// Class: mstatus_mcause_test_sequence
//------------------------------------------------------------------------------

class mstatus_mcause_test_sequence extends uvm_reg_sequence;
   `uvm_object_utils( mstatus_mcause_test_sequence )

   function new( string name = "" );
      super.new( name );
   endfunction: new

   virtual task body();
      jelly_bean_reg_block       jb_reg_block;
      uvm_status_e               status;
      uvm_reg_data_t             value;
      
      $cast( jb_reg_block, model );
      
      `uvm_info( get_name(), "Testing mstatus and mcause registers", UVM_LOW )
      
      // Test mstatus register
      `uvm_info( get_name(), "Testing mstatus register", UVM_LOW )
      
      // Write value to mstatus
      write_reg( jb_reg_block.mstatus, status, 64'h0000_0000_0000_0001 );
      `uvm_info( get_name(), $sformatf("mstatus write: status=%s", status), UVM_LOW )
      
      // Read back mstatus
      read_reg( jb_reg_block.mstatus, status, value );
      `uvm_info( get_name(), $sformatf("mstatus read: value=0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test mcause register
      `uvm_info( get_name(), "Testing mcause register", UVM_LOW )
      
      // Write value to mcause
      write_reg( jb_reg_block.mcause, status, 64'h0000_0000_0000_000D );
      `uvm_info( get_name(), $sformatf("mcause write: status=%s", status), UVM_LOW )
      
      // Read back mcause
      read_reg( jb_reg_block.mcause, status, value );
      `uvm_info( get_name(), $sformatf("mcause read: value=0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test multiple values
      `uvm_info( get_name(), "Testing multiple values", UVM_LOW )
      
      // Test mstatus with different values
      write_reg( jb_reg_block.mstatus, status, 64'h0000_0000_0000_0080 ); // MPIE bit
      read_reg( jb_reg_block.mstatus, status, value );
      `uvm_info( get_name(), $sformatf("mstatus (MPIE): value=0x%016h", value), UVM_LOW )
      
      write_reg( jb_reg_block.mstatus, status, 64'h0000_0000_0000_1800 ); // MPP bits
      read_reg( jb_reg_block.mstatus, status, value );
      `uvm_info( get_name(), $sformatf("mstatus (MPP): value=0x%016h", value), UVM_LOW )
      
      // Test mcause with interrupt bit
      write_reg( jb_reg_block.mcause, status, 64'h8000_0000_0000_0009 ); // Interrupt bit + MEI
      read_reg( jb_reg_block.mcause, status, value );
      `uvm_info( get_name(), $sformatf("mcause (Interrupt): value=0x%016h", value), UVM_LOW )
      
      `uvm_info( get_name(), "mstatus and mcause register tests completed successfully", UVM_LOW )
      
      // Print register information using UVM RAL methods
      `uvm_info( get_name(), "\n=== Register Information ===", UVM_LOW )
      `uvm_info( get_name(), $sformatf("mstatus register:\n%s", jb_reg_block.mstatus.sprint()), UVM_LOW )
      `uvm_info( get_name(), $sformatf("mcause register:\n%s", jb_reg_block.mcause.sprint()), UVM_LOW )
   endtask: body
     
endclass: mstatus_mcause_test_sequence

//------------------------------------------------------------------------------
// Class: mie_mepc_test_sequence - Test for registers with bit fields
//------------------------------------------------------------------------------

class mie_mepc_test_sequence extends uvm_reg_sequence;
   `uvm_object_utils( mie_mepc_test_sequence )

   function new( string name = "" );
      super.new( name );
   endfunction: new

   virtual task body();
      jelly_bean_reg_block       jb_reg_block;
      uvm_status_e               status;
      uvm_reg_data_t             value;
      
      $cast( jb_reg_block, model );
      
      `uvm_info( get_name(), "Testing mie and mepc registers with bit fields", UVM_LOW )
      
      // Test mie register - Machine Interrupt Enable
      `uvm_info( get_name(), "Testing mie register (bit fields)", UVM_LOW )
      
      // Test individual bit fields
      `uvm_info( get_name(), "Testing msie (Machine Software Interrupt Enable) - bit 3", UVM_LOW )
      jb_reg_block.mie.msie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("msie write: status=%s", status), UVM_LOW )
      jb_reg_block.mie.msie.read( status, value );
      `uvm_info( get_name(), $sformatf("msie read: value=%b, status=%s", value, status), UVM_LOW )
      
      `uvm_info( get_name(), "Testing mtie (Machine Timer Interrupt Enable) - bit 7", UVM_LOW )
      jb_reg_block.mie.mtie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("mtie write: status=%s", status), UVM_LOW )
      jb_reg_block.mie.mtie.read( status, value );
      `uvm_info( get_name(), $sformatf("mtie read: value=%b, status=%s", value, status), UVM_LOW )
      
      `uvm_info( get_name(), "Testing meie (Machine External Interrupt Enable) - bit 11", UVM_LOW )
      jb_reg_block.mie.meie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("meie write: status=%s", status), UVM_LOW )
      jb_reg_block.mie.meie.read( status, value );
      `uvm_info( get_name(), $sformatf("meie read: value=%b, status=%s", value, status), UVM_LOW )
      
      // Test multiple bits at once
      `uvm_info( get_name(), "Testing multiple interrupt enables at once", UVM_LOW )
      jb_reg_block.mie.write( status, 64'h0000_0000_0000_2A0A ); // MSIE(3), STIE(5), MEIE(11)
      `uvm_info( get_name(), $sformatf("mie write (multiple bits): status=%s", status), UVM_LOW )
      jb_reg_block.mie.read( status, value );
      `uvm_info( get_name(), $sformatf("mie read (multiple bits): value=0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test mepc register - Machine Exception Program Counter
      `uvm_info( get_name(), "Testing mepc register", UVM_LOW )
      
      // Test writing to mepc with different values
      `uvm_info( get_name(), "Testing mepc with aligned address (LSB=0)", UVM_LOW )
      jb_reg_block.mepc.write( status, 64'h0000_0000_8000_0000 );
      `uvm_info( get_name(), $sformatf("mepc write: status=%s", status), UVM_LOW )
      jb_reg_block.mepc.read( status, value );
      `uvm_info( get_name(), $sformatf("mepc read: value=0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test writing to mepc with unaligned address (LSB=1)
      `uvm_info( get_name(), "Testing mepc with unaligned address (LSB=1)", UVM_LOW )
      jb_reg_block.mepc.write( status, 64'h0000_0000_8000_0001 ); // LSB should be masked
      `uvm_info( get_name(), $sformatf("mepc write (unaligned): status=%s", status), UVM_LOW )
      jb_reg_block.mepc.read( status, value );
      `uvm_info( get_name(), $sformatf("mepc read (unaligned): value=0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test reading individual fields
      `uvm_info( get_name(), "Testing mepc field access", UVM_LOW )
      jb_reg_block.mepc.pc.write( status, 64'h0000_0000_8000_1000 );
      `uvm_info( get_name(), $sformatf("mepc.pc write: status=%s", status), UVM_LOW )
      jb_reg_block.mepc.pc.read( status, value );
      `uvm_info( get_name(), $sformatf("mepc.pc read: value=0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test interaction between mie and mepc
      `uvm_info( get_name(), "Testing interaction: enable interrupt, then set mepc", UVM_LOW )
      jb_reg_block.mie.mtie.write( status, 1'b1 );  // Enable timer interrupt
      jb_reg_block.mepc.write( status, 64'h0000_0000_8000_2000 );  // Set exception PC
      
      // Read both registers
      jb_reg_block.mie.read( status, value );
      `uvm_info( get_name(), $sformatf("After enabling MTIE: mie=0x%016h", value), UVM_LOW )
      
      jb_reg_block.mepc.read( status, value );
      `uvm_info( get_name(), $sformatf("After setting mepc: mepc=0x%016h", value), UVM_LOW )
      
      `uvm_info( get_name(), "mie and mepc register tests with bit fields completed successfully", UVM_LOW )
      
      // Print register information using UVM RAL methods
      `uvm_info( get_name(), "\n=== Register Information ===", UVM_LOW )
      `uvm_info( get_name(), $sformatf("mstatus register:\n%s", jb_reg_block.mstatus.sprint()), UVM_LOW )
      `uvm_info( get_name(), $sformatf("mcause register:\n%s", jb_reg_block.mcause.sprint()), UVM_LOW )
      `uvm_info( get_name(), $sformatf("mepc register:\n%s", jb_reg_block.mepc.sprint()), UVM_LOW )
      `uvm_info( get_name(), $sformatf("mie register:\n%s", jb_reg_block.mie.sprint()), UVM_LOW )
   endtask: body
     
endclass: mie_mepc_test_sequence

//==============================================================================
// Copyright (c) 2011-2015 ClueLogic, LLC
// http://cluelogic.com/
//==============================================================================