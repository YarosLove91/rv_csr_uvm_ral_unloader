class probe_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(probe_scoreboard)

  uvm_analysis_imp#(probe_transaction, probe_scoreboard) probe_imp;

  RegModel_SFR  reg_model;                   // <-- твой блок
  logic [63:0]  shadow [bit [11:0]];

  function new(string name = "probe_scoreboard", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    probe_imp = new("probe_imp", this);
    if (!uvm_config_db#(RegModel_SFR)::get(this, "", "reg_model", reg_model))
        `uvm_fatal(get_name(), "reg_model not found")
  endfunction : build_phase

  virtual function void write(probe_transaction tx);
    uvm_reg r;

    if (!tx.valid) return;

    if (tx.rd_or_wr == 1'b0) begin
        shadow[tx.addr[11:0]] = tx.value;

        r = get_reg_by_addr(tx.addr);
        if (r != null) r.predict(tx.value);

        `uvm_info(get_name(),
                  $sformatf("WR 0x%03h <- 0x%016h", tx.addr, tx.value),
                  UVM_LOW)
    end
    else begin
        logic [63:0] actual = shadow.exists(tx.addr[11:0])
                            ? shadow[tx.addr[11:0]] : 64'h0;
        if (actual !== tx.value)
          `uvm_error(get_name(),
                      $sformatf("RD 0x%03h mismatch: shadow=0x%016h bus=0x%016h",
                                tx.addr, actual, tx.value))
    end
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
    `uvm_info(get_name(), "\n=== CSR shadow dump ===", UVM_LOW)
    foreach (shadow[a])
        `uvm_info(get_name(),
                  $sformatf("0x%03h = 0x%016h", a, shadow[a]),
                  UVM_LOW)
  endfunction : dump_all
endclass : probe_scoreboard
