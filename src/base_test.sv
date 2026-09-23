//------------------------------------------------------------------------------
// probe_base_test.sv
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

  // Записать
  virtual task write_csr(bit [31:0] addr, logic [63:0] value);
    probe_transaction tx;
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = addr;
    tx.value    = value;
    tx.rd_or_wr = 1'b0;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);
  endtask : write_csr

  // Прочитать
  virtual task read_csr(bit [31:0] addr, output logic [63:0] value);
    probe_transaction tx;
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = addr;
    tx.value    = 'x;
    tx.rd_or_wr = 1'b1;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);
    value = tx.value;
  endtask : read_csr

  // Записать → считать → сравнить
  virtual task read_check_csr(bit [31:0] addr, logic [63:0] expected);
    logic [63:0] actual;

    write_csr(addr, expected);
    read_csr(addr, actual);

    if (actual !== expected) begin
      `uvm_error (get_name(),
                $sformatf("CSR 0x%03h mismatch: wrote=0x%016h read=0x%016h",
                          addr, expected, actual))
    end
    else begin
      `uvm_info(get_name(),
                $sformatf("CSR 0x%03h = 0x%016h OK", addr, actual),
                UVM_LOW)
    end
  endtask : read_check_csr

  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase
endclass : probe_base_test

//------------------------------------------------------------------------------
// probe_sm_base_test.sv
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// probe_sm_base_test.sv
//
// Тест для Sm_base: mstatus, misa, medeleg, mideleg, mie, mtvec,
// mcounteren, mscratch, mepc, mcause, mtval, mip,
// mvendorid, marchid, mimpid, mhartid, mconfigptr.
//------------------------------------------------------------------------------
class probe_sm_base_test extends probe_base_test;
  `uvm_component_utils(probe_sm_base_test)

  function new(string name = "probe_sm_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    `uvm_info(get_type_name(), "probe_sm_base_test: start", UVM_LOW)

    read_check_csr(32'h300, 64'h0000_0000_0000_1880);   // mstatus
    read_check_csr(32'h301, 64'h8000_0000_0014_112D);   // misa
    read_check_csr(32'h302, 64'h0000_0000_0000_B3FF);   // medeleg
    read_check_csr(32'h303, 64'h0000_0000_0000_0222);   // mideleg
    read_check_csr(32'h304, 64'h0000_0000_0000_0A8A);   // mie
    read_check_csr(32'h305, 64'h0000_0000_8000_0001);   // mtvec
    read_check_csr(32'h306, 64'h0000_0000_0000_0007);   // mcounteren
    read_check_csr(32'h340, 64'hDEAD_BEEF_CAFE_BABE);   // mscratch
    read_check_csr(32'h341, 64'h0000_0000_8000_0000);   // mepc
    read_check_csr(32'h342, 64'h8000_0000_0000_0007);   // mcause
    read_check_csr(32'h343, 64'h0000_0000_DEAD_BEEF);   // mtval
    read_check_csr(32'h344, 64'h0000_0000_0000_0888);   // mip
    read_check_csr(32'hF11, 64'h0000_0000_0000_0000);   // mvendorid
    read_check_csr(32'hF12, 64'h0000_0000_0000_0000);   // marchid
    read_check_csr(32'hF13, 64'h0000_0000_0000_0001);   // mimpid
    read_check_csr(32'hF14, 64'h0000_0000_0000_0000);   // mhartid
    read_check_csr(32'hF15, 64'h0000_0000_0000_0000);   // mconfigptr

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sm_base_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sm_base_test
