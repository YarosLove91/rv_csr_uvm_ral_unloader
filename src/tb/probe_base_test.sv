//------------------------------------------------------------------------------
// probe_base_test.sv
//
// Base test: infrastructure (env, objection, write/read helpers).
// Concrete tests inherit from it.
//------------------------------------------------------------------------------

class probe_base_test extends uvm_test;
  `uvm_component_utils(probe_base_test)

  env env_o;

  function new(string name = "probe_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env_o = env::type_id::create("env_o", this);
  endfunction : build_phase

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    test_imp();
    #20;
    phase.drop_objection(this);
    `uvm_info(get_type_name(), "End of testcase", UVM_LOW)
  endtask : run_phase

  virtual task test_imp();
    `uvm_info(get_type_name(), "Default test_imp", UVM_LOW)
  endtask : test_imp

  virtual task write_reg(uvm_reg r, csr_data_t value);
    probe_transaction tx;
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = csr_addr_t'(r.get_address());
    tx.value    = value;
    tx.rd_or_wr = CSR_WRITE;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);
  endtask : write_reg

  virtual task read_reg(uvm_reg r, output csr_data_t value);
    probe_transaction tx;
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = csr_addr_t'(r.get_address());
    tx.value    = 'x;
    tx.rd_or_wr = CSR_READ;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);
    value = tx.value;
  endtask : read_reg

  virtual task read_check_reg(uvm_reg r, csr_data_t expected);
    csr_data_t actual;
    write_reg(r, expected);
    read_reg(r, actual);

    if (actual !== expected) begin
      `uvm_error(get_name(),
                $sformatf("%s mismatch: wrote=0x%016h read=0x%016h",
                          r.get_name(), expected, actual))
    end else begin
      `uvm_info(get_name(),
                $sformatf("%s = 0x%016h OK", r.get_name(), actual),
                UVM_LOW)
    end
  endtask : read_check_reg

  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase
endclass : probe_base_test
