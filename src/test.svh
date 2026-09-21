//------------------------------------------------------------------------------
// Class: jelly_bean_base_test
//------------------------------------------------------------------------------

class jelly_bean_base_test extends uvm_test;
   `uvm_component_utils( jelly_bean_base_test )

   jelly_bean_env          jb_env;
   jelly_bean_env_config   jb_env_cfg;
   jelly_bean_agent_config jb_agent_cfg;
   jelly_bean_reg_block    jb_reg_block;

   function new( string name, uvm_component parent );
      super.new( name, parent );
   endfunction: new

   function void build_phase(uvm_phase phase);
      super.build_phase(phase);

      jb_reg_block = jelly_bean_reg_block::type_id::create( "jb_reg_block" );
      jb_reg_block.build();

      jb_env_cfg = jelly_bean_env_config::type_id::create( "jb_env_cfg" );
      jb_env_cfg.jb_reg_block = jb_reg_block;

      jb_agent_cfg = jelly_bean_agent_config::type_id::create( "jb_agent_cfg" );
      
      if ( ! uvm_config_db#( virtual jelly_bean_if )::get( .cntxt( this ),
                                                           .inst_name( "" ),
                                                           .field_name( "jb_if" ),
                                                           .value( jb_agent_cfg.jb_if ))) begin
         `uvm_error( "jelly_bean_test", "jb_if not found" )
      end

      jb_env_cfg.jb_agent_cfg = jb_agent_cfg;

      uvm_config_db#(jelly_bean_env_config)::set( .cntxt( null ),
                                                  .inst_name( "*" ),
                                                  .field_name( "jb_env_cfg" ),
                                                  .value( jb_env_cfg ) );
      jb_env = jelly_bean_env::type_id::create( .name( "jb_env" ), 
                                                .parent( this ) );
   endfunction: build_phase

   virtual function void start_of_simulation_phase( uvm_phase phase );
      super.start_of_simulation_phase( phase );
      uvm_top.print_topology();
   endfunction: start_of_simulation_phase

endclass: jelly_bean_base_test

//------------------------------------------------------------------------------
// Class: jelly_bean_reg_test
//------------------------------------------------------------------------------

class jelly_bean_reg_test extends jelly_bean_base_test;
   `uvm_component_utils( jelly_bean_reg_test )

   function new( string name, uvm_component parent );
      super.new( name, parent );
   endfunction: new

   task main_phase( uvm_phase phase );
      jelly_bean_reg_sequence jb_reg_seq;

      phase.raise_objection( .obj( this ) );
      jb_reg_seq = jelly_bean_reg_sequence::type_id::create( .name( "jb_reg_seq" ) );
      jb_reg_seq.model = jb_reg_block;
      jb_reg_seq.start( .sequencer( jb_env.jb_agent.jb_seqr ) );
      
      #100ns;
      phase.drop_objection( .obj( this ) );
      
   endtask: main_phase
endclass: jelly_bean_reg_test

//------------------------------------------------------------------------------
// Class: jelly_bean_reg_hw_reset_test
//------------------------------------------------------------------------------

class jelly_bean_reg_hw_reset_test extends jelly_bean_base_test;
   `uvm_component_utils( jelly_bean_reg_hw_reset_test )

   function new( string name, uvm_component parent );
      super.new( name, parent );
   endfunction: new

   task main_phase( uvm_phase phase );
      uvm_reg_hw_reset_seq reg_hw_reset_seq;

      phase.raise_objection( .obj( this ) );
      reg_hw_reset_seq = uvm_reg_hw_reset_seq::type_id::create( .name( "reg_hw_reset_seq" ) );
      reg_hw_reset_seq.model = jb_reg_block;
      reg_hw_reset_seq.start( .sequencer( jb_env.jb_agent.jb_seqr ) );
      
      phase.drop_objection( .obj( this ) );
   endtask: main_phase
endclass: jelly_bean_reg_hw_reset_test

//------------------------------------------------------------------------------
// Class: mstatus_mcause_test
//------------------------------------------------------------------------------

class mstatus_mcause_test extends jelly_bean_base_test;
   `uvm_component_utils( mstatus_mcause_test )

   function new( string name, uvm_component parent );
      super.new( name, parent );
   endfunction: new

   task main_phase( uvm_phase phase );
      mstatus_mcause_test_sequence test_seq;

      phase.raise_objection( .obj( this ) );
      
      `uvm_info( get_name(), "Starting mstatus and mcause register test", UVM_LOW )
      
      test_seq = mstatus_mcause_test_sequence::type_id::create( .name( "test_seq" ) );
      test_seq.model = jb_reg_block;
      test_seq.start( .sequencer( jb_env.jb_agent.jb_seqr ) );
      
      `uvm_info( get_name(), "mstatus and mcause register test completed", UVM_LOW )
      
      phase.drop_objection( .obj( this ) );
   endtask: main_phase
endclass: mstatus_mcause_test

//------------------------------------------------------------------------------
// Class: mie_mepc_test - Test for registers with bit fields
//------------------------------------------------------------------------------

class mie_mepc_test extends jelly_bean_base_test;
   `uvm_component_utils( mie_mepc_test )

   function new( string name, uvm_component parent );
      super.new( name, parent );
   endfunction: new

   task main_phase( uvm_phase phase );
      mie_mepc_test_sequence test_seq;

      phase.raise_objection( .obj( this ) );
      
      `uvm_info( get_name(), "Starting mie and mepc register test with bit fields", UVM_LOW )
      
      test_seq = mie_mepc_test_sequence::type_id::create( .name( "test_seq" ) );
      test_seq.model = jb_reg_block;
      test_seq.start( .sequencer( jb_env.jb_agent.jb_seqr ) );
      
      `uvm_info( get_name(), "mie and mepc register test with bit fields completed", UVM_LOW )
      
      phase.drop_objection( .obj( this ) );
   endtask: main_phase
endclass: mie_mepc_test

//==============================================================================
// Copyright (c) 2011-2015 ClueLogic, LLC
// http://cluelogic.com/
//==============================================================================