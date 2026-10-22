//------------------------------------------------------------------------------
// csr_rv32_only_reg_block.svh
//
// RAL-модель rv32_only.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_rv32_only_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_rv32_only_reg_block )

  rand stimecmph_reg stimecmph;
  rand vstimecmph_reg vstimecmph;
  rand mstatush_reg mstatush;
  rand medelegh_reg medelegh;
  rand menvcfgh_reg menvcfgh;
  rand pmpcfg1_reg pmpcfg1;
  rand pmpcfg3_reg pmpcfg3;
  rand pmpcfg5_reg pmpcfg5;
  rand pmpcfg7_reg pmpcfg7;
  rand pmpcfg9_reg pmpcfg9;
  rand pmpcfg11_reg pmpcfg11;
  rand pmpcfg13_reg pmpcfg13;
  rand pmpcfg15_reg pmpcfg15;
  rand hedelegh_reg hedelegh;
  rand htimedeltah_reg htimedeltah;
  rand henvcfgh_reg henvcfgh;
  rand hstateen0h_reg hstateen0h;
  rand hstateen1h_reg hstateen1h;
  rand hstateen2h_reg hstateen2h;
  rand hstateen3h_reg hstateen3h;
  rand mhpmevent3h_reg mhpmevent3h;
  rand mhpmevent4h_reg mhpmevent4h;
  rand mhpmevent5h_reg mhpmevent5h;
  rand mhpmevent6h_reg mhpmevent6h;
  rand mhpmevent7h_reg mhpmevent7h;
  rand mhpmevent8h_reg mhpmevent8h;
  rand mhpmevent9h_reg mhpmevent9h;
  rand mhpmevent10h_reg mhpmevent10h;
  rand mhpmevent11h_reg mhpmevent11h;
  rand mhpmevent12h_reg mhpmevent12h;
  rand mhpmevent13h_reg mhpmevent13h;
  rand mhpmevent14h_reg mhpmevent14h;
  rand mhpmevent15h_reg mhpmevent15h;
  rand mhpmevent16h_reg mhpmevent16h;
  rand mhpmevent17h_reg mhpmevent17h;
  rand mhpmevent18h_reg mhpmevent18h;
  rand mhpmevent19h_reg mhpmevent19h;
  rand mhpmevent20h_reg mhpmevent20h;
  rand mhpmevent21h_reg mhpmevent21h;
  rand mhpmevent22h_reg mhpmevent22h;
  rand mhpmevent23h_reg mhpmevent23h;
  rand mhpmevent24h_reg mhpmevent24h;
  rand mhpmevent25h_reg mhpmevent25h;
  rand mhpmevent26h_reg mhpmevent26h;
  rand mhpmevent27h_reg mhpmevent27h;
  rand mhpmevent28h_reg mhpmevent28h;
  rand mhpmevent29h_reg mhpmevent29h;
  rand mhpmevent30h_reg mhpmevent30h;
  rand mhpmevent31h_reg mhpmevent31h;
  rand mseccfgh_reg mseccfgh;
  rand mcycleh_reg mcycleh;
  rand minstreth_reg minstreth;
  rand mhpmcounter3h_reg mhpmcounter3h;
  rand mhpmcounter4h_reg mhpmcounter4h;
  rand mhpmcounter5h_reg mhpmcounter5h;
  rand mhpmcounter6h_reg mhpmcounter6h;
  rand mhpmcounter7h_reg mhpmcounter7h;
  rand mhpmcounter8h_reg mhpmcounter8h;
  rand mhpmcounter9h_reg mhpmcounter9h;
  rand mhpmcounter10h_reg mhpmcounter10h;
  rand mhpmcounter11h_reg mhpmcounter11h;
  rand mhpmcounter12h_reg mhpmcounter12h;
  rand mhpmcounter13h_reg mhpmcounter13h;
  rand mhpmcounter14h_reg mhpmcounter14h;
  rand mhpmcounter15h_reg mhpmcounter15h;
  rand mhpmcounter16h_reg mhpmcounter16h;
  rand mhpmcounter17h_reg mhpmcounter17h;
  rand mhpmcounter18h_reg mhpmcounter18h;
  rand mhpmcounter19h_reg mhpmcounter19h;
  rand mhpmcounter20h_reg mhpmcounter20h;
  rand mhpmcounter21h_reg mhpmcounter21h;
  rand mhpmcounter22h_reg mhpmcounter22h;
  rand mhpmcounter23h_reg mhpmcounter23h;
  rand mhpmcounter24h_reg mhpmcounter24h;
  rand mhpmcounter25h_reg mhpmcounter25h;
  rand mhpmcounter26h_reg mhpmcounter26h;
  rand mhpmcounter27h_reg mhpmcounter27h;
  rand mhpmcounter28h_reg mhpmcounter28h;
  rand mhpmcounter29h_reg mhpmcounter29h;
  rand mhpmcounter30h_reg mhpmcounter30h;
  rand mhpmcounter31h_reg mhpmcounter31h;
  rand cycleh_reg cycleh;
  rand timeh_reg timeh;
  rand instreth_reg instreth;
  rand hpmcounter3h_reg hpmcounter3h;
  rand hpmcounter4h_reg hpmcounter4h;
  rand hpmcounter5h_reg hpmcounter5h;
  rand hpmcounter6h_reg hpmcounter6h;
  rand hpmcounter7h_reg hpmcounter7h;
  rand hpmcounter8h_reg hpmcounter8h;
  rand hpmcounter9h_reg hpmcounter9h;
  rand hpmcounter10h_reg hpmcounter10h;
  rand hpmcounter11h_reg hpmcounter11h;
  rand hpmcounter12h_reg hpmcounter12h;
  rand hpmcounter13h_reg hpmcounter13h;
  rand hpmcounter14h_reg hpmcounter14h;
  rand hpmcounter15h_reg hpmcounter15h;
  rand hpmcounter16h_reg hpmcounter16h;
  rand hpmcounter17h_reg hpmcounter17h;
  rand hpmcounter18h_reg hpmcounter18h;
  rand hpmcounter19h_reg hpmcounter19h;
  rand hpmcounter20h_reg hpmcounter20h;
  rand hpmcounter21h_reg hpmcounter21h;
  rand hpmcounter22h_reg hpmcounter22h;
  rand hpmcounter23h_reg hpmcounter23h;
  rand hpmcounter24h_reg hpmcounter24h;
  rand hpmcounter25h_reg hpmcounter25h;
  rand hpmcounter26h_reg hpmcounter26h;
  rand hpmcounter27h_reg hpmcounter27h;
  rand hpmcounter28h_reg hpmcounter28h;
  rand hpmcounter29h_reg hpmcounter29h;
  rand hpmcounter30h_reg hpmcounter30h;
  rand hpmcounter31h_reg hpmcounter31h;

  uvm_reg_map csr_map;

  function new( string name = "csr_rv32_only_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    stimecmph = stimecmph_reg::type_id::create("stimecmph");
    stimecmph.configure( .blk_parent(this) );
    stimecmph.build();

    vstimecmph = vstimecmph_reg::type_id::create("vstimecmph");
    vstimecmph.configure( .blk_parent(this) );
    vstimecmph.build();

    mstatush = mstatush_reg::type_id::create("mstatush");
    mstatush.configure( .blk_parent(this) );
    mstatush.build();

    medelegh = medelegh_reg::type_id::create("medelegh");
    medelegh.configure( .blk_parent(this) );
    medelegh.build();

    menvcfgh = menvcfgh_reg::type_id::create("menvcfgh");
    menvcfgh.configure( .blk_parent(this) );
    menvcfgh.build();

    pmpcfg1 = pmpcfg1_reg::type_id::create("pmpcfg1");
    pmpcfg1.configure( .blk_parent(this) );
    pmpcfg1.build();

    pmpcfg3 = pmpcfg3_reg::type_id::create("pmpcfg3");
    pmpcfg3.configure( .blk_parent(this) );
    pmpcfg3.build();

    pmpcfg5 = pmpcfg5_reg::type_id::create("pmpcfg5");
    pmpcfg5.configure( .blk_parent(this) );
    pmpcfg5.build();

    pmpcfg7 = pmpcfg7_reg::type_id::create("pmpcfg7");
    pmpcfg7.configure( .blk_parent(this) );
    pmpcfg7.build();

    pmpcfg9 = pmpcfg9_reg::type_id::create("pmpcfg9");
    pmpcfg9.configure( .blk_parent(this) );
    pmpcfg9.build();

    pmpcfg11 = pmpcfg11_reg::type_id::create("pmpcfg11");
    pmpcfg11.configure( .blk_parent(this) );
    pmpcfg11.build();

    pmpcfg13 = pmpcfg13_reg::type_id::create("pmpcfg13");
    pmpcfg13.configure( .blk_parent(this) );
    pmpcfg13.build();

    pmpcfg15 = pmpcfg15_reg::type_id::create("pmpcfg15");
    pmpcfg15.configure( .blk_parent(this) );
    pmpcfg15.build();

    hedelegh = hedelegh_reg::type_id::create("hedelegh");
    hedelegh.configure( .blk_parent(this) );
    hedelegh.build();

    htimedeltah = htimedeltah_reg::type_id::create("htimedeltah");
    htimedeltah.configure( .blk_parent(this) );
    htimedeltah.build();

    henvcfgh = henvcfgh_reg::type_id::create("henvcfgh");
    henvcfgh.configure( .blk_parent(this) );
    henvcfgh.build();

    hstateen0h = hstateen0h_reg::type_id::create("hstateen0h");
    hstateen0h.configure( .blk_parent(this) );
    hstateen0h.build();

    hstateen1h = hstateen1h_reg::type_id::create("hstateen1h");
    hstateen1h.configure( .blk_parent(this) );
    hstateen1h.build();

    hstateen2h = hstateen2h_reg::type_id::create("hstateen2h");
    hstateen2h.configure( .blk_parent(this) );
    hstateen2h.build();

    hstateen3h = hstateen3h_reg::type_id::create("hstateen3h");
    hstateen3h.configure( .blk_parent(this) );
    hstateen3h.build();

    mhpmevent3h = mhpmevent3h_reg::type_id::create("mhpmevent3h");
    mhpmevent3h.configure( .blk_parent(this) );
    mhpmevent3h.build();

    mhpmevent4h = mhpmevent4h_reg::type_id::create("mhpmevent4h");
    mhpmevent4h.configure( .blk_parent(this) );
    mhpmevent4h.build();

    mhpmevent5h = mhpmevent5h_reg::type_id::create("mhpmevent5h");
    mhpmevent5h.configure( .blk_parent(this) );
    mhpmevent5h.build();

    mhpmevent6h = mhpmevent6h_reg::type_id::create("mhpmevent6h");
    mhpmevent6h.configure( .blk_parent(this) );
    mhpmevent6h.build();

    mhpmevent7h = mhpmevent7h_reg::type_id::create("mhpmevent7h");
    mhpmevent7h.configure( .blk_parent(this) );
    mhpmevent7h.build();

    mhpmevent8h = mhpmevent8h_reg::type_id::create("mhpmevent8h");
    mhpmevent8h.configure( .blk_parent(this) );
    mhpmevent8h.build();

    mhpmevent9h = mhpmevent9h_reg::type_id::create("mhpmevent9h");
    mhpmevent9h.configure( .blk_parent(this) );
    mhpmevent9h.build();

    mhpmevent10h = mhpmevent10h_reg::type_id::create("mhpmevent10h");
    mhpmevent10h.configure( .blk_parent(this) );
    mhpmevent10h.build();

    mhpmevent11h = mhpmevent11h_reg::type_id::create("mhpmevent11h");
    mhpmevent11h.configure( .blk_parent(this) );
    mhpmevent11h.build();

    mhpmevent12h = mhpmevent12h_reg::type_id::create("mhpmevent12h");
    mhpmevent12h.configure( .blk_parent(this) );
    mhpmevent12h.build();

    mhpmevent13h = mhpmevent13h_reg::type_id::create("mhpmevent13h");
    mhpmevent13h.configure( .blk_parent(this) );
    mhpmevent13h.build();

    mhpmevent14h = mhpmevent14h_reg::type_id::create("mhpmevent14h");
    mhpmevent14h.configure( .blk_parent(this) );
    mhpmevent14h.build();

    mhpmevent15h = mhpmevent15h_reg::type_id::create("mhpmevent15h");
    mhpmevent15h.configure( .blk_parent(this) );
    mhpmevent15h.build();

    mhpmevent16h = mhpmevent16h_reg::type_id::create("mhpmevent16h");
    mhpmevent16h.configure( .blk_parent(this) );
    mhpmevent16h.build();

    mhpmevent17h = mhpmevent17h_reg::type_id::create("mhpmevent17h");
    mhpmevent17h.configure( .blk_parent(this) );
    mhpmevent17h.build();

    mhpmevent18h = mhpmevent18h_reg::type_id::create("mhpmevent18h");
    mhpmevent18h.configure( .blk_parent(this) );
    mhpmevent18h.build();

    mhpmevent19h = mhpmevent19h_reg::type_id::create("mhpmevent19h");
    mhpmevent19h.configure( .blk_parent(this) );
    mhpmevent19h.build();

    mhpmevent20h = mhpmevent20h_reg::type_id::create("mhpmevent20h");
    mhpmevent20h.configure( .blk_parent(this) );
    mhpmevent20h.build();

    mhpmevent21h = mhpmevent21h_reg::type_id::create("mhpmevent21h");
    mhpmevent21h.configure( .blk_parent(this) );
    mhpmevent21h.build();

    mhpmevent22h = mhpmevent22h_reg::type_id::create("mhpmevent22h");
    mhpmevent22h.configure( .blk_parent(this) );
    mhpmevent22h.build();

    mhpmevent23h = mhpmevent23h_reg::type_id::create("mhpmevent23h");
    mhpmevent23h.configure( .blk_parent(this) );
    mhpmevent23h.build();

    mhpmevent24h = mhpmevent24h_reg::type_id::create("mhpmevent24h");
    mhpmevent24h.configure( .blk_parent(this) );
    mhpmevent24h.build();

    mhpmevent25h = mhpmevent25h_reg::type_id::create("mhpmevent25h");
    mhpmevent25h.configure( .blk_parent(this) );
    mhpmevent25h.build();

    mhpmevent26h = mhpmevent26h_reg::type_id::create("mhpmevent26h");
    mhpmevent26h.configure( .blk_parent(this) );
    mhpmevent26h.build();

    mhpmevent27h = mhpmevent27h_reg::type_id::create("mhpmevent27h");
    mhpmevent27h.configure( .blk_parent(this) );
    mhpmevent27h.build();

    mhpmevent28h = mhpmevent28h_reg::type_id::create("mhpmevent28h");
    mhpmevent28h.configure( .blk_parent(this) );
    mhpmevent28h.build();

    mhpmevent29h = mhpmevent29h_reg::type_id::create("mhpmevent29h");
    mhpmevent29h.configure( .blk_parent(this) );
    mhpmevent29h.build();

    mhpmevent30h = mhpmevent30h_reg::type_id::create("mhpmevent30h");
    mhpmevent30h.configure( .blk_parent(this) );
    mhpmevent30h.build();

    mhpmevent31h = mhpmevent31h_reg::type_id::create("mhpmevent31h");
    mhpmevent31h.configure( .blk_parent(this) );
    mhpmevent31h.build();

    mseccfgh = mseccfgh_reg::type_id::create("mseccfgh");
    mseccfgh.configure( .blk_parent(this) );
    mseccfgh.build();

    mcycleh = mcycleh_reg::type_id::create("mcycleh");
    mcycleh.configure( .blk_parent(this) );
    mcycleh.build();

    minstreth = minstreth_reg::type_id::create("minstreth");
    minstreth.configure( .blk_parent(this) );
    minstreth.build();

    mhpmcounter3h = mhpmcounter3h_reg::type_id::create("mhpmcounter3h");
    mhpmcounter3h.configure( .blk_parent(this) );
    mhpmcounter3h.build();

    mhpmcounter4h = mhpmcounter4h_reg::type_id::create("mhpmcounter4h");
    mhpmcounter4h.configure( .blk_parent(this) );
    mhpmcounter4h.build();

    mhpmcounter5h = mhpmcounter5h_reg::type_id::create("mhpmcounter5h");
    mhpmcounter5h.configure( .blk_parent(this) );
    mhpmcounter5h.build();

    mhpmcounter6h = mhpmcounter6h_reg::type_id::create("mhpmcounter6h");
    mhpmcounter6h.configure( .blk_parent(this) );
    mhpmcounter6h.build();

    mhpmcounter7h = mhpmcounter7h_reg::type_id::create("mhpmcounter7h");
    mhpmcounter7h.configure( .blk_parent(this) );
    mhpmcounter7h.build();

    mhpmcounter8h = mhpmcounter8h_reg::type_id::create("mhpmcounter8h");
    mhpmcounter8h.configure( .blk_parent(this) );
    mhpmcounter8h.build();

    mhpmcounter9h = mhpmcounter9h_reg::type_id::create("mhpmcounter9h");
    mhpmcounter9h.configure( .blk_parent(this) );
    mhpmcounter9h.build();

    mhpmcounter10h = mhpmcounter10h_reg::type_id::create("mhpmcounter10h");
    mhpmcounter10h.configure( .blk_parent(this) );
    mhpmcounter10h.build();

    mhpmcounter11h = mhpmcounter11h_reg::type_id::create("mhpmcounter11h");
    mhpmcounter11h.configure( .blk_parent(this) );
    mhpmcounter11h.build();

    mhpmcounter12h = mhpmcounter12h_reg::type_id::create("mhpmcounter12h");
    mhpmcounter12h.configure( .blk_parent(this) );
    mhpmcounter12h.build();

    mhpmcounter13h = mhpmcounter13h_reg::type_id::create("mhpmcounter13h");
    mhpmcounter13h.configure( .blk_parent(this) );
    mhpmcounter13h.build();

    mhpmcounter14h = mhpmcounter14h_reg::type_id::create("mhpmcounter14h");
    mhpmcounter14h.configure( .blk_parent(this) );
    mhpmcounter14h.build();

    mhpmcounter15h = mhpmcounter15h_reg::type_id::create("mhpmcounter15h");
    mhpmcounter15h.configure( .blk_parent(this) );
    mhpmcounter15h.build();

    mhpmcounter16h = mhpmcounter16h_reg::type_id::create("mhpmcounter16h");
    mhpmcounter16h.configure( .blk_parent(this) );
    mhpmcounter16h.build();

    mhpmcounter17h = mhpmcounter17h_reg::type_id::create("mhpmcounter17h");
    mhpmcounter17h.configure( .blk_parent(this) );
    mhpmcounter17h.build();

    mhpmcounter18h = mhpmcounter18h_reg::type_id::create("mhpmcounter18h");
    mhpmcounter18h.configure( .blk_parent(this) );
    mhpmcounter18h.build();

    mhpmcounter19h = mhpmcounter19h_reg::type_id::create("mhpmcounter19h");
    mhpmcounter19h.configure( .blk_parent(this) );
    mhpmcounter19h.build();

    mhpmcounter20h = mhpmcounter20h_reg::type_id::create("mhpmcounter20h");
    mhpmcounter20h.configure( .blk_parent(this) );
    mhpmcounter20h.build();

    mhpmcounter21h = mhpmcounter21h_reg::type_id::create("mhpmcounter21h");
    mhpmcounter21h.configure( .blk_parent(this) );
    mhpmcounter21h.build();

    mhpmcounter22h = mhpmcounter22h_reg::type_id::create("mhpmcounter22h");
    mhpmcounter22h.configure( .blk_parent(this) );
    mhpmcounter22h.build();

    mhpmcounter23h = mhpmcounter23h_reg::type_id::create("mhpmcounter23h");
    mhpmcounter23h.configure( .blk_parent(this) );
    mhpmcounter23h.build();

    mhpmcounter24h = mhpmcounter24h_reg::type_id::create("mhpmcounter24h");
    mhpmcounter24h.configure( .blk_parent(this) );
    mhpmcounter24h.build();

    mhpmcounter25h = mhpmcounter25h_reg::type_id::create("mhpmcounter25h");
    mhpmcounter25h.configure( .blk_parent(this) );
    mhpmcounter25h.build();

    mhpmcounter26h = mhpmcounter26h_reg::type_id::create("mhpmcounter26h");
    mhpmcounter26h.configure( .blk_parent(this) );
    mhpmcounter26h.build();

    mhpmcounter27h = mhpmcounter27h_reg::type_id::create("mhpmcounter27h");
    mhpmcounter27h.configure( .blk_parent(this) );
    mhpmcounter27h.build();

    mhpmcounter28h = mhpmcounter28h_reg::type_id::create("mhpmcounter28h");
    mhpmcounter28h.configure( .blk_parent(this) );
    mhpmcounter28h.build();

    mhpmcounter29h = mhpmcounter29h_reg::type_id::create("mhpmcounter29h");
    mhpmcounter29h.configure( .blk_parent(this) );
    mhpmcounter29h.build();

    mhpmcounter30h = mhpmcounter30h_reg::type_id::create("mhpmcounter30h");
    mhpmcounter30h.configure( .blk_parent(this) );
    mhpmcounter30h.build();

    mhpmcounter31h = mhpmcounter31h_reg::type_id::create("mhpmcounter31h");
    mhpmcounter31h.configure( .blk_parent(this) );
    mhpmcounter31h.build();

    cycleh = cycleh_reg::type_id::create("cycleh");
    cycleh.configure( .blk_parent(this) );
    cycleh.build();

    timeh = timeh_reg::type_id::create("timeh");
    timeh.configure( .blk_parent(this) );
    timeh.build();

    instreth = instreth_reg::type_id::create("instreth");
    instreth.configure( .blk_parent(this) );
    instreth.build();

    hpmcounter3h = hpmcounter3h_reg::type_id::create("hpmcounter3h");
    hpmcounter3h.configure( .blk_parent(this) );
    hpmcounter3h.build();

    hpmcounter4h = hpmcounter4h_reg::type_id::create("hpmcounter4h");
    hpmcounter4h.configure( .blk_parent(this) );
    hpmcounter4h.build();

    hpmcounter5h = hpmcounter5h_reg::type_id::create("hpmcounter5h");
    hpmcounter5h.configure( .blk_parent(this) );
    hpmcounter5h.build();

    hpmcounter6h = hpmcounter6h_reg::type_id::create("hpmcounter6h");
    hpmcounter6h.configure( .blk_parent(this) );
    hpmcounter6h.build();

    hpmcounter7h = hpmcounter7h_reg::type_id::create("hpmcounter7h");
    hpmcounter7h.configure( .blk_parent(this) );
    hpmcounter7h.build();

    hpmcounter8h = hpmcounter8h_reg::type_id::create("hpmcounter8h");
    hpmcounter8h.configure( .blk_parent(this) );
    hpmcounter8h.build();

    hpmcounter9h = hpmcounter9h_reg::type_id::create("hpmcounter9h");
    hpmcounter9h.configure( .blk_parent(this) );
    hpmcounter9h.build();

    hpmcounter10h = hpmcounter10h_reg::type_id::create("hpmcounter10h");
    hpmcounter10h.configure( .blk_parent(this) );
    hpmcounter10h.build();

    hpmcounter11h = hpmcounter11h_reg::type_id::create("hpmcounter11h");
    hpmcounter11h.configure( .blk_parent(this) );
    hpmcounter11h.build();

    hpmcounter12h = hpmcounter12h_reg::type_id::create("hpmcounter12h");
    hpmcounter12h.configure( .blk_parent(this) );
    hpmcounter12h.build();

    hpmcounter13h = hpmcounter13h_reg::type_id::create("hpmcounter13h");
    hpmcounter13h.configure( .blk_parent(this) );
    hpmcounter13h.build();

    hpmcounter14h = hpmcounter14h_reg::type_id::create("hpmcounter14h");
    hpmcounter14h.configure( .blk_parent(this) );
    hpmcounter14h.build();

    hpmcounter15h = hpmcounter15h_reg::type_id::create("hpmcounter15h");
    hpmcounter15h.configure( .blk_parent(this) );
    hpmcounter15h.build();

    hpmcounter16h = hpmcounter16h_reg::type_id::create("hpmcounter16h");
    hpmcounter16h.configure( .blk_parent(this) );
    hpmcounter16h.build();

    hpmcounter17h = hpmcounter17h_reg::type_id::create("hpmcounter17h");
    hpmcounter17h.configure( .blk_parent(this) );
    hpmcounter17h.build();

    hpmcounter18h = hpmcounter18h_reg::type_id::create("hpmcounter18h");
    hpmcounter18h.configure( .blk_parent(this) );
    hpmcounter18h.build();

    hpmcounter19h = hpmcounter19h_reg::type_id::create("hpmcounter19h");
    hpmcounter19h.configure( .blk_parent(this) );
    hpmcounter19h.build();

    hpmcounter20h = hpmcounter20h_reg::type_id::create("hpmcounter20h");
    hpmcounter20h.configure( .blk_parent(this) );
    hpmcounter20h.build();

    hpmcounter21h = hpmcounter21h_reg::type_id::create("hpmcounter21h");
    hpmcounter21h.configure( .blk_parent(this) );
    hpmcounter21h.build();

    hpmcounter22h = hpmcounter22h_reg::type_id::create("hpmcounter22h");
    hpmcounter22h.configure( .blk_parent(this) );
    hpmcounter22h.build();

    hpmcounter23h = hpmcounter23h_reg::type_id::create("hpmcounter23h");
    hpmcounter23h.configure( .blk_parent(this) );
    hpmcounter23h.build();

    hpmcounter24h = hpmcounter24h_reg::type_id::create("hpmcounter24h");
    hpmcounter24h.configure( .blk_parent(this) );
    hpmcounter24h.build();

    hpmcounter25h = hpmcounter25h_reg::type_id::create("hpmcounter25h");
    hpmcounter25h.configure( .blk_parent(this) );
    hpmcounter25h.build();

    hpmcounter26h = hpmcounter26h_reg::type_id::create("hpmcounter26h");
    hpmcounter26h.configure( .blk_parent(this) );
    hpmcounter26h.build();

    hpmcounter27h = hpmcounter27h_reg::type_id::create("hpmcounter27h");
    hpmcounter27h.configure( .blk_parent(this) );
    hpmcounter27h.build();

    hpmcounter28h = hpmcounter28h_reg::type_id::create("hpmcounter28h");
    hpmcounter28h.configure( .blk_parent(this) );
    hpmcounter28h.build();

    hpmcounter29h = hpmcounter29h_reg::type_id::create("hpmcounter29h");
    hpmcounter29h.configure( .blk_parent(this) );
    hpmcounter29h.build();

    hpmcounter30h = hpmcounter30h_reg::type_id::create("hpmcounter30h");
    hpmcounter30h.configure( .blk_parent(this) );
    hpmcounter30h.build();

    hpmcounter31h = hpmcounter31h_reg::type_id::create("hpmcounter31h");
    hpmcounter31h.configure( .blk_parent(this) );
    hpmcounter31h.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(stimecmph, 12'h15d, "RW");
    csr_map.add_reg(vstimecmph, 12'h25d, "RW");
    csr_map.add_reg(mstatush, 12'h310, "RW");
    csr_map.add_reg(medelegh, 12'h312, "RW");
    csr_map.add_reg(menvcfgh, 12'h31a, "RW");
    csr_map.add_reg(pmpcfg1, 12'h3a1, "RW");
    csr_map.add_reg(pmpcfg3, 12'h3a3, "RW");
    csr_map.add_reg(pmpcfg5, 12'h3a5, "RW");
    csr_map.add_reg(pmpcfg7, 12'h3a7, "RW");
    csr_map.add_reg(pmpcfg9, 12'h3a9, "RW");
    csr_map.add_reg(pmpcfg11, 12'h3ab, "RW");
    csr_map.add_reg(pmpcfg13, 12'h3ad, "RW");
    csr_map.add_reg(pmpcfg15, 12'h3af, "RW");
    csr_map.add_reg(hedelegh, 12'h612, "RW");
    csr_map.add_reg(htimedeltah, 12'h615, "RW");
    csr_map.add_reg(henvcfgh, 12'h61a, "RW");
    csr_map.add_reg(hstateen0h, 12'h61c, "RW");
    csr_map.add_reg(hstateen1h, 12'h61d, "RW");
    csr_map.add_reg(hstateen2h, 12'h61e, "RW");
    csr_map.add_reg(hstateen3h, 12'h61f, "RW");
    csr_map.add_reg(mhpmevent3h, 12'h723, "RW");
    csr_map.add_reg(mhpmevent4h, 12'h724, "RW");
    csr_map.add_reg(mhpmevent5h, 12'h725, "RW");
    csr_map.add_reg(mhpmevent6h, 12'h726, "RW");
    csr_map.add_reg(mhpmevent7h, 12'h727, "RW");
    csr_map.add_reg(mhpmevent8h, 12'h728, "RW");
    csr_map.add_reg(mhpmevent9h, 12'h729, "RW");
    csr_map.add_reg(mhpmevent10h, 12'h72a, "RW");
    csr_map.add_reg(mhpmevent11h, 12'h72b, "RW");
    csr_map.add_reg(mhpmevent12h, 12'h72c, "RW");
    csr_map.add_reg(mhpmevent13h, 12'h72d, "RW");
    csr_map.add_reg(mhpmevent14h, 12'h72e, "RW");
    csr_map.add_reg(mhpmevent15h, 12'h72f, "RW");
    csr_map.add_reg(mhpmevent16h, 12'h730, "RW");
    csr_map.add_reg(mhpmevent17h, 12'h731, "RW");
    csr_map.add_reg(mhpmevent18h, 12'h732, "RW");
    csr_map.add_reg(mhpmevent19h, 12'h733, "RW");
    csr_map.add_reg(mhpmevent20h, 12'h734, "RW");
    csr_map.add_reg(mhpmevent21h, 12'h735, "RW");
    csr_map.add_reg(mhpmevent22h, 12'h736, "RW");
    csr_map.add_reg(mhpmevent23h, 12'h737, "RW");
    csr_map.add_reg(mhpmevent24h, 12'h738, "RW");
    csr_map.add_reg(mhpmevent25h, 12'h739, "RW");
    csr_map.add_reg(mhpmevent26h, 12'h73a, "RW");
    csr_map.add_reg(mhpmevent27h, 12'h73b, "RW");
    csr_map.add_reg(mhpmevent28h, 12'h73c, "RW");
    csr_map.add_reg(mhpmevent29h, 12'h73d, "RW");
    csr_map.add_reg(mhpmevent30h, 12'h73e, "RW");
    csr_map.add_reg(mhpmevent31h, 12'h73f, "RW");
    csr_map.add_reg(mseccfgh, 12'h757, "RW");
    csr_map.add_reg(mcycleh, 12'hb80, "RW");
    csr_map.add_reg(minstreth, 12'hb82, "RW");
    csr_map.add_reg(mhpmcounter3h, 12'hb83, "RW");
    csr_map.add_reg(mhpmcounter4h, 12'hb84, "RW");
    csr_map.add_reg(mhpmcounter5h, 12'hb85, "RW");
    csr_map.add_reg(mhpmcounter6h, 12'hb86, "RW");
    csr_map.add_reg(mhpmcounter7h, 12'hb87, "RW");
    csr_map.add_reg(mhpmcounter8h, 12'hb88, "RW");
    csr_map.add_reg(mhpmcounter9h, 12'hb89, "RW");
    csr_map.add_reg(mhpmcounter10h, 12'hb8a, "RW");
    csr_map.add_reg(mhpmcounter11h, 12'hb8b, "RW");
    csr_map.add_reg(mhpmcounter12h, 12'hb8c, "RW");
    csr_map.add_reg(mhpmcounter13h, 12'hb8d, "RW");
    csr_map.add_reg(mhpmcounter14h, 12'hb8e, "RW");
    csr_map.add_reg(mhpmcounter15h, 12'hb8f, "RW");
    csr_map.add_reg(mhpmcounter16h, 12'hb90, "RW");
    csr_map.add_reg(mhpmcounter17h, 12'hb91, "RW");
    csr_map.add_reg(mhpmcounter18h, 12'hb92, "RW");
    csr_map.add_reg(mhpmcounter19h, 12'hb93, "RW");
    csr_map.add_reg(mhpmcounter20h, 12'hb94, "RW");
    csr_map.add_reg(mhpmcounter21h, 12'hb95, "RW");
    csr_map.add_reg(mhpmcounter22h, 12'hb96, "RW");
    csr_map.add_reg(mhpmcounter23h, 12'hb97, "RW");
    csr_map.add_reg(mhpmcounter24h, 12'hb98, "RW");
    csr_map.add_reg(mhpmcounter25h, 12'hb99, "RW");
    csr_map.add_reg(mhpmcounter26h, 12'hb9a, "RW");
    csr_map.add_reg(mhpmcounter27h, 12'hb9b, "RW");
    csr_map.add_reg(mhpmcounter28h, 12'hb9c, "RW");
    csr_map.add_reg(mhpmcounter29h, 12'hb9d, "RW");
    csr_map.add_reg(mhpmcounter30h, 12'hb9e, "RW");
    csr_map.add_reg(mhpmcounter31h, 12'hb9f, "RW");
    csr_map.add_reg(cycleh, 12'hc80, "RW");
    csr_map.add_reg(timeh, 12'hc81, "RW");
    csr_map.add_reg(instreth, 12'hc82, "RW");
    csr_map.add_reg(hpmcounter3h, 12'hc83, "RW");
    csr_map.add_reg(hpmcounter4h, 12'hc84, "RW");
    csr_map.add_reg(hpmcounter5h, 12'hc85, "RW");
    csr_map.add_reg(hpmcounter6h, 12'hc86, "RW");
    csr_map.add_reg(hpmcounter7h, 12'hc87, "RW");
    csr_map.add_reg(hpmcounter8h, 12'hc88, "RW");
    csr_map.add_reg(hpmcounter9h, 12'hc89, "RW");
    csr_map.add_reg(hpmcounter10h, 12'hc8a, "RW");
    csr_map.add_reg(hpmcounter11h, 12'hc8b, "RW");
    csr_map.add_reg(hpmcounter12h, 12'hc8c, "RW");
    csr_map.add_reg(hpmcounter13h, 12'hc8d, "RW");
    csr_map.add_reg(hpmcounter14h, 12'hc8e, "RW");
    csr_map.add_reg(hpmcounter15h, 12'hc8f, "RW");
    csr_map.add_reg(hpmcounter16h, 12'hc90, "RW");
    csr_map.add_reg(hpmcounter17h, 12'hc91, "RW");
    csr_map.add_reg(hpmcounter18h, 12'hc92, "RW");
    csr_map.add_reg(hpmcounter19h, 12'hc93, "RW");
    csr_map.add_reg(hpmcounter20h, 12'hc94, "RW");
    csr_map.add_reg(hpmcounter21h, 12'hc95, "RW");
    csr_map.add_reg(hpmcounter22h, 12'hc96, "RW");
    csr_map.add_reg(hpmcounter23h, 12'hc97, "RW");
    csr_map.add_reg(hpmcounter24h, 12'hc98, "RW");
    csr_map.add_reg(hpmcounter25h, 12'hc99, "RW");
    csr_map.add_reg(hpmcounter26h, 12'hc9a, "RW");
    csr_map.add_reg(hpmcounter27h, 12'hc9b, "RW");
    csr_map.add_reg(hpmcounter28h, 12'hc9c, "RW");
    csr_map.add_reg(hpmcounter29h, 12'hc9d, "RW");
    csr_map.add_reg(hpmcounter30h, 12'hc9e, "RW");
    csr_map.add_reg(hpmcounter31h, 12'hc9f, "RW");

    lock_model();
  endfunction : build

endclass : csr_rv32_only_reg_block
