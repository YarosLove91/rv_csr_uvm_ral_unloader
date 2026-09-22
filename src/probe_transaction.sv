//------------------------------------------------------------------------------
// Class: probe_transaction
//
// 64-битная транзакция «пробника»: значение CSR, пришедшее из RTL.
//   rd_or_wr = 0 — write (значение записано в CSR)
//   rd_or_wr = 1 — read  (значение прочитано из CSR)
//------------------------------------------------------------------------------
class probe_transaction extends uvm_sequence_item;
  rand bit [31:0] addr;      // адрес CSR: 0x300, 0x304, 0x341, 0x342
  rand bit [63:0] value;     // 64-битное значение
  rand bit        rd_or_wr;  // 0 = write, 1 = read
  rand bit        valid;

  function new(string name = "probe_transaction");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(probe_transaction)
    `uvm_field_int(addr,     UVM_ALL_ON)
    `uvm_field_int(value,    UVM_ALL_ON)
    `uvm_field_int(rd_or_wr, UVM_ALL_ON)
    `uvm_field_int(valid,    UVM_ALL_ON)
  `uvm_object_utils_end

  function string convert2string();
    return $sformatf("probe addr=0x%03h %s value=0x%016h valid=%b",
                      addr,
                      rd_or_wr ? "RD" : "WR",
                      value,
                      valid);
  endfunction : convert2string
endclass : probe_transaction