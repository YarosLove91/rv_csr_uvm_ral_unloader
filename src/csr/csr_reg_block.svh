//------------------------------------------------------------------------------
// csr_reg_block.svh
//
// RAL-модель CSR. Собирает регистры из всех расширений.
//
// Порядок:
//   1. build_<ext>_extension()    — создаёт регистры расширения
//   2. csr_map = create_map(...)  — единый map для всех CSR
//   3. add_<ext>_to_map(csr_map)  — привязывает регистры к адресам
//   4. lock_model()               — финализирует
//------------------------------------------------------------------------------
class csr_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_reg_block )

  //----------------------------------------------------------------------------
  // M-extension
  //----------------------------------------------------------------------------
  rand mstatus_reg mstatus;
  rand mie_reg     mie;
  rand mepc_reg    mepc;
  rand mcause_reg  mcause;

  //----------------------------------------------------------------------------
  // Map
  //----------------------------------------------------------------------------
  uvm_reg_map csr_map;

  //----------------------------------------------------------------------------
  // new
  //----------------------------------------------------------------------------
  function new( string name = "csr_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  //----------------------------------------------------------------------------
  // build
  //----------------------------------------------------------------------------
  virtual function void build();
    // Собрать регистры всех расширений
    build_m_extension();
    // build_s_extension();     <-- позже
    // build_m_a_extension();   <-- позже

    // Единый map для CSR
    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    // Привязать регистры к адресам
    add_m_extension_to_map(csr_map);
    // add_s_extension_to_map(csr_map);    <-- позже
    // add_m_a_extension_to_map(csr_map);  <-- позже

    lock_model();
  endfunction : build

  //----------------------------------------------------------------------------
  // M-extension: build
  //----------------------------------------------------------------------------
  protected function void build_m_extension();
    mstatus = mstatus_reg::type_id::create("mstatus");
    mstatus.configure( .blk_parent(this) );
    mstatus.build();

    mie = mie_reg::type_id::create("mie");
    mie.configure( .blk_parent(this) );
    mie.build();

    mepc = mepc_reg::type_id::create("mepc");
    mepc.configure( .blk_parent(this) );
    mepc.build();

    mcause = mcause_reg::type_id::create("mcause");
    mcause.configure( .blk_parent(this) );
    mcause.build();
  endfunction : build_m_extension

  //----------------------------------------------------------------------------
  // M-extension: add to map
  //----------------------------------------------------------------------------
  protected function void add_m_extension_to_map( uvm_reg_map m );
    m.add_reg(mstatus, 12'h300, "RW");
    m.add_reg(mie,     12'h304, "RW");
    m.add_reg(mepc,    12'h341, "RW");
    m.add_reg(mcause,  12'h342, "RW");
  endfunction : add_m_extension_to_map

  //----------------------------------------------------------------------------
  // Хелпер: регистр по адресу
  //----------------------------------------------------------------------------
  function uvm_reg get_reg_by_addr( bit [31:0] addr );
    case (addr)
      32'h300: return mstatus;
      32'h304: return mie;
      32'h341: return mepc;
      32'h342: return mcause;
      default: return null;
    endcase
  endfunction : get_reg_by_addr

endclass : csr_reg_block
