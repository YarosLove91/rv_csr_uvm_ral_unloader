class env extends uvm_env;
  `uvm_component_utils(env)

  csr_sm_base_reg_block   reg_sm_base_model;
  csr_sm_zicntr_reg_block reg_sm_zicntr_model;

  probe_scoreboard                      probe_sb;
  uvm_analysis_port#(probe_transaction) probe_ap;

  function new(string name = "env", uvm_component parent = null);
    super.new(name, parent);
    probe_ap = new("probe_ap", this);
  endfunction : new

  function void build_sm_reg_model();
    reg_sm_base_model = csr_sm_base_reg_block::type_id::create("reg_sm_base_model");
    reg_sm_base_model.build();
    reg_sm_base_model.lock_model();
    reg_sm_base_model.reset();
    reg_sm_base_model.print();

    uvm_config_db#(csr_sm_base_reg_block)::set(uvm_root::get(), 
                                              "*", 
                                              "reg_sm_base_model", 
                                              reg_sm_base_model);
  endfunction : build_sm_reg_model

  function void build_zicntr_reg_model();
    reg_sm_zicntr_model = csr_sm_zicntr_reg_block::type_id::create("reg_sm_zicntr_model");
    reg_sm_zicntr_model.build();
    reg_sm_zicntr_model.lock_model();
    reg_sm_zicntr_model.reset();
    reg_sm_zicntr_model.print();
    uvm_config_db#(csr_sm_zicntr_reg_block)::set(uvm_root::get(), 
                                                "*", 
                                                "reg_sm_zicntr_model", 
                                                reg_sm_zicntr_model);
  endfunction : build_zicntr_reg_model


  function void build_phase( uvm_phase phase );
    super.build_phase(phase);

    // Sm_base
    this.build_sm_reg_model();
    // Sm_zicntr
    this.build_zicntr_reg_model();

    probe_sb = probe_scoreboard::type_id::create("probe_sb", this);
  endfunction : build_phase

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    probe_ap.connect(probe_sb.probe_imp);
  endfunction : connect_phase
endclass : env