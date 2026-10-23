//------------------------------------------------------------------------------
// probe_smcsrind_test.sv
//
// Test for extension Smcsrind (group Smcsrind): vsiselect, vsireg, vsireg2..6,
// miselect (0x350), mireg, mireg2..6.
//------------------------------------------------------------------------------

class probe_smcsrind_test extends probe_base_test;
  `uvm_component_utils(probe_smcsrind_test)

  function new(string name = "probe_smcsrind_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    csr_smcsrind_reg_block rb;

    `uvm_info(get_type_name(), "probe_smcsrind_test: start", UVM_LOW)

    rb = env_o.reg_top_model.Smcsrind;

    read_check_reg(rb.vsiselect, 64'h0000_0000_0000_0201);
    read_check_reg(rb.vsireg,    64'h0000_0000_0000_0202);
    read_check_reg(rb.vsireg2,   64'h0000_0000_0000_0203);
    read_check_reg(rb.vsireg3,   64'h0000_0000_0000_0204);
    read_check_reg(rb.vsireg4,   64'h0000_0000_0000_0205);
    read_check_reg(rb.vsireg5,   64'h0000_0000_0000_0206);
    read_check_reg(rb.vsireg6,   64'h0000_0000_0000_0207);
    read_check_reg(rb.miselect,  64'h0000_0000_0000_0208);
    read_check_reg(rb.mireg,     64'h0000_0000_0000_0209);
    read_check_reg(rb.mireg2,    64'h0000_0000_0000_020A);
    read_check_reg(rb.mireg3,    64'h0000_0000_0000_020B);
    read_check_reg(rb.mireg4,    64'h0000_0000_0000_020C);
    read_check_reg(rb.mireg5,    64'h0000_0000_0000_020D);
    read_check_reg(rb.mireg6,    64'h0000_0000_0000_020E);

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_smcsrind_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_smcsrind_test
