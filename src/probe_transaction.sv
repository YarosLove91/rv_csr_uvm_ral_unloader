//------------------------------------------------------------------------------
// Class: probe_transaction
//------------------------------------------------------------------------------

class probe_transaction extends uvm_sequence_item;
  rand csr_addr_t   addr;      // 12 bit
  rand csr_data_t   value;     // 64 bit
  rand csr_access_e rd_or_wr;  // CSR_READ / CSR_WRITE
  rand bit          valid;

  function new(string name = "probe_transaction");
    super.new(name);
  endfunction : new

  `uvm_object_utils_begin(probe_transaction)
    `uvm_field_int    (addr,     UVM_ALL_ON)
    `uvm_field_int    (value,    UVM_ALL_ON)
    `uvm_field_enum   (csr_access_e, rd_or_wr, UVM_ALL_ON)
    `uvm_field_int    (valid,    UVM_ALL_ON)
  `uvm_object_utils_end

  function string convert2string();
    return $sformatf("probe addr=0x%03h %s value=0x%016h valid=%b",
                      addr,
                      (rd_or_wr == CSR_READ) ? "RD" : "WR",
                      value,
                      valid);
  endfunction : convert2string
endclass : probe_transaction