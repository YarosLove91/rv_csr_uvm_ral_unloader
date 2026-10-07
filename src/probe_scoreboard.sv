class probe_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(probe_scoreboard)

  uvm_analysis_imp#(probe_transaction, probe_scoreboard) probe_imp;

  csr_top_reg_block       reg_top_model;
  csr_rv32_only_reg_block reg_rv32_only_model;
  csr_shadow_t shadow;

  function new(string name = "probe_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    probe_imp = new("probe_imp", this);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    this.check_config();
  endfunction : build_phase

  function void check_config();
    if (!uvm_config_db#(csr_top_reg_block)::get(
            this, "", "reg_top_model", reg_top_model))
      `uvm_fatal(get_name(), "reg_top_model not found")
    if (!uvm_config_db#(csr_rv32_only_reg_block)::get(
            this, "", "reg_rv32_only_model", reg_rv32_only_model))
      `uvm_fatal(get_name(), "reg_rv32_only_model not found")
  endfunction : check_config

  // Поиск регистра: сначала RV64-модель, затем RV32-only
  protected function uvm_reg find_reg(csr_addr_t addr);
    uvm_reg r;
    r = reg_top_model.get_reg_by_addr(addr);
    if (r == null)
      r = reg_rv32_only_model.csr_map.get_reg_by_offset(addr);
    if (r == null)
      `uvm_error (get_name(),
                  $sformatf("CSR 0x%03h not found", addr))
    return r;
  endfunction : find_reg

  // Диспетчер: WRITE или READ
  virtual function void write(probe_transaction tx);
    if (!tx.valid) begin
      return;
    end

    case (tx.rd_or_wr)
      CSR_WRITE: do_write(tx);
      CSR_READ : do_read (tx);
      default  : `uvm_error(get_name(),
                  $sformatf("unknown access: %s", tx.rd_or_wr.name()))
    endcase
  endfunction : write

  // WRITE: обновляем shadow + predict в reg_block
  protected function void do_write(probe_transaction tx);
    uvm_reg r;

    if (reg_rv32_only_model.csr_map.get_reg_by_offset(tx.addr) != null)
      `uvm_warning(get_name(),
                  $sformatf("WRITE to RV32-only CSR 0x%03h <- 0x%016h",
                            tx.addr, tx.value))

    shadow[tx.addr] = tx.value;

    r = find_reg(tx.addr);
    if (r != null) begin
      r.predict(tx.value);
      `uvm_info(get_name(),
                $sformatf("WR 0x%03h <- 0x%016h [%s]",
                          tx.addr, tx.value, r.get_name()),
                UVM_LOW)
    end else begin
      `uvm_error (get_name(),
                  $sformatf("WR 0x%03h <- 0x%016h : no reg_block",
                            tx.addr, tx.value))
    end

  endfunction : do_write

  protected function void do_read(probe_transaction tx);
    uvm_reg    r;
    csr_data_t actual;

    r = find_reg(tx.addr);
    if (r != null) begin
      get_reg_value(r, actual);
      tx.value = actual;
      `uvm_info(get_name(),
                $sformatf("RD 0x%03h -> 0x%016h [%s] (RAL)",
                          tx.addr, actual, r.get_name()),
                UVM_LOW)
    end else begin
      actual   = shadow.exists(tx.addr) ? shadow[tx.addr] : csr_data_t'(0);
      tx.value = actual;
      `uvm_warning(get_name(),
                  $sformatf("RD 0x%03h -> 0x%016h : no reg_block",
                            tx.addr, actual))
    end
  endfunction : do_read

  // Чтение текущего значения из RAL-модели.

  protected function bit get_reg_value(uvm_reg r, output uvm_reg_data_t value);
    if (r == null) begin
      return 0;
    end
    value = r.get();
    return 1;
  endfunction : get_reg_value

  //------------------------------------------------------------------------------
  // Проверка согласованности RAL и shadow
  //------------------------------------------------------------------------------
  function void check_ral_vs_shadow();
    int errors = 0;
    int checked = 0;

    foreach (shadow[addr]) begin
      uvm_reg         r;
      uvm_reg_data_t  ral_val;
      csr_data_t      shadow_val;

      r = find_reg(addr);
      if (r == null) begin
        `uvm_warning(get_name(),
                    $sformatf("shadow[0x%03h] exists, no RAL reg", addr))
        continue;
      end

      shadow_val = shadow[addr];
      shadow_val = shadow_val & (r.get_n_bits() >= 64
                              ? csr_data_t'('1)
                              : ((csr_data_t'(1) << r.get_n_bits()) - 1));
      ral_val = r.get();

      checked++;
      if (ral_val !== shadow_val) begin
        `uvm_error(get_name(),
                  $sformatf("%s mismatch: RAL=0x%016h shadow=0x%016h",
                            r.get_name(), ral_val, shadow_val))
        errors++;
      end
    end

    `uvm_info(get_name(),
              $sformatf("RAL vs shadow: %0d checked, %0d mismatches",
                        checked, errors),
              UVM_HIGH)
  endfunction : check_ral_vs_shadow


  function void dump_all();
    `uvm_info(get_name(), "\n=== CSR shadow dump ===", UVM_LOW)
    foreach (shadow[a])
      `uvm_info(get_name(),
                $sformatf("0x%03h = 0x%016h", a, shadow[a]),
                          UVM_LOW)

    `uvm_info(get_name(), "\n=== RAL model dump (sprint) ===", UVM_LOW)
    `uvm_info(get_name(), reg_top_model.sprint(), UVM_LOW)

    this.check_ral_vs_shadow();
  endfunction : dump_all
endclass : probe_scoreboard
