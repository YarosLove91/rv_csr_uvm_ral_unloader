//------------------------------------------------------------------------------
// stimecmph (0x15d) - stimecmph
//------------------------------------------------------------------------------
class stimecmph_reg extends uvm_reg;
  `uvm_object_utils( stimecmph_reg )

  rand uvm_reg_field stimecmph_field;

  function new( string name = "stimecmph_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    stimecmph_field = uvm_reg_field::type_id::create("stimecmph_field");
    stimecmph_field.configure( .parent(this),
                               .size(32),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : stimecmph_reg


//------------------------------------------------------------------------------
// vstimecmph (0x25d) - vstimecmph
//------------------------------------------------------------------------------
class vstimecmph_reg extends uvm_reg;
  `uvm_object_utils( vstimecmph_reg )

  rand uvm_reg_field vstimecmph_field;

  function new( string name = "vstimecmph_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vstimecmph_field = uvm_reg_field::type_id::create("vstimecmph_field");
    vstimecmph_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : vstimecmph_reg


//------------------------------------------------------------------------------
// mstatush (0x310) - mstatush
//------------------------------------------------------------------------------
class mstatush_reg extends uvm_reg;
  `uvm_object_utils( mstatush_reg )

  rand uvm_reg_field mstatush_field;

  function new( string name = "mstatush_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mstatush_field = uvm_reg_field::type_id::create("mstatush_field");
    mstatush_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : mstatush_reg


//------------------------------------------------------------------------------
// medelegh (0x312) - medelegh
//------------------------------------------------------------------------------
class medelegh_reg extends uvm_reg;
  `uvm_object_utils( medelegh_reg )

  rand uvm_reg_field medelegh_field;

  function new( string name = "medelegh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    medelegh_field = uvm_reg_field::type_id::create("medelegh_field");
    medelegh_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : medelegh_reg


//------------------------------------------------------------------------------
// menvcfgh (0x31a) - menvcfgh
//------------------------------------------------------------------------------
class menvcfgh_reg extends uvm_reg;
  `uvm_object_utils( menvcfgh_reg )

  rand uvm_reg_field menvcfgh_field;

  function new( string name = "menvcfgh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    menvcfgh_field = uvm_reg_field::type_id::create("menvcfgh_field");
    menvcfgh_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : menvcfgh_reg


//------------------------------------------------------------------------------
// pmpcfg1 (0x3a1) - pmpcfg1
//------------------------------------------------------------------------------
class pmpcfg1_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg1_reg )

  rand uvm_reg_field pmpcfg1_field;

  function new( string name = "pmpcfg1_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg1_field = uvm_reg_field::type_id::create("pmpcfg1_field");
    pmpcfg1_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg1_reg


//------------------------------------------------------------------------------
// pmpcfg3 (0x3a3) - pmpcfg3
//------------------------------------------------------------------------------
class pmpcfg3_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg3_reg )

  rand uvm_reg_field pmpcfg3_field;

  function new( string name = "pmpcfg3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg3_field = uvm_reg_field::type_id::create("pmpcfg3_field");
    pmpcfg3_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg3_reg


//------------------------------------------------------------------------------
// pmpcfg5 (0x3a5) - pmpcfg5
//------------------------------------------------------------------------------
class pmpcfg5_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg5_reg )

  rand uvm_reg_field pmpcfg5_field;

  function new( string name = "pmpcfg5_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg5_field = uvm_reg_field::type_id::create("pmpcfg5_field");
    pmpcfg5_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg5_reg


//------------------------------------------------------------------------------
// pmpcfg7 (0x3a7) - pmpcfg7
//------------------------------------------------------------------------------
class pmpcfg7_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg7_reg )

  rand uvm_reg_field pmpcfg7_field;

  function new( string name = "pmpcfg7_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg7_field = uvm_reg_field::type_id::create("pmpcfg7_field");
    pmpcfg7_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg7_reg


//------------------------------------------------------------------------------
// pmpcfg9 (0x3a9) - pmpcfg9
//------------------------------------------------------------------------------
class pmpcfg9_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg9_reg )

  rand uvm_reg_field pmpcfg9_field;

  function new( string name = "pmpcfg9_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg9_field = uvm_reg_field::type_id::create("pmpcfg9_field");
    pmpcfg9_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg9_reg


//------------------------------------------------------------------------------
// pmpcfg11 (0x3ab) - pmpcfg11
//------------------------------------------------------------------------------
class pmpcfg11_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg11_reg )

  rand uvm_reg_field pmpcfg11_field;

  function new( string name = "pmpcfg11_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg11_field = uvm_reg_field::type_id::create("pmpcfg11_field");
    pmpcfg11_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg11_reg


//------------------------------------------------------------------------------
// pmpcfg13 (0x3ad) - pmpcfg13
//------------------------------------------------------------------------------
class pmpcfg13_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg13_reg )

  rand uvm_reg_field pmpcfg13_field;

  function new( string name = "pmpcfg13_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg13_field = uvm_reg_field::type_id::create("pmpcfg13_field");
    pmpcfg13_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg13_reg


//------------------------------------------------------------------------------
// pmpcfg15 (0x3af) - pmpcfg15
//------------------------------------------------------------------------------
class pmpcfg15_reg extends uvm_reg;
  `uvm_object_utils( pmpcfg15_reg )

  rand uvm_reg_field pmpcfg15_field;

  function new( string name = "pmpcfg15_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    pmpcfg15_field = uvm_reg_field::type_id::create("pmpcfg15_field");
    pmpcfg15_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : pmpcfg15_reg


//------------------------------------------------------------------------------
// hedelegh (0x612) - hedelegh
//------------------------------------------------------------------------------
class hedelegh_reg extends uvm_reg;
  `uvm_object_utils( hedelegh_reg )

  rand uvm_reg_field hedelegh_field;

  function new( string name = "hedelegh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hedelegh_field = uvm_reg_field::type_id::create("hedelegh_field");
    hedelegh_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : hedelegh_reg


//------------------------------------------------------------------------------
// htimedeltah (0x615) - htimedeltah
//------------------------------------------------------------------------------
class htimedeltah_reg extends uvm_reg;
  `uvm_object_utils( htimedeltah_reg )

  rand uvm_reg_field htimedeltah_field;

  function new( string name = "htimedeltah_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    htimedeltah_field = uvm_reg_field::type_id::create("htimedeltah_field");
    htimedeltah_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : htimedeltah_reg


//------------------------------------------------------------------------------
// henvcfgh (0x61a) - henvcfgh
//------------------------------------------------------------------------------
class henvcfgh_reg extends uvm_reg;
  `uvm_object_utils( henvcfgh_reg )

  rand uvm_reg_field henvcfgh_field;

  function new( string name = "henvcfgh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    henvcfgh_field = uvm_reg_field::type_id::create("henvcfgh_field");
    henvcfgh_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : henvcfgh_reg


//------------------------------------------------------------------------------
// hstateen0h (0x61c) - hstateen0h
//------------------------------------------------------------------------------
class hstateen0h_reg extends uvm_reg;
  `uvm_object_utils( hstateen0h_reg )

  rand uvm_reg_field hstateen0h_field;

  function new( string name = "hstateen0h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen0h_field = uvm_reg_field::type_id::create("hstateen0h_field");
    hstateen0h_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : hstateen0h_reg


//------------------------------------------------------------------------------
// hstateen1h (0x61d) - hstateen1h
//------------------------------------------------------------------------------
class hstateen1h_reg extends uvm_reg;
  `uvm_object_utils( hstateen1h_reg )

  rand uvm_reg_field hstateen1h_field;

  function new( string name = "hstateen1h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen1h_field = uvm_reg_field::type_id::create("hstateen1h_field");
    hstateen1h_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : hstateen1h_reg


//------------------------------------------------------------------------------
// hstateen2h (0x61e) - hstateen2h
//------------------------------------------------------------------------------
class hstateen2h_reg extends uvm_reg;
  `uvm_object_utils( hstateen2h_reg )

  rand uvm_reg_field hstateen2h_field;

  function new( string name = "hstateen2h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen2h_field = uvm_reg_field::type_id::create("hstateen2h_field");
    hstateen2h_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : hstateen2h_reg


//------------------------------------------------------------------------------
// hstateen3h (0x61f) - hstateen3h
//------------------------------------------------------------------------------
class hstateen3h_reg extends uvm_reg;
  `uvm_object_utils( hstateen3h_reg )

  rand uvm_reg_field hstateen3h_field;

  function new( string name = "hstateen3h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen3h_field = uvm_reg_field::type_id::create("hstateen3h_field");
    hstateen3h_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : hstateen3h_reg


//------------------------------------------------------------------------------
// mhpmevent3h (0x723) - mhpmevent3h
//------------------------------------------------------------------------------
class mhpmevent3h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent3h_reg )

  rand uvm_reg_field mhpmevent3h_field;

  function new( string name = "mhpmevent3h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent3h_field = uvm_reg_field::type_id::create("mhpmevent3h_field");
    mhpmevent3h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent3h_reg


//------------------------------------------------------------------------------
// mhpmevent4h (0x724) - mhpmevent4h
//------------------------------------------------------------------------------
class mhpmevent4h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent4h_reg )

  rand uvm_reg_field mhpmevent4h_field;

  function new( string name = "mhpmevent4h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent4h_field = uvm_reg_field::type_id::create("mhpmevent4h_field");
    mhpmevent4h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent4h_reg


//------------------------------------------------------------------------------
// mhpmevent5h (0x725) - mhpmevent5h
//------------------------------------------------------------------------------
class mhpmevent5h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent5h_reg )

  rand uvm_reg_field mhpmevent5h_field;

  function new( string name = "mhpmevent5h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent5h_field = uvm_reg_field::type_id::create("mhpmevent5h_field");
    mhpmevent5h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent5h_reg


//------------------------------------------------------------------------------
// mhpmevent6h (0x726) - mhpmevent6h
//------------------------------------------------------------------------------
class mhpmevent6h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent6h_reg )

  rand uvm_reg_field mhpmevent6h_field;

  function new( string name = "mhpmevent6h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent6h_field = uvm_reg_field::type_id::create("mhpmevent6h_field");
    mhpmevent6h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent6h_reg


//------------------------------------------------------------------------------
// mhpmevent7h (0x727) - mhpmevent7h
//------------------------------------------------------------------------------
class mhpmevent7h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent7h_reg )

  rand uvm_reg_field mhpmevent7h_field;

  function new( string name = "mhpmevent7h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent7h_field = uvm_reg_field::type_id::create("mhpmevent7h_field");
    mhpmevent7h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent7h_reg


//------------------------------------------------------------------------------
// mhpmevent8h (0x728) - mhpmevent8h
//------------------------------------------------------------------------------
class mhpmevent8h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent8h_reg )

  rand uvm_reg_field mhpmevent8h_field;

  function new( string name = "mhpmevent8h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent8h_field = uvm_reg_field::type_id::create("mhpmevent8h_field");
    mhpmevent8h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent8h_reg


//------------------------------------------------------------------------------
// mhpmevent9h (0x729) - mhpmevent9h
//------------------------------------------------------------------------------
class mhpmevent9h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent9h_reg )

  rand uvm_reg_field mhpmevent9h_field;

  function new( string name = "mhpmevent9h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent9h_field = uvm_reg_field::type_id::create("mhpmevent9h_field");
    mhpmevent9h_field.configure( .parent(this),
                                 .size(32),
                                 .lsb_pos(0),
                                 .access("RW"),
                                 .volatile(0),
                                 .reset(64'h0),
                                 .has_reset(1),
                                 .is_rand(1),
                                 .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent9h_reg


//------------------------------------------------------------------------------
// mhpmevent10h (0x72a) - mhpmevent10h
//------------------------------------------------------------------------------
class mhpmevent10h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent10h_reg )

  rand uvm_reg_field mhpmevent10h_field;

  function new( string name = "mhpmevent10h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent10h_field = uvm_reg_field::type_id::create("mhpmevent10h_field");
    mhpmevent10h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent10h_reg


//------------------------------------------------------------------------------
// mhpmevent11h (0x72b) - mhpmevent11h
//------------------------------------------------------------------------------
class mhpmevent11h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent11h_reg )

  rand uvm_reg_field mhpmevent11h_field;

  function new( string name = "mhpmevent11h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent11h_field = uvm_reg_field::type_id::create("mhpmevent11h_field");
    mhpmevent11h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent11h_reg


//------------------------------------------------------------------------------
// mhpmevent12h (0x72c) - mhpmevent12h
//------------------------------------------------------------------------------
class mhpmevent12h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent12h_reg )

  rand uvm_reg_field mhpmevent12h_field;

  function new( string name = "mhpmevent12h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent12h_field = uvm_reg_field::type_id::create("mhpmevent12h_field");
    mhpmevent12h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent12h_reg


//------------------------------------------------------------------------------
// mhpmevent13h (0x72d) - mhpmevent13h
//------------------------------------------------------------------------------
class mhpmevent13h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent13h_reg )

  rand uvm_reg_field mhpmevent13h_field;

  function new( string name = "mhpmevent13h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent13h_field = uvm_reg_field::type_id::create("mhpmevent13h_field");
    mhpmevent13h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent13h_reg


//------------------------------------------------------------------------------
// mhpmevent14h (0x72e) - mhpmevent14h
//------------------------------------------------------------------------------
class mhpmevent14h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent14h_reg )

  rand uvm_reg_field mhpmevent14h_field;

  function new( string name = "mhpmevent14h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent14h_field = uvm_reg_field::type_id::create("mhpmevent14h_field");
    mhpmevent14h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent14h_reg


//------------------------------------------------------------------------------
// mhpmevent15h (0x72f) - mhpmevent15h
//------------------------------------------------------------------------------
class mhpmevent15h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent15h_reg )

  rand uvm_reg_field mhpmevent15h_field;

  function new( string name = "mhpmevent15h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent15h_field = uvm_reg_field::type_id::create("mhpmevent15h_field");
    mhpmevent15h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent15h_reg


//------------------------------------------------------------------------------
// mhpmevent16h (0x730) - mhpmevent16h
//------------------------------------------------------------------------------
class mhpmevent16h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent16h_reg )

  rand uvm_reg_field mhpmevent16h_field;

  function new( string name = "mhpmevent16h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent16h_field = uvm_reg_field::type_id::create("mhpmevent16h_field");
    mhpmevent16h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent16h_reg


//------------------------------------------------------------------------------
// mhpmevent17h (0x731) - mhpmevent17h
//------------------------------------------------------------------------------
class mhpmevent17h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent17h_reg )

  rand uvm_reg_field mhpmevent17h_field;

  function new( string name = "mhpmevent17h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent17h_field = uvm_reg_field::type_id::create("mhpmevent17h_field");
    mhpmevent17h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent17h_reg


//------------------------------------------------------------------------------
// mhpmevent18h (0x732) - mhpmevent18h
//------------------------------------------------------------------------------
class mhpmevent18h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent18h_reg )

  rand uvm_reg_field mhpmevent18h_field;

  function new( string name = "mhpmevent18h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent18h_field = uvm_reg_field::type_id::create("mhpmevent18h_field");
    mhpmevent18h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent18h_reg


//------------------------------------------------------------------------------
// mhpmevent19h (0x733) - mhpmevent19h
//------------------------------------------------------------------------------
class mhpmevent19h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent19h_reg )

  rand uvm_reg_field mhpmevent19h_field;

  function new( string name = "mhpmevent19h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent19h_field = uvm_reg_field::type_id::create("mhpmevent19h_field");
    mhpmevent19h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent19h_reg


//------------------------------------------------------------------------------
// mhpmevent20h (0x734) - mhpmevent20h
//------------------------------------------------------------------------------
class mhpmevent20h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent20h_reg )

  rand uvm_reg_field mhpmevent20h_field;

  function new( string name = "mhpmevent20h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent20h_field = uvm_reg_field::type_id::create("mhpmevent20h_field");
    mhpmevent20h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent20h_reg


//------------------------------------------------------------------------------
// mhpmevent21h (0x735) - mhpmevent21h
//------------------------------------------------------------------------------
class mhpmevent21h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent21h_reg )

  rand uvm_reg_field mhpmevent21h_field;

  function new( string name = "mhpmevent21h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent21h_field = uvm_reg_field::type_id::create("mhpmevent21h_field");
    mhpmevent21h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent21h_reg


//------------------------------------------------------------------------------
// mhpmevent22h (0x736) - mhpmevent22h
//------------------------------------------------------------------------------
class mhpmevent22h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent22h_reg )

  rand uvm_reg_field mhpmevent22h_field;

  function new( string name = "mhpmevent22h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent22h_field = uvm_reg_field::type_id::create("mhpmevent22h_field");
    mhpmevent22h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent22h_reg


//------------------------------------------------------------------------------
// mhpmevent23h (0x737) - mhpmevent23h
//------------------------------------------------------------------------------
class mhpmevent23h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent23h_reg )

  rand uvm_reg_field mhpmevent23h_field;

  function new( string name = "mhpmevent23h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent23h_field = uvm_reg_field::type_id::create("mhpmevent23h_field");
    mhpmevent23h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent23h_reg


//------------------------------------------------------------------------------
// mhpmevent24h (0x738) - mhpmevent24h
//------------------------------------------------------------------------------
class mhpmevent24h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent24h_reg )

  rand uvm_reg_field mhpmevent24h_field;

  function new( string name = "mhpmevent24h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent24h_field = uvm_reg_field::type_id::create("mhpmevent24h_field");
    mhpmevent24h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent24h_reg


//------------------------------------------------------------------------------
// mhpmevent25h (0x739) - mhpmevent25h
//------------------------------------------------------------------------------
class mhpmevent25h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent25h_reg )

  rand uvm_reg_field mhpmevent25h_field;

  function new( string name = "mhpmevent25h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent25h_field = uvm_reg_field::type_id::create("mhpmevent25h_field");
    mhpmevent25h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent25h_reg


//------------------------------------------------------------------------------
// mhpmevent26h (0x73a) - mhpmevent26h
//------------------------------------------------------------------------------
class mhpmevent26h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent26h_reg )

  rand uvm_reg_field mhpmevent26h_field;

  function new( string name = "mhpmevent26h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent26h_field = uvm_reg_field::type_id::create("mhpmevent26h_field");
    mhpmevent26h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent26h_reg


//------------------------------------------------------------------------------
// mhpmevent27h (0x73b) - mhpmevent27h
//------------------------------------------------------------------------------
class mhpmevent27h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent27h_reg )

  rand uvm_reg_field mhpmevent27h_field;

  function new( string name = "mhpmevent27h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent27h_field = uvm_reg_field::type_id::create("mhpmevent27h_field");
    mhpmevent27h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent27h_reg


//------------------------------------------------------------------------------
// mhpmevent28h (0x73c) - mhpmevent28h
//------------------------------------------------------------------------------
class mhpmevent28h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent28h_reg )

  rand uvm_reg_field mhpmevent28h_field;

  function new( string name = "mhpmevent28h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent28h_field = uvm_reg_field::type_id::create("mhpmevent28h_field");
    mhpmevent28h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent28h_reg


//------------------------------------------------------------------------------
// mhpmevent29h (0x73d) - mhpmevent29h
//------------------------------------------------------------------------------
class mhpmevent29h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent29h_reg )

  rand uvm_reg_field mhpmevent29h_field;

  function new( string name = "mhpmevent29h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent29h_field = uvm_reg_field::type_id::create("mhpmevent29h_field");
    mhpmevent29h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent29h_reg


//------------------------------------------------------------------------------
// mhpmevent30h (0x73e) - mhpmevent30h
//------------------------------------------------------------------------------
class mhpmevent30h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent30h_reg )

  rand uvm_reg_field mhpmevent30h_field;

  function new( string name = "mhpmevent30h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent30h_field = uvm_reg_field::type_id::create("mhpmevent30h_field");
    mhpmevent30h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent30h_reg


//------------------------------------------------------------------------------
// mhpmevent31h (0x73f) - mhpmevent31h
//------------------------------------------------------------------------------
class mhpmevent31h_reg extends uvm_reg;
  `uvm_object_utils( mhpmevent31h_reg )

  rand uvm_reg_field mhpmevent31h_field;

  function new( string name = "mhpmevent31h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmevent31h_field = uvm_reg_field::type_id::create("mhpmevent31h_field");
    mhpmevent31h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : mhpmevent31h_reg


//------------------------------------------------------------------------------
// mseccfgh (0x757) - mseccfgh
//------------------------------------------------------------------------------
class mseccfgh_reg extends uvm_reg;
  `uvm_object_utils( mseccfgh_reg )

  rand uvm_reg_field mseccfgh_field;

  function new( string name = "mseccfgh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mseccfgh_field = uvm_reg_field::type_id::create("mseccfgh_field");
    mseccfgh_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : mseccfgh_reg


//------------------------------------------------------------------------------
// mcycleh (0xb80) - mcycleh
//------------------------------------------------------------------------------
class mcycleh_reg extends uvm_reg;
  `uvm_object_utils( mcycleh_reg )

  rand uvm_reg_field mcycleh_field;

  function new( string name = "mcycleh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mcycleh_field = uvm_reg_field::type_id::create("mcycleh_field");
    mcycleh_field.configure( .parent(this),
                             .size(32),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : mcycleh_reg


//------------------------------------------------------------------------------
// minstreth (0xb82) - minstreth
//------------------------------------------------------------------------------
class minstreth_reg extends uvm_reg;
  `uvm_object_utils( minstreth_reg )

  rand uvm_reg_field minstreth_field;

  function new( string name = "minstreth_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    minstreth_field = uvm_reg_field::type_id::create("minstreth_field");
    minstreth_field.configure( .parent(this),
                               .size(32),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : minstreth_reg


//------------------------------------------------------------------------------
// mhpmcounter3h (0xb83) - mhpmcounter3h
//------------------------------------------------------------------------------
class mhpmcounter3h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter3h_reg )

  rand uvm_reg_field mhpmcounter3h_field;

  function new( string name = "mhpmcounter3h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter3h_field = uvm_reg_field::type_id::create("mhpmcounter3h_field");
    mhpmcounter3h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter3h_reg


//------------------------------------------------------------------------------
// mhpmcounter4h (0xb84) - mhpmcounter4h
//------------------------------------------------------------------------------
class mhpmcounter4h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter4h_reg )

  rand uvm_reg_field mhpmcounter4h_field;

  function new( string name = "mhpmcounter4h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter4h_field = uvm_reg_field::type_id::create("mhpmcounter4h_field");
    mhpmcounter4h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter4h_reg


//------------------------------------------------------------------------------
// mhpmcounter5h (0xb85) - mhpmcounter5h
//------------------------------------------------------------------------------
class mhpmcounter5h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter5h_reg )

  rand uvm_reg_field mhpmcounter5h_field;

  function new( string name = "mhpmcounter5h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter5h_field = uvm_reg_field::type_id::create("mhpmcounter5h_field");
    mhpmcounter5h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter5h_reg


//------------------------------------------------------------------------------
// mhpmcounter6h (0xb86) - mhpmcounter6h
//------------------------------------------------------------------------------
class mhpmcounter6h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter6h_reg )

  rand uvm_reg_field mhpmcounter6h_field;

  function new( string name = "mhpmcounter6h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter6h_field = uvm_reg_field::type_id::create("mhpmcounter6h_field");
    mhpmcounter6h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter6h_reg


//------------------------------------------------------------------------------
// mhpmcounter7h (0xb87) - mhpmcounter7h
//------------------------------------------------------------------------------
class mhpmcounter7h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter7h_reg )

  rand uvm_reg_field mhpmcounter7h_field;

  function new( string name = "mhpmcounter7h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter7h_field = uvm_reg_field::type_id::create("mhpmcounter7h_field");
    mhpmcounter7h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter7h_reg


//------------------------------------------------------------------------------
// mhpmcounter8h (0xb88) - mhpmcounter8h
//------------------------------------------------------------------------------
class mhpmcounter8h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter8h_reg )

  rand uvm_reg_field mhpmcounter8h_field;

  function new( string name = "mhpmcounter8h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter8h_field = uvm_reg_field::type_id::create("mhpmcounter8h_field");
    mhpmcounter8h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter8h_reg


//------------------------------------------------------------------------------
// mhpmcounter9h (0xb89) - mhpmcounter9h
//------------------------------------------------------------------------------
class mhpmcounter9h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter9h_reg )

  rand uvm_reg_field mhpmcounter9h_field;

  function new( string name = "mhpmcounter9h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter9h_field = uvm_reg_field::type_id::create("mhpmcounter9h_field");
    mhpmcounter9h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter9h_reg


//------------------------------------------------------------------------------
// mhpmcounter10h (0xb8a) - mhpmcounter10h
//------------------------------------------------------------------------------
class mhpmcounter10h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter10h_reg )

  rand uvm_reg_field mhpmcounter10h_field;

  function new( string name = "mhpmcounter10h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter10h_field = uvm_reg_field::type_id::create("mhpmcounter10h_field");
    mhpmcounter10h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter10h_reg


//------------------------------------------------------------------------------
// mhpmcounter11h (0xb8b) - mhpmcounter11h
//------------------------------------------------------------------------------
class mhpmcounter11h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter11h_reg )

  rand uvm_reg_field mhpmcounter11h_field;

  function new( string name = "mhpmcounter11h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter11h_field = uvm_reg_field::type_id::create("mhpmcounter11h_field");
    mhpmcounter11h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter11h_reg


//------------------------------------------------------------------------------
// mhpmcounter12h (0xb8c) - mhpmcounter12h
//------------------------------------------------------------------------------
class mhpmcounter12h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter12h_reg )

  rand uvm_reg_field mhpmcounter12h_field;

  function new( string name = "mhpmcounter12h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter12h_field = uvm_reg_field::type_id::create("mhpmcounter12h_field");
    mhpmcounter12h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter12h_reg


//------------------------------------------------------------------------------
// mhpmcounter13h (0xb8d) - mhpmcounter13h
//------------------------------------------------------------------------------
class mhpmcounter13h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter13h_reg )

  rand uvm_reg_field mhpmcounter13h_field;

  function new( string name = "mhpmcounter13h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter13h_field = uvm_reg_field::type_id::create("mhpmcounter13h_field");
    mhpmcounter13h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter13h_reg


//------------------------------------------------------------------------------
// mhpmcounter14h (0xb8e) - mhpmcounter14h
//------------------------------------------------------------------------------
class mhpmcounter14h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter14h_reg )

  rand uvm_reg_field mhpmcounter14h_field;

  function new( string name = "mhpmcounter14h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter14h_field = uvm_reg_field::type_id::create("mhpmcounter14h_field");
    mhpmcounter14h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter14h_reg


//------------------------------------------------------------------------------
// mhpmcounter15h (0xb8f) - mhpmcounter15h
//------------------------------------------------------------------------------
class mhpmcounter15h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter15h_reg )

  rand uvm_reg_field mhpmcounter15h_field;

  function new( string name = "mhpmcounter15h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter15h_field = uvm_reg_field::type_id::create("mhpmcounter15h_field");
    mhpmcounter15h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter15h_reg


//------------------------------------------------------------------------------
// mhpmcounter16h (0xb90) - mhpmcounter16h
//------------------------------------------------------------------------------
class mhpmcounter16h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter16h_reg )

  rand uvm_reg_field mhpmcounter16h_field;

  function new( string name = "mhpmcounter16h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter16h_field = uvm_reg_field::type_id::create("mhpmcounter16h_field");
    mhpmcounter16h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter16h_reg


//------------------------------------------------------------------------------
// mhpmcounter17h (0xb91) - mhpmcounter17h
//------------------------------------------------------------------------------
class mhpmcounter17h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter17h_reg )

  rand uvm_reg_field mhpmcounter17h_field;

  function new( string name = "mhpmcounter17h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter17h_field = uvm_reg_field::type_id::create("mhpmcounter17h_field");
    mhpmcounter17h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter17h_reg


//------------------------------------------------------------------------------
// mhpmcounter18h (0xb92) - mhpmcounter18h
//------------------------------------------------------------------------------
class mhpmcounter18h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter18h_reg )

  rand uvm_reg_field mhpmcounter18h_field;

  function new( string name = "mhpmcounter18h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter18h_field = uvm_reg_field::type_id::create("mhpmcounter18h_field");
    mhpmcounter18h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter18h_reg


//------------------------------------------------------------------------------
// mhpmcounter19h (0xb93) - mhpmcounter19h
//------------------------------------------------------------------------------
class mhpmcounter19h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter19h_reg )

  rand uvm_reg_field mhpmcounter19h_field;

  function new( string name = "mhpmcounter19h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter19h_field = uvm_reg_field::type_id::create("mhpmcounter19h_field");
    mhpmcounter19h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter19h_reg


//------------------------------------------------------------------------------
// mhpmcounter20h (0xb94) - mhpmcounter20h
//------------------------------------------------------------------------------
class mhpmcounter20h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter20h_reg )

  rand uvm_reg_field mhpmcounter20h_field;

  function new( string name = "mhpmcounter20h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter20h_field = uvm_reg_field::type_id::create("mhpmcounter20h_field");
    mhpmcounter20h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter20h_reg


//------------------------------------------------------------------------------
// mhpmcounter21h (0xb95) - mhpmcounter21h
//------------------------------------------------------------------------------
class mhpmcounter21h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter21h_reg )

  rand uvm_reg_field mhpmcounter21h_field;

  function new( string name = "mhpmcounter21h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter21h_field = uvm_reg_field::type_id::create("mhpmcounter21h_field");
    mhpmcounter21h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter21h_reg


//------------------------------------------------------------------------------
// mhpmcounter22h (0xb96) - mhpmcounter22h
//------------------------------------------------------------------------------
class mhpmcounter22h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter22h_reg )

  rand uvm_reg_field mhpmcounter22h_field;

  function new( string name = "mhpmcounter22h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter22h_field = uvm_reg_field::type_id::create("mhpmcounter22h_field");
    mhpmcounter22h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter22h_reg


//------------------------------------------------------------------------------
// mhpmcounter23h (0xb97) - mhpmcounter23h
//------------------------------------------------------------------------------
class mhpmcounter23h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter23h_reg )

  rand uvm_reg_field mhpmcounter23h_field;

  function new( string name = "mhpmcounter23h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter23h_field = uvm_reg_field::type_id::create("mhpmcounter23h_field");
    mhpmcounter23h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter23h_reg


//------------------------------------------------------------------------------
// mhpmcounter24h (0xb98) - mhpmcounter24h
//------------------------------------------------------------------------------
class mhpmcounter24h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter24h_reg )

  rand uvm_reg_field mhpmcounter24h_field;

  function new( string name = "mhpmcounter24h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter24h_field = uvm_reg_field::type_id::create("mhpmcounter24h_field");
    mhpmcounter24h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter24h_reg


//------------------------------------------------------------------------------
// mhpmcounter25h (0xb99) - mhpmcounter25h
//------------------------------------------------------------------------------
class mhpmcounter25h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter25h_reg )

  rand uvm_reg_field mhpmcounter25h_field;

  function new( string name = "mhpmcounter25h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter25h_field = uvm_reg_field::type_id::create("mhpmcounter25h_field");
    mhpmcounter25h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter25h_reg


//------------------------------------------------------------------------------
// mhpmcounter26h (0xb9a) - mhpmcounter26h
//------------------------------------------------------------------------------
class mhpmcounter26h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter26h_reg )

  rand uvm_reg_field mhpmcounter26h_field;

  function new( string name = "mhpmcounter26h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter26h_field = uvm_reg_field::type_id::create("mhpmcounter26h_field");
    mhpmcounter26h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter26h_reg


//------------------------------------------------------------------------------
// mhpmcounter27h (0xb9b) - mhpmcounter27h
//------------------------------------------------------------------------------
class mhpmcounter27h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter27h_reg )

  rand uvm_reg_field mhpmcounter27h_field;

  function new( string name = "mhpmcounter27h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter27h_field = uvm_reg_field::type_id::create("mhpmcounter27h_field");
    mhpmcounter27h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter27h_reg


//------------------------------------------------------------------------------
// mhpmcounter28h (0xb9c) - mhpmcounter28h
//------------------------------------------------------------------------------
class mhpmcounter28h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter28h_reg )

  rand uvm_reg_field mhpmcounter28h_field;

  function new( string name = "mhpmcounter28h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter28h_field = uvm_reg_field::type_id::create("mhpmcounter28h_field");
    mhpmcounter28h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter28h_reg


//------------------------------------------------------------------------------
// mhpmcounter29h (0xb9d) - mhpmcounter29h
//------------------------------------------------------------------------------
class mhpmcounter29h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter29h_reg )

  rand uvm_reg_field mhpmcounter29h_field;

  function new( string name = "mhpmcounter29h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter29h_field = uvm_reg_field::type_id::create("mhpmcounter29h_field");
    mhpmcounter29h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter29h_reg


//------------------------------------------------------------------------------
// mhpmcounter30h (0xb9e) - mhpmcounter30h
//------------------------------------------------------------------------------
class mhpmcounter30h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter30h_reg )

  rand uvm_reg_field mhpmcounter30h_field;

  function new( string name = "mhpmcounter30h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter30h_field = uvm_reg_field::type_id::create("mhpmcounter30h_field");
    mhpmcounter30h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter30h_reg


//------------------------------------------------------------------------------
// mhpmcounter31h (0xb9f) - mhpmcounter31h
//------------------------------------------------------------------------------
class mhpmcounter31h_reg extends uvm_reg;
  `uvm_object_utils( mhpmcounter31h_reg )

  rand uvm_reg_field mhpmcounter31h_field;

  function new( string name = "mhpmcounter31h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mhpmcounter31h_field = uvm_reg_field::type_id::create("mhpmcounter31h_field");
    mhpmcounter31h_field.configure( .parent(this),
                                    .size(32),
                                    .lsb_pos(0),
                                    .access("RW"),
                                    .volatile(0),
                                    .reset(64'h0),
                                    .has_reset(1),
                                    .is_rand(1),
                                    .individually_accessible(1) );
  endfunction : build
endclass : mhpmcounter31h_reg


//------------------------------------------------------------------------------
// cycleh (0xc80) - cycleh
//------------------------------------------------------------------------------
class cycleh_reg extends uvm_reg;
  `uvm_object_utils( cycleh_reg )

  rand uvm_reg_field cycleh_field;

  function new( string name = "cycleh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    cycleh_field = uvm_reg_field::type_id::create("cycleh_field");
    cycleh_field.configure( .parent(this),
                            .size(32),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : cycleh_reg


//------------------------------------------------------------------------------
// timeh (0xc81) - timeh
//------------------------------------------------------------------------------
class timeh_reg extends uvm_reg;
  `uvm_object_utils( timeh_reg )

  rand uvm_reg_field timeh_field;

  function new( string name = "timeh_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    timeh_field = uvm_reg_field::type_id::create("timeh_field");
    timeh_field.configure( .parent(this),
                           .size(32),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : timeh_reg


//------------------------------------------------------------------------------
// instreth (0xc82) - instreth
//------------------------------------------------------------------------------
class instreth_reg extends uvm_reg;
  `uvm_object_utils( instreth_reg )

  rand uvm_reg_field instreth_field;

  function new( string name = "instreth_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    instreth_field = uvm_reg_field::type_id::create("instreth_field");
    instreth_field.configure( .parent(this),
                              .size(32),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : instreth_reg


//------------------------------------------------------------------------------
// hpmcounter3h (0xc83) - hpmcounter3h
//------------------------------------------------------------------------------
class hpmcounter3h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter3h_reg )

  rand uvm_reg_field hpmcounter3h_field;

  function new( string name = "hpmcounter3h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter3h_field = uvm_reg_field::type_id::create("hpmcounter3h_field");
    hpmcounter3h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter3h_reg


//------------------------------------------------------------------------------
// hpmcounter4h (0xc84) - hpmcounter4h
//------------------------------------------------------------------------------
class hpmcounter4h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter4h_reg )

  rand uvm_reg_field hpmcounter4h_field;

  function new( string name = "hpmcounter4h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter4h_field = uvm_reg_field::type_id::create("hpmcounter4h_field");
    hpmcounter4h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter4h_reg


//------------------------------------------------------------------------------
// hpmcounter5h (0xc85) - hpmcounter5h
//------------------------------------------------------------------------------
class hpmcounter5h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter5h_reg )

  rand uvm_reg_field hpmcounter5h_field;

  function new( string name = "hpmcounter5h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter5h_field = uvm_reg_field::type_id::create("hpmcounter5h_field");
    hpmcounter5h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter5h_reg


//------------------------------------------------------------------------------
// hpmcounter6h (0xc86) - hpmcounter6h
//------------------------------------------------------------------------------
class hpmcounter6h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter6h_reg )

  rand uvm_reg_field hpmcounter6h_field;

  function new( string name = "hpmcounter6h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter6h_field = uvm_reg_field::type_id::create("hpmcounter6h_field");
    hpmcounter6h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter6h_reg


//------------------------------------------------------------------------------
// hpmcounter7h (0xc87) - hpmcounter7h
//------------------------------------------------------------------------------
class hpmcounter7h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter7h_reg )

  rand uvm_reg_field hpmcounter7h_field;

  function new( string name = "hpmcounter7h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter7h_field = uvm_reg_field::type_id::create("hpmcounter7h_field");
    hpmcounter7h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter7h_reg


//------------------------------------------------------------------------------
// hpmcounter8h (0xc88) - hpmcounter8h
//------------------------------------------------------------------------------
class hpmcounter8h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter8h_reg )

  rand uvm_reg_field hpmcounter8h_field;

  function new( string name = "hpmcounter8h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter8h_field = uvm_reg_field::type_id::create("hpmcounter8h_field");
    hpmcounter8h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter8h_reg


//------------------------------------------------------------------------------
// hpmcounter9h (0xc89) - hpmcounter9h
//------------------------------------------------------------------------------
class hpmcounter9h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter9h_reg )

  rand uvm_reg_field hpmcounter9h_field;

  function new( string name = "hpmcounter9h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter9h_field = uvm_reg_field::type_id::create("hpmcounter9h_field");
    hpmcounter9h_field.configure( .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(64'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter9h_reg


//------------------------------------------------------------------------------
// hpmcounter10h (0xc8a) - hpmcounter10h
//------------------------------------------------------------------------------
class hpmcounter10h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter10h_reg )

  rand uvm_reg_field hpmcounter10h_field;

  function new( string name = "hpmcounter10h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter10h_field = uvm_reg_field::type_id::create("hpmcounter10h_field");
    hpmcounter10h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter10h_reg


//------------------------------------------------------------------------------
// hpmcounter11h (0xc8b) - hpmcounter11h
//------------------------------------------------------------------------------
class hpmcounter11h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter11h_reg )

  rand uvm_reg_field hpmcounter11h_field;

  function new( string name = "hpmcounter11h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter11h_field = uvm_reg_field::type_id::create("hpmcounter11h_field");
    hpmcounter11h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter11h_reg


//------------------------------------------------------------------------------
// hpmcounter12h (0xc8c) - hpmcounter12h
//------------------------------------------------------------------------------
class hpmcounter12h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter12h_reg )

  rand uvm_reg_field hpmcounter12h_field;

  function new( string name = "hpmcounter12h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter12h_field = uvm_reg_field::type_id::create("hpmcounter12h_field");
    hpmcounter12h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter12h_reg


//------------------------------------------------------------------------------
// hpmcounter13h (0xc8d) - hpmcounter13h
//------------------------------------------------------------------------------
class hpmcounter13h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter13h_reg )

  rand uvm_reg_field hpmcounter13h_field;

  function new( string name = "hpmcounter13h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter13h_field = uvm_reg_field::type_id::create("hpmcounter13h_field");
    hpmcounter13h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter13h_reg


//------------------------------------------------------------------------------
// hpmcounter14h (0xc8e) - hpmcounter14h
//------------------------------------------------------------------------------
class hpmcounter14h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter14h_reg )

  rand uvm_reg_field hpmcounter14h_field;

  function new( string name = "hpmcounter14h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter14h_field = uvm_reg_field::type_id::create("hpmcounter14h_field");
    hpmcounter14h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter14h_reg


//------------------------------------------------------------------------------
// hpmcounter15h (0xc8f) - hpmcounter15h
//------------------------------------------------------------------------------
class hpmcounter15h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter15h_reg )

  rand uvm_reg_field hpmcounter15h_field;

  function new( string name = "hpmcounter15h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter15h_field = uvm_reg_field::type_id::create("hpmcounter15h_field");
    hpmcounter15h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter15h_reg


//------------------------------------------------------------------------------
// hpmcounter16h (0xc90) - hpmcounter16h
//------------------------------------------------------------------------------
class hpmcounter16h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter16h_reg )

  rand uvm_reg_field hpmcounter16h_field;

  function new( string name = "hpmcounter16h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter16h_field = uvm_reg_field::type_id::create("hpmcounter16h_field");
    hpmcounter16h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter16h_reg


//------------------------------------------------------------------------------
// hpmcounter17h (0xc91) - hpmcounter17h
//------------------------------------------------------------------------------
class hpmcounter17h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter17h_reg )

  rand uvm_reg_field hpmcounter17h_field;

  function new( string name = "hpmcounter17h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter17h_field = uvm_reg_field::type_id::create("hpmcounter17h_field");
    hpmcounter17h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter17h_reg


//------------------------------------------------------------------------------
// hpmcounter18h (0xc92) - hpmcounter18h
//------------------------------------------------------------------------------
class hpmcounter18h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter18h_reg )

  rand uvm_reg_field hpmcounter18h_field;

  function new( string name = "hpmcounter18h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter18h_field = uvm_reg_field::type_id::create("hpmcounter18h_field");
    hpmcounter18h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter18h_reg


//------------------------------------------------------------------------------
// hpmcounter19h (0xc93) - hpmcounter19h
//------------------------------------------------------------------------------
class hpmcounter19h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter19h_reg )

  rand uvm_reg_field hpmcounter19h_field;

  function new( string name = "hpmcounter19h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter19h_field = uvm_reg_field::type_id::create("hpmcounter19h_field");
    hpmcounter19h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter19h_reg


//------------------------------------------------------------------------------
// hpmcounter20h (0xc94) - hpmcounter20h
//------------------------------------------------------------------------------
class hpmcounter20h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter20h_reg )

  rand uvm_reg_field hpmcounter20h_field;

  function new( string name = "hpmcounter20h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter20h_field = uvm_reg_field::type_id::create("hpmcounter20h_field");
    hpmcounter20h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter20h_reg


//------------------------------------------------------------------------------
// hpmcounter21h (0xc95) - hpmcounter21h
//------------------------------------------------------------------------------
class hpmcounter21h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter21h_reg )

  rand uvm_reg_field hpmcounter21h_field;

  function new( string name = "hpmcounter21h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter21h_field = uvm_reg_field::type_id::create("hpmcounter21h_field");
    hpmcounter21h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter21h_reg


//------------------------------------------------------------------------------
// hpmcounter22h (0xc96) - hpmcounter22h
//------------------------------------------------------------------------------
class hpmcounter22h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter22h_reg )

  rand uvm_reg_field hpmcounter22h_field;

  function new( string name = "hpmcounter22h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter22h_field = uvm_reg_field::type_id::create("hpmcounter22h_field");
    hpmcounter22h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter22h_reg


//------------------------------------------------------------------------------
// hpmcounter23h (0xc97) - hpmcounter23h
//------------------------------------------------------------------------------
class hpmcounter23h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter23h_reg )

  rand uvm_reg_field hpmcounter23h_field;

  function new( string name = "hpmcounter23h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter23h_field = uvm_reg_field::type_id::create("hpmcounter23h_field");
    hpmcounter23h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter23h_reg


//------------------------------------------------------------------------------
// hpmcounter24h (0xc98) - hpmcounter24h
//------------------------------------------------------------------------------
class hpmcounter24h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter24h_reg )

  rand uvm_reg_field hpmcounter24h_field;

  function new( string name = "hpmcounter24h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter24h_field = uvm_reg_field::type_id::create("hpmcounter24h_field");
    hpmcounter24h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter24h_reg


//------------------------------------------------------------------------------
// hpmcounter25h (0xc99) - hpmcounter25h
//------------------------------------------------------------------------------
class hpmcounter25h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter25h_reg )

  rand uvm_reg_field hpmcounter25h_field;

  function new( string name = "hpmcounter25h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter25h_field = uvm_reg_field::type_id::create("hpmcounter25h_field");
    hpmcounter25h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter25h_reg


//------------------------------------------------------------------------------
// hpmcounter26h (0xc9a) - hpmcounter26h
//------------------------------------------------------------------------------
class hpmcounter26h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter26h_reg )

  rand uvm_reg_field hpmcounter26h_field;

  function new( string name = "hpmcounter26h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter26h_field = uvm_reg_field::type_id::create("hpmcounter26h_field");
    hpmcounter26h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter26h_reg


//------------------------------------------------------------------------------
// hpmcounter27h (0xc9b) - hpmcounter27h
//------------------------------------------------------------------------------
class hpmcounter27h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter27h_reg )

  rand uvm_reg_field hpmcounter27h_field;

  function new( string name = "hpmcounter27h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter27h_field = uvm_reg_field::type_id::create("hpmcounter27h_field");
    hpmcounter27h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter27h_reg


//------------------------------------------------------------------------------
// hpmcounter28h (0xc9c) - hpmcounter28h
//------------------------------------------------------------------------------
class hpmcounter28h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter28h_reg )

  rand uvm_reg_field hpmcounter28h_field;

  function new( string name = "hpmcounter28h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter28h_field = uvm_reg_field::type_id::create("hpmcounter28h_field");
    hpmcounter28h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter28h_reg


//------------------------------------------------------------------------------
// hpmcounter29h (0xc9d) - hpmcounter29h
//------------------------------------------------------------------------------
class hpmcounter29h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter29h_reg )

  rand uvm_reg_field hpmcounter29h_field;

  function new( string name = "hpmcounter29h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter29h_field = uvm_reg_field::type_id::create("hpmcounter29h_field");
    hpmcounter29h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter29h_reg


//------------------------------------------------------------------------------
// hpmcounter30h (0xc9e) - hpmcounter30h
//------------------------------------------------------------------------------
class hpmcounter30h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter30h_reg )

  rand uvm_reg_field hpmcounter30h_field;

  function new( string name = "hpmcounter30h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter30h_field = uvm_reg_field::type_id::create("hpmcounter30h_field");
    hpmcounter30h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter30h_reg


//------------------------------------------------------------------------------
// hpmcounter31h (0xc9f) - hpmcounter31h
//------------------------------------------------------------------------------
class hpmcounter31h_reg extends uvm_reg;
  `uvm_object_utils( hpmcounter31h_reg )

  rand uvm_reg_field hpmcounter31h_field;

  function new( string name = "hpmcounter31h_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hpmcounter31h_field = uvm_reg_field::type_id::create("hpmcounter31h_field");
    hpmcounter31h_field.configure( .parent(this),
                                   .size(32),
                                   .lsb_pos(0),
                                   .access("RW"),
                                   .volatile(0),
                                   .reset(64'h0),
                                   .has_reset(1),
                                   .is_rand(1),
                                   .individually_accessible(1) );
  endfunction : build
endclass : hpmcounter31h_reg
