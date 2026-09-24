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

  virtual task write_reg(uvm_reg r, logic [63:0] value);
    probe_transaction tx;
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = r.get_address();
    tx.value    = value;
    tx.rd_or_wr = CSR_WRITE;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);
  endtask : write_reg

  virtual task read_reg(uvm_reg r, output logic [63:0] value);
    probe_transaction tx;
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = r.get_address();
    tx.value    = 'x;
    tx.rd_or_wr = CSR_READ;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);
    value = tx.value;
  endtask : read_reg

  virtual task read_check_reg(uvm_reg r, logic [63:0] expected);
    logic [63:0] actual;

    write_reg(r, expected);
    read_reg(r, actual);

    if (actual !== expected) begin
      `uvm_error(get_name(),
                $sformatf("%s mismatch: wrote=0x%016h read=0x%016h",
                          r.get_name(), expected, actual))
    end
    else begin
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
    csr_sm_base_reg_block rb;

    `uvm_info(get_type_name(), "probe_sm_base_test: start", UVM_LOW)

    rb = env_o.reg_top_model.sm_base;

    read_check_reg(rb.mstatus,    64'h0000_0000_0000_1880);
    read_check_reg(rb.misa,       64'h8000_0000_0014_112D);
    read_check_reg(rb.medeleg,    64'h0000_0000_0000_B3FF);
    read_check_reg(rb.mideleg,    64'h0000_0000_0000_0222);
    read_check_reg(rb.mie,        64'h0000_0000_0000_0A8A);
    read_check_reg(rb.mtvec,      64'h0000_0000_8000_0001);
    read_check_reg(rb.mcounteren, 64'h0000_0000_0000_0007);
    read_check_reg(rb.mscratch,   64'hDEAD_BEEF_CAFE_BABE);
    read_check_reg(rb.mepc,       64'h0000_0000_8000_0000);
    read_check_reg(rb.mcause,     64'h8000_0000_0000_0007);
    read_check_reg(rb.mtval,      64'h0000_0000_DEAD_BEEF);
    read_check_reg(rb.mip,        64'h0000_0000_0000_0888);
    read_check_reg(rb.mvendorid,  64'h0000_0000_0000_0000);
    read_check_reg(rb.marchid,    64'h0000_0000_0000_0000);
    read_check_reg(rb.mimpid,     64'h0000_0000_0000_0001);
    read_check_reg(rb.mhartid,    64'h0000_0000_0000_0000);
    read_check_reg(rb.mconfigptr, 64'h0000_0000_0000_0000);

    #10;
    env_o.probe_sb.dump_all();
  endtask : test_imp
endclass : probe_sm_base_test


class probe_sm_zicntr_test extends probe_base_test;
  `uvm_component_utils(probe_sm_zicntr_test)

  function new(string name = "probe_sm_zicntr_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sm_zicntr_reg_block rb;

    `uvm_info(get_type_name(), "probe_sm_zicntr_test: start", UVM_LOW)

    rb = env_o.reg_top_model.sm_zicntr;

    read_check_reg(rb.mcountinhibit, 64'h0000_0000_0000_0005);
    read_check_reg(rb.mcycle,       64'h0000_0000_0000_1000);
    read_check_reg(rb.minstret,     64'h0000_0000_0000_2000);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sm_zicntr_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sm_zicntr_test