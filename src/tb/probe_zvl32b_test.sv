//------------------------------------------------------------------------------
// probe_zvl32b_test.sv
//
// Test for extension Zvl32b (group Zvl32b): vstart, vxsat, vxrm, vcsr,
// vl, vtype, vlenb.
//------------------------------------------------------------------------------

class probe_zvl32b_test extends probe_base_test;
  `uvm_component_utils(probe_zvl32b_test)

  function new(string name = "probe_zvl32b_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_zvl32b_reg_block rb;

    `uvm_info(get_type_name(), "probe_zvl32b_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Zvl32b;

    read_check_reg(rb.vstart, 64'h0000_0000_0000_0001);
    read_check_reg(rb.vxsat,  64'h0000_0000_0000_0001);
    read_check_reg(rb.vxrm,   64'h0000_0000_0000_0002);
    read_check_reg(rb.vcsr,   64'h0000_0000_0000_0003);
    read_check_reg(rb.vl,     64'h0000_0000_0000_0004);
    read_check_reg(rb.vtype,  64'h0000_0000_0000_0005);
    read_check_reg(rb.vlenb,  64'h0000_0000_0000_0010);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_zvl32b_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_zvl32b_test
