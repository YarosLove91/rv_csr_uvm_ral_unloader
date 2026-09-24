class probe_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(probe_scoreboard)

  uvm_analysis_imp#(probe_transaction, probe_scoreboard) probe_imp;

  csr_top_reg_block reg_top_model;

  logic [63:0] shadow [bit [11:0]];

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
  endfunction : check_config

  // Поиск регистра
  protected function uvm_reg find_reg(bit [31:0] addr);
    uvm_reg r;
    r = reg_top_model.get_reg_by_addr(addr);
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
    end else begin
      `uvm_error (get_name(),
                  $sformatf("WR 0x%03h <- 0x%016h : no reg_block",
                            tx.addr, tx.value))
    end
  endfunction : do_write

  protected function void do_read(probe_transaction tx);
    uvm_reg        r;
    logic [63:0]   actual;

    r = find_reg(tx.addr);
    if (r != null) begin
      if (get_reg_value(r, actual)) begin
        tx.value = actual;
        `uvm_info(get_name(),
                  $sformatf("RD 0x%03h -> 0x%016h [%s] (RAL)",
                            tx.addr, actual, r.get_name()), UVM_LOW)
      end else begin
        actual = shadow.exists(tx.addr[11:0]) ? shadow[tx.addr[11:0]] : 64'h0;
        tx.value = actual;
        `uvm_warning(get_name(),
                    $sformatf("RD 0x%03h -> 0x%016h [%s] (shadow fallback)",
                              tx.addr, actual, r.get_name()))
      end
    end else begin
      actual = shadow.exists(tx.addr[11:0]) ? shadow[tx.addr[11:0]] : 64'h0;
      tx.value = actual;
      `uvm_warning(get_name(),
                  $sformatf("RD 0x%03h -> 0x%016h : no reg_block",
                            tx.addr, actual))
    end
  endfunction : do_read

  // Ручной поиск подстроки в строке (Ограничение verilator)
  protected function int find_substr(string s, string sub);
    int len_s   = s.len();
    int len_sub = sub.len();
    if (len_sub == 0 || len_sub > len_s) return -1;

    for (int i = 0; i <= len_s - len_sub; i++) begin
      if (s.substr(i, i + len_sub - 1) == sub)
        return i;
    end
    return -1;
  endfunction : find_substr

  // Извлечение значения из sprint() через парсинг
  protected function bit get_reg_value(uvm_reg r, output uvm_reg_data_t value);
    string s;
    int    pos;
    int    hpos;
    int    matched;

    s = r.sprint();

    pos = find_substr(s, "=64'h");
    if (pos < 0) pos = find_substr(s, "=32'h");
    if (pos < 0) return 0;

    // pos — индекс '=', после него "64'h..."
    // Найти "'h" после '='
    hpos = find_substr(s.substr(pos, s.len() - 1), "'h");
    if (hpos < 0) return 0;

    // hpos — индекс "'h" в подстроке, начиная с '='
    // Реальная позиция "'h" в s:
    hpos = pos + hpos;

    // Передаём $sscanf строку ПОСЛЕ 'h
    matched = $sscanf(s.substr(hpos + 2, s.len() - 1), "%h", value);
    return (matched == 1);
  endfunction : get_reg_value

  //------------------------------------------------------------------------------
  // Проверка согласованности RAL и shadow
  //------------------------------------------------------------------------------
  function void check_ral_vs_shadow();
    int errors = 0;
    int checked = 0;

    foreach (shadow[addr]) begin
      uvm_reg        r;
      uvm_reg_data_t ral_val;
      uvm_reg_data_t shadow_val;

      r = find_reg(addr);
      if (r == null) begin
        `uvm_warning(get_name(),
                    $sformatf("shadow[0x%03h] exists, no RAL reg", addr))
        continue;
      end

      shadow_val = shadow[addr];
      if (!get_reg_value(r, ral_val)) begin
        `uvm_warning(get_name(),
                    $sformatf("cannot read RAL[%s]", r.get_name()))
        continue;
      end

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
