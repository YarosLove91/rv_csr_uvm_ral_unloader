class env extends uvm_env;
  `uvm_component_utils(env)

  csr_reg_block reg_model;

  probe_scoreboard                      probe_sb;
  uvm_analysis_port#(probe_transaction) probe_ap;

  function new(string name = "env", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  function void build_phase( uvm_phase phase );
    super.build_phase(phase);

    reg_model = csr_reg_block::type_id::create("reg_model");
    reg_model.build();
    reg_model.lock_model();
    reg_model.reset();
    reg_model.print();

    uvm_config_db#(csr_reg_block)::set( uvm_root::get(), "*",
                                        "reg_model", reg_model );

    probe_sb = probe_scoreboard::type_id::create("probe_sb", this);
    probe_ap = new("probe_ap", this);
  endfunction : build_phase

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    probe_ap.connect(probe_sb.probe_imp);
  endfunction : connect_phase
endclass : env