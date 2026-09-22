class base_test extends uvm_test;
  env env_o;
  `uvm_component_utils(base_test)
  
  function new(string name = "base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env_o = env::type_id::create("env_o", this);
  endfunction : build_phase
  
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    test_imp();
    // TODO: Normal end
    #20;
    phase.drop_objection(this);
    `uvm_info(get_type_name(), "End of testcase", UVM_LOW);
  endtask : run_phase
  
  virtual task test_imp();
    base_seq bseq = base_seq::type_id::create("bseq");
        
    repeat(10) begin 
      #5; bseq.start(env_o.agt.seqr);
    end
  endtask : test_imp
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase
endclass

class reg_test extends base_test;
  `uvm_component_utils(reg_test)
  
  function new(string name = "reg_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction : build_phase
  
  task test_imp();
    reg_seq rseq = reg_seq::type_id::create("rseq");
    rseq.start(env_o.agt.seqr);
  endtask : test_imp
endclass : reg_test