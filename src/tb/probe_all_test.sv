//------------------------------------------------------------------------------
// probe_all_test.sv
//
// Проверка ВСЕХ регистров RAL: перебор адресов 0x000..0xFFF, для каждого
// найденного в csr_top_reg_block регистра — read_check_reg (write -> read).
// Ожидается 243 регистра (12 расширений профиля RVA23S64).
//------------------------------------------------------------------------------

class probe_all_test extends probe_base_test;
  `uvm_component_utils(probe_all_test)

  localparam int unsigned EXPECTED_REGS = 243;

  function new(string name = "probe_all_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    int unsigned checked = 0;

    `uvm_info(get_type_name(), "probe_all_test: start", UVM_LOW)

    for (int unsigned a = 0; a < 4096; a++) begin
      uvm_reg r;
      r = env_o.reg_top_model.get_reg_by_addr(a);
      if (r != null) begin
        read_check_reg(r, 64'h0000_0000_0000_0000 | a);
        checked++;
      end
    end

    `uvm_info(get_type_name(),
              $sformatf("checked %0d registers", checked), UVM_LOW)

    if (checked != EXPECTED_REGS) begin
      `uvm_error(get_name(),
                 $sformatf("expected %0d registers, checked %0d",
                           EXPECTED_REGS, checked))
    end

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_all_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_all_test
