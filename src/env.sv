class env extends uvm_env;
  `uvm_component_utils(env)

  csr_top_reg_block      reg_top_model;
  csr_rv32_only_reg_block reg_rv32_only_model;

  probe_scoreboard                      probe_sb;
  uvm_analysis_port#(probe_transaction) probe_ap;

  function new(string name = "env", uvm_component parent = null);
    super.new(name, parent);
    probe_ap = new("probe_ap", this);
  endfunction : new

  function void build_phase( uvm_phase phase );
    super.build_phase(phase);

    reg_top_model = csr_top_reg_block::type_id::create("reg_top_model");
    reg_top_model.build();
    reg_top_model.lock_model();
    reg_top_model.reset();
    reg_top_model.print();

    uvm_config_db#(csr_top_reg_block)::set( uvm_root::get(), "*",
                                            "reg_top_model", reg_top_model );

    reg_rv32_only_model = csr_rv32_only_reg_block::type_id::create(
                              "reg_rv32_only_model");
    reg_rv32_only_model.build();
    reg_rv32_only_model.lock_model();
    reg_rv32_only_model.reset();
    reg_rv32_only_model.print();

    uvm_config_db#(csr_rv32_only_reg_block)::set( uvm_root::get(), "*",
                                            "reg_rv32_only_model",
                                            reg_rv32_only_model );

    probe_sb = probe_scoreboard::type_id::create("probe_sb", this);
  endfunction : build_phase

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    probe_ap.connect(probe_sb.probe_imp);
  endfunction : connect_phase
endclass : env