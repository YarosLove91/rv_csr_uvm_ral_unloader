//------------------------------------------------------------------------------
// probe_zihpm_test.sv
//
// Test for extension Zihpm (group Zihpm): hpmcounter3..31.
//------------------------------------------------------------------------------

class probe_zihpm_test extends probe_base_test;
  `uvm_component_utils(probe_zihpm_test)

  function new(string name = "probe_zihpm_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_zihpm_reg_block rb;

    `uvm_info(get_type_name(), "probe_zihpm_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Zihpm;

    read_check_reg(rb.hpmcounter3, 64'h0000000000000001);
    read_check_reg(rb.hpmcounter4, 64'h0000000000000002);
    read_check_reg(rb.hpmcounter5, 64'h0000000000000003);
    read_check_reg(rb.hpmcounter6, 64'h0000000000000004);
    read_check_reg(rb.hpmcounter7, 64'h0000000000000005);
    read_check_reg(rb.hpmcounter8, 64'h0000000000000006);
    read_check_reg(rb.hpmcounter9, 64'h0000000000000007);
    read_check_reg(rb.hpmcounter10, 64'h0000000000000008);
    read_check_reg(rb.hpmcounter11, 64'h0000000000000009);
    read_check_reg(rb.hpmcounter12, 64'h000000000000000a);
    read_check_reg(rb.hpmcounter13, 64'h000000000000000b);
    read_check_reg(rb.hpmcounter14, 64'h000000000000000c);
    read_check_reg(rb.hpmcounter15, 64'h000000000000000d);
    read_check_reg(rb.hpmcounter16, 64'h000000000000000e);
    read_check_reg(rb.hpmcounter17, 64'h000000000000000f);
    read_check_reg(rb.hpmcounter18, 64'h0000000000000010);
    read_check_reg(rb.hpmcounter19, 64'h0000000000000011);
    read_check_reg(rb.hpmcounter20, 64'h0000000000000012);
    read_check_reg(rb.hpmcounter21, 64'h0000000000000013);
    read_check_reg(rb.hpmcounter22, 64'h0000000000000014);
    read_check_reg(rb.hpmcounter23, 64'h0000000000000015);
    read_check_reg(rb.hpmcounter24, 64'h0000000000000016);
    read_check_reg(rb.hpmcounter25, 64'h0000000000000017);
    read_check_reg(rb.hpmcounter26, 64'h0000000000000018);
    read_check_reg(rb.hpmcounter27, 64'h0000000000000019);
    read_check_reg(rb.hpmcounter28, 64'h000000000000001a);
    read_check_reg(rb.hpmcounter29, 64'h000000000000001b);
    read_check_reg(rb.hpmcounter30, 64'h000000000000001c);
    read_check_reg(rb.hpmcounter31, 64'h000000000000001d);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_zihpm_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_zihpm_test
