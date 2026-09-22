class probe_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(probe_scoreboard)

  uvm_analysis_imp#(probe_transaction, probe_scoreboard) probe_imp;

  RegModel_SFR reg_model;

  function new(string name = "probe_scoreboard", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    probe_imp = new("probe_imp", this);
    if (!uvm_config_db#(RegModel_SFR)::get(this, "", "reg_model", reg_model))
        `uvm_fatal(get_type_name(), "reg_model not found")
  endfunction : build_phase

  virtual function void write(probe_transaction tx);
    uvm_reg r;
    uvm_reg_data_t v;

    if (!tx.valid) return;
    r = get_reg_by_addr(tx.addr);
    if (r == null) return;

    r.predict(tx.value);

    r.get(v);
    `uvm_info(get_type_name(),
              $sformatf("predict 0x%03h <- 0x%016h, get -> 0x%016h",
                        tx.addr, tx.value, v),
              UVM_LOW)
  endfunction : write

  protected function uvm_reg get_reg_by_addr(bit [31:0] addr);
    case (addr)
      32'h300: return reg_model.mstatus;
      32'h304: return reg_model.mie;
      32'h341: return reg_model.mepc;
      32'h342: return reg_model.mcause;
      default: return null;
    endcase
  endfunction : get_reg_by_addr

  function void dump_all();
    uvm_reg_data_t v;
    `uvm_info(get_type_name(), "\n=== RAL mirror dump ===", UVM_LOW)
    reg_model.mstatus.get(v);
    `uvm_info(get_type_name(), $sformatf("mstatus = 0x%016h", v), UVM_LOW)
    reg_model.mie.get(v);
    `uvm_info(get_type_name(), $sformatf("mie     = 0x%016h", v), UVM_LOW)
    reg_model.mepc.get(v);
    `uvm_info(get_type_name(), $sformatf("mepc    = 0x%016h", v), UVM_LOW)
    reg_model.mcause.get(v);
    `uvm_info(get_type_name(), $sformatf("mcause  = 0x%016h", v), UVM_LOW)
  endfunction : dump_all
endclass : probe_scoreboard