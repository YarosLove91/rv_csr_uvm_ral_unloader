//------------------------------------------------------------------------------
// probe_zicntr_test.sv
//
// Test for extension Zicntr (group Zicntr): cycle, time, instret.
// ВНИМАНИЕ: член reg_block для `time` — `time_f` (time — ключевое слово SV).
//------------------------------------------------------------------------------

class probe_zicntr_test extends probe_base_test;
  `uvm_component_utils(probe_zicntr_test)

  function new(string name = "probe_zicntr_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_zicntr_reg_block rb;

    `uvm_info(get_type_name(), "probe_zicntr_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Zicntr;

    read_check_reg(rb.cycle,    64'h0000_0000_0000_1000);
    read_check_reg(rb.time_f,   64'h0000_0000_0000_2000);
    read_check_reg(rb.instret,  64'h0000_0000_0000_3000);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_zicntr_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_zicntr_test
