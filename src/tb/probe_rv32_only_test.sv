//------------------------------------------------------------------------------
// probe_rv32_only_test.sv
//
// Проверка RV32-only регистров (xlen:32), выгруженных отдельно.
// Перебор адресов 0x000..0xFFF по csr_rv32_only_reg_block; запись в эти
// регистры сопровождается UVM_WARNING в scoreboard. Ожидается 113 регистров.
//------------------------------------------------------------------------------

class probe_rv32_only_test extends probe_base_test;
  `uvm_component_utils(probe_rv32_only_test)

  localparam int unsigned EXPECTED_REGS = 113;

  function new(string name = "probe_rv32_only_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task test_imp();
    int unsigned checked = 0;

    `uvm_info(get_type_name(), "probe_rv32_only_test: start", UVM_LOW)

    for (int unsigned a = 0; a < 4096; a++) begin
      uvm_reg r;
      r = env_o.reg_rv32_only_model.csr_map.get_reg_by_offset(a);
      if (r != null) begin
        read_check_reg(r, 64'h0000_0000_0000_0000 | a);
        checked++;
      end
    end

    `uvm_info(get_type_name(),
              $sformatf("checked %0d RV32-only registers", checked), UVM_LOW)

    if (checked != EXPECTED_REGS) begin
      `uvm_error(get_name(),
                 $sformatf("expected %0d registers, checked %0d",
                           EXPECTED_REGS, checked))
    end

    #10;
    env_o.probe_sb.dump_all();

    `uvm_info(get_type_name(), "probe_rv32_only_test: done", UVM_LOW)
  endtask : test_imp
endclass : probe_rv32_only_test
