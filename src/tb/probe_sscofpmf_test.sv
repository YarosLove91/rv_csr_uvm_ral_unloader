//------------------------------------------------------------------------------
// probe_sscofpmf_test.sv
//
// Test for extension Sscofpmf (group Sscofpmf): scountovf.
//------------------------------------------------------------------------------

class probe_sscofpmf_test extends probe_base_test;
  `uvm_component_utils(probe_sscofpmf_test)

  function new(string name = "probe_sscofpmf_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_sscofpmf_reg_block rb;

    `uvm_info(get_type_name(), "probe_sscofpmf_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Sscofpmf;

    read_check_reg(rb.scountovf, 64'h0000_0000_0000_00FF);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_sscofpmf_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_sscofpmf_test
