class probe_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(probe_scoreboard)

  uvm_analysis_imp#(probe_transaction, probe_scoreboard) probe_imp;

  csr_sm_base_reg_block reg_sm_model;
  logic [63:0]  shadow [bit [11:0]];

  function new(string name = "probe_scoreboard", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    probe_imp = new("probe_imp", this);
    if ( !uvm_config_db#(csr_sm_base_reg_block)::get(this, "", "reg_sm_model", reg_sm_model))
      `uvm_fatal(get_name(), "reg_sm_model not found")
  endfunction : build_phase

  virtual function void write(probe_transaction tx);
    uvm_reg r;

    if (!tx.valid) begin
      return;
    end
  
    if (tx.rd_or_wr == 1'b0) begin
      // WRITE
      shadow[tx.addr[11:0]] = tx.value;
      r = reg_sm_model.get_reg_by_addr(tx.addr);
      if (r != null) begin
        r.predict(tx.value);
      end

      `uvm_info(get_name(),
                $sformatf("WR 0x%03h <- 0x%016h", tx.addr, tx.value),
                UVM_LOW)
    end
    else begin
      // READ — заполняем tx.value из shadow
      logic [63:0] actual = shadow.exists(tx.addr[11:0])
                          ? shadow[tx.addr[11:0]] : 64'h0;
      tx.value = actual;

      `uvm_info(get_name(),
                $sformatf("RD 0x%03h -> 0x%016h", tx.addr, actual),
                UVM_LOW)
    end
  endfunction : write

  function void dump_all();
    `uvm_info(get_name(), "\n=== CSR shadow dump ===", UVM_LOW)
    foreach (shadow[a])
      `uvm_info(get_name(),
                $sformatf("0x%03h = 0x%016h", a, shadow[a]),
                 UVM_LOW)
  endfunction : dump_all
endclass : probe_scoreboard
