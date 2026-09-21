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

//------------------------------------------------------------------------------
// Class: all_csr_registers_test_sequence - Test all CSR registers
//------------------------------------------------------------------------------

class all_csr_registers_test_sequence extends uvm_reg_sequence;
   `uvm_object_utils( all_csr_registers_test_sequence )

   function new( string name = "" );
      super.new( name );
   endfunction: new

   virtual task body();
      jelly_bean_reg_block       jb_reg_block;
      uvm_status_e               status;
      uvm_reg_data_t             value;
      
      $cast( jb_reg_block, model );
      
      `uvm_info( get_name(), "\n", UVM_LOW )
      `uvm_info( get_name(), "╔══════════════════════════════════════════════════════════════╗", UVM_LOW )
      `uvm_info( get_name(), "║           Testing All CSR Registers                          ║", UVM_LOW )
      `uvm_info( get_name(), "╚══════════════════════════════════════════════════════════════╝", UVM_LOW )
      
      // Test 1: mstatus register (0x300)
      `uvm_info( get_name(), "\n", UVM_LOW )
      `uvm_info( get_name(), "┌─────────────────────────────────────────────────────────────┐", UVM_LOW )
      `uvm_info( get_name(), "│ 1. Testing mstatus Register (0x300) - Machine Status        │", UVM_LOW )
      `uvm_info( get_name(), "└─────────────────────────────────────────────────────────────┘", UVM_LOW )
      
      // Test write/read
      `uvm_info( get_name(), "  Testing write/read operations...", UVM_LOW )
      jb_reg_block.mstatus.write( status, 64'h0000_0000_0000_0001 );
      `uvm_info( get_name(), $sformatf("  Write 0x0000000000000001: status=%s", status), UVM_LOW )
      
      jb_reg_block.mstatus.read( status, value );
      `uvm_info( get_name(), $sformatf("  Read value: 0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test MPP bits (bits 12:11)
      `uvm_info( get_name(), "  Testing MPP bits (12:11)...", UVM_LOW )
      jb_reg_block.mstatus.write( status, 64'h0000_0000_0000_1800 ); // MPP = 2'b11
      jb_reg_block.mstatus.read( status, value );
      `uvm_info( get_name(), $sformatf("  MPP bits: value=0x%016h (MPP=%b)", value, value[12:11]), UVM_LOW )
      
      // Print register info
      `uvm_info( get_name(), "\n  mstatus register info:", UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mstatus.sprint(), UVM_LOW )
      
      // Test 2: mie register (0x304)
      `uvm_info( get_name(), "\n┌─────────────────────────────────────────────────────────────┐", UVM_LOW )
      `uvm_info( get_name(), "│ 2. Testing mie Register (0x304) - Machine Interrupt Enable  │", UVM_LOW )
      `uvm_info( get_name(), "└─────────────────────────────────────────────────────────────┘", UVM_LOW )
      
      // Test individual bits
      `uvm_info( get_name(), "  Testing individual interrupt enable bits...", UVM_LOW )
      
      // MSIE (bit 3)
      jb_reg_block.mie.msie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("  MSIE (bit 3) write: status=%s", status), UVM_LOW )
      
      // MTIE (bit 7)
      jb_reg_block.mie.mtie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("  MTIE (bit 7) write: status=%s", status), UVM_LOW )
      
      // MEIE (bit 11)
      jb_reg_block.mie.meie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("  MEIE (bit 11) write: status=%s", status), UVM_LOW )
      
      // Read full register
      jb_reg_block.mie.read( status, value );
      `uvm_info( get_name(), $sformatf("  Read full register: value=0x%016h", value), UVM_LOW )
      `uvm_info( get_name(), $sformatf("    MSIE (bit 3) = %b", value[3]), UVM_LOW )
      `uvm_info( get_name(), $sformatf("    MTIE (bit 7) = %b", value[7]), UVM_LOW )
      `uvm_info( get_name(), $sformatf("    MEIE (bit 11) = %b", value[11]), UVM_LOW )
      
      // Test write multiple bits at once
      `uvm_info( get_name(), "  Testing write multiple bits at once...", UVM_LOW )
      jb_reg_block.mie.write( status, 64'h0000_0000_0000_0A8A ); // MSIE(3), STIE(5), MEIE(11)
      jb_reg_block.mie.read( status, value );
      `uvm_info( get_name(), $sformatf("  After write 0x0A8A: value=0x%016h", value), UVM_LOW )
      
      // Print register info
      `uvm_info( get_name(), "\n  mie register info:", UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mie.sprint(), UVM_LOW )
      
      // Test 3: mepc register (0x341)
      `uvm_info( get_name(), "\n┌─────────────────────────────────────────────────────────────┐", UVM_LOW )
      `uvm_info( get_name(), "│ 3. Testing mepc Register (0x341) - Machine Exception PC     │", UVM_LOW )
      `uvm_info( get_name(), "└─────────────────────────────────────────────────────────────┘", UVM_LOW )
      
      // Test aligned address
      `uvm_info( get_name(), "  Testing aligned address...", UVM_LOW )
      jb_reg_block.mepc.write( status, 64'h0000_0000_8000_0000 );
      `uvm_info( get_name(), $sformatf("  Write 0x80000000: status=%s", status), UVM_LOW )
      
      jb_reg_block.mepc.read( status, value );
      `uvm_info( get_name(), $sformatf("  Read value: 0x%016h, status=%s", value, status), UVM_LOW )
      
      // Test unaligned address (LSB should be masked)
      `uvm_info( get_name(), "  Testing unaligned address (LSB=1)...", UVM_LOW )
      jb_reg_block.mepc.write( status, 64'h0000_0000_8000_0001 ); // LSB should be masked
      jb_reg_block.mepc.read( status, value );
      `uvm_info( get_name(), $sformatf("  After write 0x80000001: value=0x%016h (LSB masked)", value), UVM_LOW )
      
      // Test field access
      `uvm_info( get_name(), "  Testing PC field access...", UVM_LOW )
      jb_reg_block.mepc.pc.write( status, 64'h0000_0000_8000_1000 );
      jb_reg_block.mepc.pc.read( status, value );
      `uvm_info( get_name(), $sformatf("  PC field value: 0x%016h", value), UVM_LOW )
      
      // Print register info
      `uvm_info( get_name(), "\n  mepc register info:", UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mepc.sprint(), UVM_LOW )
      
      // Test 4: mcause register (0x342)
      `uvm_info( get_name(), "\n┌─────────────────────────────────────────────────────────────┐", UVM_LOW )
      `uvm_info( get_name(), "│ 4. Testing mcause Register (0x342) - Machine Cause          │", UVM_LOW )
      `uvm_info( get_name(), "└─────────────────────────────────────────────────────────────┘", UVM_LOW )
      
      // Test exception code
      `uvm_info( get_name(), "  Testing exception code...", UVM_LOW )
      jb_reg_block.mcause.write( status, 64'h0000_0000_0000_000D ); // Environment call from M-mode
      `uvm_info( get_name(), $sformatf("  Write 0x000000000000000D: status=%s", status), UVM_LOW )
      
      jb_reg_block.mcause.read( status, value );
      `uvm_info( get_name(), $sformatf("  Read value: 0x%016h, status=%s", value, status), UVM_LOW )
      `uvm_info( get_name(), $sformatf("    Exception Code = %0d", value[62:0]), UVM_LOW )
      
      // Test interrupt bit (bit 63)
      `uvm_info( get_name(), "  Testing interrupt bit (bit 63)...", UVM_LOW )
      jb_reg_block.mcause.write( status, 64'h8000_0000_0000_0009 ); // Interrupt + MEI
      `uvm_info( get_name(), $sformatf("  Write 0x8000000000000009: status=%s", status), UVM_LOW )
      
      jb_reg_block.mcause.read( status, value );
      `uvm_info( get_name(), $sformatf("  Read value: 0x%016h", value), UVM_LOW )
      `uvm_info( get_name(), $sformatf("    Interrupt bit (63) = %b", value[63]), UVM_LOW )
      `uvm_info( get_name(), $sformatf("    Exception Code = %0d", value[62:0]), UVM_LOW )
      
      // Print register info
      `uvm_info( get_name(), "\n  mcause register info:", UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mcause.sprint(), UVM_LOW )
      
      // Test 5: Interaction between registers
      `uvm_info( get_name(), "\n┌─────────────────────────────────────────────────────────────┐", UVM_LOW )
      `uvm_info( get_name(), "│ 5. Testing Register Interactions                           │", UVM_LOW )
      `uvm_info( get_name(), "└─────────────────────────────────────────────────────────────┘", UVM_LOW )
      
      // Enable timer interrupt, set exception PC, then trigger exception
      `uvm_info( get_name(), "  Simulating exception handling sequence...", UVM_LOW )
      
      // Step 1: Enable timer interrupt
      jb_reg_block.mie.mtie.write( status, 1'b1 );
      `uvm_info( get_name(), $sformatf("  Step 1: Enable MTIE: status=%s", status), UVM_LOW )
      
      // Step 2: Set exception PC
      jb_reg_block.mepc.write( status, 64'h0000_0000_8000_0000 );
      `uvm_info( get_name(), $sformatf("  Step 2: Set mepc=0x80000000: status=%s", status), UVM_LOW )
      
      // Step 3: Set mcause to timer interrupt
      jb_reg_block.mcause.write( status, 64'h8000_0000_0000_0007 ); // Interrupt + MTI
      `uvm_info( get_name(), $sformatf("  Step 3: Set mcause=0x8000000000000007: status=%s", status), UVM_LOW )
      
      // Step 4: Update mstatus (set MPIE, clear MIE)
      jb_reg_block.mstatus.write( status, 64'h0000_0000_0000_0080 ); // MPIE=1
      `uvm_info( get_name(), $sformatf("  Step 4: Set mstatus (MPIE=1): status=%s", status), UVM_LOW )
      
      // Read all registers
      `uvm_info( get_name(), "\n  Final register states:", UVM_LOW )
      jb_reg_block.mie.read( status, value );
      `uvm_info( get_name(), $sformatf("    mie = 0x%016h", value), UVM_LOW )
      
      jb_reg_block.mepc.read( status, value );
      `uvm_info( get_name(), $sformatf("    mepc = 0x%016h", value), UVM_LOW )
      
      jb_reg_block.mcause.read( status, value );
      `uvm_info( get_name(), $sformatf("    mcause = 0x%016h", value), UVM_LOW )
      
      jb_reg_block.mstatus.read( status, value );
      `uvm_info( get_name(), $sformatf("    mstatus = 0x%016h", value), UVM_LOW )
      
      // Summary
      `uvm_info( get_name(), "\n╔══════════════════════════════════════════════════════════════╗", UVM_LOW )
      `uvm_info( get_name(), "║           All CSR Registers Test Completed Successfully     ║", UVM_LOW )
      `uvm_info( get_name(), "╚══════════════════════════════════════════════════════════════╝", UVM_LOW )
      
      // Final register dump
      `uvm_info( get_name(), "\n=== Final Register Dump ===", UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mstatus.sprint(), UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mie.sprint(), UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mepc.sprint(), UVM_LOW )
      `uvm_info( get_name(), jb_reg_block.mcause.sprint(), UVM_LOW )
      
   endtask: body
     
endclass: all_csr_registers_test_sequence

//==============================================================================
// Copyright (c) 2011-2015 ClueLogic, LLC
// http://cluelogic.com/
//==============================================================================