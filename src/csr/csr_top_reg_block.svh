//------------------------------------------------------------------------------
// csr_top_reg_block.svh
//
// Единый RAL-блок для всех CSR RVA23S64.
// Submap'ы по группам.
//
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_top_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_top_reg_block )

  //--------------------------------------------------------------------------
  // Подблоки (по группам)
  //--------------------------------------------------------------------------
  rand csr_sm_reg_block Sm;
  rand csr_s_reg_block S;
  rand csr_h_reg_block H;
  rand csr_u_reg_block U;
  rand csr_f_reg_block F;
  rand csr_sdtrig_reg_block Sdtrig;
  rand csr_sscofpmf_reg_block Sscofpmf;
  rand csr_ssstateen_reg_block Ssstateen;
  rand csr_sstc_reg_block Sstc;
  rand csr_zicntr_reg_block Zicntr;
  rand csr_zihpm_reg_block Zihpm;
  rand csr_zvl32b_reg_block Zvl32b;

  //--------------------------------------------------------------------------
  // Корневой map
  //--------------------------------------------------------------------------
  uvm_reg_map csr_map;

  //--------------------------------------------------------------------------
  // new
  //--------------------------------------------------------------------------
  function new( string name = "csr_top_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  //--------------------------------------------------------------------------
  // build
  //--------------------------------------------------------------------------
  virtual function void build();
    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    build_sm();
    build_s();
    build_h();
    build_u();
    build_f();
    build_sdtrig();
    build_sscofpmf();
    build_ssstateen();
    build_sstc();
    build_zicntr();
    build_zihpm();
    build_zvl32b();

    lock_model();
  endfunction : build

  //--------------------------------------------------------------------------
  // Sm
  //--------------------------------------------------------------------------
  protected function void build_sm();
    Sm = csr_sm_reg_block::type_id::create("Sm");
    Sm.configure( this );
    Sm.build();

    csr_map.add_submap( Sm.csr_map, 12'h000 );
  endfunction : build_sm

  //--------------------------------------------------------------------------
  // S
  //--------------------------------------------------------------------------
  protected function void build_s();
    S = csr_s_reg_block::type_id::create("S");
    S.configure( this );
    S.build();

    csr_map.add_submap( S.csr_map, 12'h000 );
  endfunction : build_s

  //--------------------------------------------------------------------------
  // H
  //--------------------------------------------------------------------------
  protected function void build_h();
    H = csr_h_reg_block::type_id::create("H");
    H.configure( this );
    H.build();

    csr_map.add_submap( H.csr_map, 12'h000 );
  endfunction : build_h

  //--------------------------------------------------------------------------
  // U
  //--------------------------------------------------------------------------
  protected function void build_u();
    U = csr_u_reg_block::type_id::create("U");
    U.configure( this );
    U.build();

    csr_map.add_submap( U.csr_map, 12'h000 );
  endfunction : build_u

  //--------------------------------------------------------------------------
  // F
  //--------------------------------------------------------------------------
  protected function void build_f();
    F = csr_f_reg_block::type_id::create("F");
    F.configure( this );
    F.build();

    csr_map.add_submap( F.csr_map, 12'h000 );
  endfunction : build_f

  //--------------------------------------------------------------------------
  // Sdtrig
  //--------------------------------------------------------------------------
  protected function void build_sdtrig();
    Sdtrig = csr_sdtrig_reg_block::type_id::create("Sdtrig");
    Sdtrig.configure( this );
    Sdtrig.build();

    csr_map.add_submap( Sdtrig.csr_map, 12'h000 );
  endfunction : build_sdtrig

  //--------------------------------------------------------------------------
  // Sscofpmf
  //--------------------------------------------------------------------------
  protected function void build_sscofpmf();
    Sscofpmf = csr_sscofpmf_reg_block::type_id::create("Sscofpmf");
    Sscofpmf.configure( this );
    Sscofpmf.build();

    csr_map.add_submap( Sscofpmf.csr_map, 12'h000 );
  endfunction : build_sscofpmf

  //--------------------------------------------------------------------------
  // Ssstateen
  //--------------------------------------------------------------------------
  protected function void build_ssstateen();
    Ssstateen = csr_ssstateen_reg_block::type_id::create("Ssstateen");
    Ssstateen.configure( this );
    Ssstateen.build();

    csr_map.add_submap( Ssstateen.csr_map, 12'h000 );
  endfunction : build_ssstateen

  //--------------------------------------------------------------------------
  // Sstc
  //--------------------------------------------------------------------------
  protected function void build_sstc();
    Sstc = csr_sstc_reg_block::type_id::create("Sstc");
    Sstc.configure( this );
    Sstc.build();

    csr_map.add_submap( Sstc.csr_map, 12'h000 );
  endfunction : build_sstc

  //--------------------------------------------------------------------------
  // Zicntr
  //--------------------------------------------------------------------------
  protected function void build_zicntr();
    Zicntr = csr_zicntr_reg_block::type_id::create("Zicntr");
    Zicntr.configure( this );
    Zicntr.build();

    csr_map.add_submap( Zicntr.csr_map, 12'h000 );
  endfunction : build_zicntr

  //--------------------------------------------------------------------------
  // Zihpm
  //--------------------------------------------------------------------------
  protected function void build_zihpm();
    Zihpm = csr_zihpm_reg_block::type_id::create("Zihpm");
    Zihpm.configure( this );
    Zihpm.build();

    csr_map.add_submap( Zihpm.csr_map, 12'h000 );
  endfunction : build_zihpm

  //--------------------------------------------------------------------------
  // Zvl32b
  //--------------------------------------------------------------------------
  protected function void build_zvl32b();
    Zvl32b = csr_zvl32b_reg_block::type_id::create("Zvl32b");
    Zvl32b.configure( this );
    Zvl32b.build();

    csr_map.add_submap( Zvl32b.csr_map, 12'h000 );
  endfunction : build_zvl32b

  //--------------------------------------------------------------------------
  // Единый поиск регистра по адресу
  //--------------------------------------------------------------------------
  function uvm_reg get_reg_by_addr( bit [31:0] addr );
    return csr_map.get_reg_by_offset( addr );
  endfunction : get_reg_by_addr

endclass : csr_top_reg_block
