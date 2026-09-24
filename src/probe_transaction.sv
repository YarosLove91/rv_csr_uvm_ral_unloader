//------------------------------------------------------------------------------
// Class: probe_transaction
//
// 64-битная транзакция «пробника»: значение CSR, пришедшее из RTL.
//   rd_or_wr = 0 — write (значение записано в CSR)
//   rd_or_wr = 1 — read  (значение прочитано из CSR)
//------------------------------------------------------------------------------
class probe_transaction extends uvm_sequence_item;
  rand csr_addr_t addr;      // 12 bit
  rand csr_data_t value;     // 64 bit
  rand bit        rd_or_wr;  // 0 = write, 1 = read
  rand bit        valid;

  function new(string name = "probe_transaction");
    super.new(name);
  endfunction : new

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