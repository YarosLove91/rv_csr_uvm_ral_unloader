//------------------------------------------------------------------------------
// csr_top_reg_block.svh
//
// A single RAL block for all CSR RVA23S64
// Submap's by groups: Sm_base, Sm_zicntr.
//------------------------------------------------------------------------------
class csr_top_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_top_reg_block )

  //----------------------------------------------------------------------------
  // Subblocks (by groups)
  //----------------------------------------------------------------------------
  rand csr_sm_base_reg_block   sm_base;
  rand csr_sm_zicntr_reg_block sm_zicntr;
  rand csr_sm_misc_reg_block   sm_misc;

  //----------------------------------------------------------------------------
  // Root map
  //----------------------------------------------------------------------------
  uvm_reg_map csr_map;

  //----------------------------------------------------------------------------
  // new
  //----------------------------------------------------------------------------
  function new(string name = "csr_top_reg_block" );
    super.new(.name(name), 
              .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  //----------------------------------------------------------------------------
  // build
  //----------------------------------------------------------------------------
  virtual function void build();
    // 1.
    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    // 2.
    build_sm_base();
    build_sm_zicntr();
    build_sm_misc();

    // 3.
    lock_model();
  endfunction : build

  //----------------------------------------------------------------------------
  // Sm_base
  //----------------------------------------------------------------------------
  protected function void build_sm_base();
    sm_base = csr_sm_base_reg_block::type_id::create("sm_base");
    sm_base.configure( this );
    sm_base.build();

    csr_map.add_submap( sm_base.csr_map, 12'h000 );
  endfunction : build_sm_base

  //----------------------------------------------------------------------------
  // Sm_zicntr
  //----------------------------------------------------------------------------
  protected function void build_sm_zicntr();
    sm_zicntr = csr_sm_zicntr_reg_block::type_id::create("sm_zicntr");
    sm_zicntr.configure( this );
    sm_zicntr.build();

    csr_map.add_submap( sm_zicntr.csr_map, 12'h000 );
  endfunction : build_sm_zicntr

  //----------------------------------------------------------------------------
  // Sm_misc
  //----------------------------------------------------------------------------
  protected function void build_sm_misc();
    sm_misc = csr_sm_misc_reg_block::type_id::create("sm_misc");
    sm_misc.configure( this );
    sm_misc.build();

    csr_map.add_submap( sm_misc.csr_map, 12'h000 );
  endfunction : build_sm_misc

  //----------------------------------------------------------------------------
  // Unified search for the register by address
  //----------------------------------------------------------------------------
  function uvm_reg get_reg_by_addr( bit [31:0] addr );
    return csr_map.get_reg_by_offset( addr );
  endfunction : get_reg_by_addr
endclass : csr_top_reg_block