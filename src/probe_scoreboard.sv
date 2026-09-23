class probe_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(probe_scoreboard)

  uvm_analysis_imp#(probe_transaction, probe_scoreboard) probe_imp;

  csr_sm_base_reg_block   reg_sm_base_model;
  csr_sm_zicntr_reg_block reg_sm_zicntr_model;

  logic [63:0]  shadow [bit [11:0]];

  function new(string name = "probe_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    probe_imp = new("probe_imp", this);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    this.check_config();
  endfunction : build_phase

  function void check_config();
    if (!uvm_config_db#(csr_sm_base_reg_block)::get(
            this, "", "reg_sm_base_model", reg_sm_base_model))
      `uvm_fatal(get_name(), "reg_sm_base_model not found")
    if (!uvm_config_db#(csr_sm_zicntr_reg_block)::get(
            this, "", "reg_sm_zicntr_model", reg_sm_zicntr_model))
      `uvm_fatal(get_name(), "reg_sm_zicntr_model not found")
  endfunction : check_config

  // Поиск регистра по адресу среди всех блоков
  protected function uvm_reg find_reg(bit [31:0] addr);
    uvm_reg r;

    r = reg_sm_base_model.get_reg_by_addr(addr);
    if (r != null) return r;

    r = reg_sm_zicntr_model.get_reg_by_addr(addr);
    if (r != null) return r;

    `uvm_error(get_name(),
              $sformatf("CSR 0x%03h not found in any reg_block", addr))
  endfunction : find_reg

  // Диспетчер: WRITE или READ
  virtual function void write(probe_transaction tx);
    if (!tx.valid) begin
      return;
    end

    if (tx.rd_or_wr == 1'b0) begin
      do_write(tx);
    end else begin
      do_read(tx);
    end
  endfunction : write

  // WRITE: обновляем shadow + predict в reg_block
  protected function void do_write(probe_transaction tx);
    uvm_reg r;

    shadow[tx.addr[11:0]] = tx.value;

    r = find_reg(tx.addr);
    if (r != null) begin
      r.predict(tx.value);

      `uvm_info(get_name(),
                $sformatf("WR 0x%03h <- 0x%016h [%s]",
                          tx.addr, tx.value, r.get_name()),
                UVM_LOW)
    end
    else begin
      `uvm_error(get_name(),
                 $sformatf("WR 0x%03h <- 0x%016h : no reg_block",
                           tx.addr, tx.value))
    end
  endfunction : do_write

  // READ: заполняем tx.value из shadow
  protected function void do_read(probe_transaction tx);
    uvm_reg        r;
    logic [63:0]   actual;

    actual = shadow.exists(tx.addr[11:0]) ? shadow[tx.addr[11:0]] : 64'h0;
    tx.value = actual;

    r = find_reg(tx.addr);
    if (r != null) begin
      `uvm_info(get_name(),
                $sformatf("RD 0x%03h -> 0x%016h [%s]",
                          tx.addr, actual, r.get_name()),
                UVM_LOW)
    end
    else begin
      `uvm_warning(get_name(),
                   $sformatf("RD 0x%03h -> 0x%016h : no reg_block",
                             tx.addr, actual))
    end
  endfunction : do_read

  function void dump_all();
    `uvm_info(get_name(), "\n=== CSR shadow dump ===", UVM_LOW)
    foreach (shadow[a])
      `uvm_info(get_name(),
                $sformatf("0x%03h = 0x%016h", a, shadow[a]),
                UVM_LOW)
  endfunction : dump_all
endclass : probe_scoreboard
