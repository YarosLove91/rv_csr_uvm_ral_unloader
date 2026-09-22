class probe_test extends uvm_test;
  `uvm_component_utils(probe_test)

  env env_o;

  function new(string name = "probe_test", uvm_component parent = null);
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
    probe_transaction tx;

    `uvm_info(get_type_name(), "probe_test: start", UVM_LOW)

    // mstatus = 0x1880
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = 32'h300;
    tx.value    = 64'h0000_0000_0000_1880;
    tx.rd_or_wr = 1'b0;   // write
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);

    // mie = 0x0A8A
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = 32'h304;
    tx.value    = 64'h0000_0000_0000_0A8A;
    tx.rd_or_wr = 1'b0;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);

    // mepc = 0x80000000
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = 32'h341;
    tx.value    = 64'h0000_0000_8000_0000;
    tx.rd_or_wr = 1'b0;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);

    // mcause = 0x8000000000000007
    tx = probe_transaction::type_id::create("tx");
    tx.addr     = 32'h342;
    tx.value    = 64'h8000_0000_0000_0007;
    tx.rd_or_wr = 1'b0;
    tx.valid    = 1'b1;
    env_o.probe_ap.write(tx);

    #10;

    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_test: done", UVM_LOW)
  endtask : test_imp

  function void end_of_elaboration_phase( uvm_phase phase );
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase
endclass : probe_test
