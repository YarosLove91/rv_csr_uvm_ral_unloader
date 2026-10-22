//------------------------------------------------------------------------------
// vsstatus (0x200) - vsstatus
//------------------------------------------------------------------------------
class vsstatus_reg extends uvm_reg;
  `uvm_object_utils( vsstatus_reg )

  rand uvm_reg_field vsstatus_field;

  function new( string name = "vsstatus_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsstatus_field = uvm_reg_field::type_id::create("vsstatus_field");
    vsstatus_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : vsstatus_reg


//------------------------------------------------------------------------------
// vsie (0x204) - vsie
//------------------------------------------------------------------------------
class vsie_reg extends uvm_reg;
  `uvm_object_utils( vsie_reg )

  rand uvm_reg_field vsie_field;

  function new( string name = "vsie_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsie_field = uvm_reg_field::type_id::create("vsie_field");
    vsie_field.configure( .parent(this),
                          .size(64),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : vsie_reg


//------------------------------------------------------------------------------
// vstvec (0x205) - vstvec
//------------------------------------------------------------------------------
class vstvec_reg extends uvm_reg;
  `uvm_object_utils( vstvec_reg )

  rand uvm_reg_field vstvec_field;

  function new( string name = "vstvec_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vstvec_field = uvm_reg_field::type_id::create("vstvec_field");
    vstvec_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : vstvec_reg


//------------------------------------------------------------------------------
// vsscratch (0x240) - vsscratch
//------------------------------------------------------------------------------
class vsscratch_reg extends uvm_reg;
  `uvm_object_utils( vsscratch_reg )

  rand uvm_reg_field vsscratch_field;

  function new( string name = "vsscratch_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsscratch_field = uvm_reg_field::type_id::create("vsscratch_field");
    vsscratch_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : vsscratch_reg


//------------------------------------------------------------------------------
// vsepc (0x241) - vsepc
//------------------------------------------------------------------------------
class vsepc_reg extends uvm_reg;
  `uvm_object_utils( vsepc_reg )

  rand uvm_reg_field vsepc_field;

  function new( string name = "vsepc_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsepc_field = uvm_reg_field::type_id::create("vsepc_field");
    vsepc_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : vsepc_reg


//------------------------------------------------------------------------------
// vscause (0x242) - vscause
//------------------------------------------------------------------------------
class vscause_reg extends uvm_reg;
  `uvm_object_utils( vscause_reg )

  rand uvm_reg_field vscause_field;

  function new( string name = "vscause_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vscause_field = uvm_reg_field::type_id::create("vscause_field");
    vscause_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : vscause_reg


//------------------------------------------------------------------------------
// vstval (0x243) - vstval
//------------------------------------------------------------------------------
class vstval_reg extends uvm_reg;
  `uvm_object_utils( vstval_reg )

  rand uvm_reg_field vstval_field;

  function new( string name = "vstval_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vstval_field = uvm_reg_field::type_id::create("vstval_field");
    vstval_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : vstval_reg


//------------------------------------------------------------------------------
// vsip (0x244) - vsip
//------------------------------------------------------------------------------
class vsip_reg extends uvm_reg;
  `uvm_object_utils( vsip_reg )

  rand uvm_reg_field vsip_field;

  function new( string name = "vsip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsip_field = uvm_reg_field::type_id::create("vsip_field");
    vsip_field.configure( .parent(this),
                          .size(64),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : vsip_reg


//------------------------------------------------------------------------------
// vstimecmp (0x24d) - vstimecmp
//------------------------------------------------------------------------------
class vstimecmp_reg extends uvm_reg;
  `uvm_object_utils( vstimecmp_reg )

  rand uvm_reg_field vstimecmp_field;

  function new( string name = "vstimecmp_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vstimecmp_field = uvm_reg_field::type_id::create("vstimecmp_field");
    vstimecmp_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : vstimecmp_reg


//------------------------------------------------------------------------------
// vsctrctl (0x24e) - vsctrctl
//------------------------------------------------------------------------------
class vsctrctl_reg extends uvm_reg;
  `uvm_object_utils( vsctrctl_reg )

  rand uvm_reg_field vsctrctl_field;

  function new( string name = "vsctrctl_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsctrctl_field = uvm_reg_field::type_id::create("vsctrctl_field");
    vsctrctl_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : vsctrctl_reg


//------------------------------------------------------------------------------
// vsatp (0x280) - vsatp
//------------------------------------------------------------------------------
class vsatp_reg extends uvm_reg;
  `uvm_object_utils( vsatp_reg )

  rand uvm_reg_field vsatp_field;

  function new( string name = "vsatp_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vsatp_field = uvm_reg_field::type_id::create("vsatp_field");
    vsatp_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : vsatp_reg


//------------------------------------------------------------------------------
// mtinst (0x34a) - mtinst
//------------------------------------------------------------------------------
class mtinst_reg extends uvm_reg;
  `uvm_object_utils( mtinst_reg )

  rand uvm_reg_field mtinst_field;

  function new( string name = "mtinst_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtinst_field = uvm_reg_field::type_id::create("mtinst_field");
    mtinst_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtinst_reg


//------------------------------------------------------------------------------
// mtval2 (0x34b) - mtval2
//------------------------------------------------------------------------------
class mtval2_reg extends uvm_reg;
  `uvm_object_utils( mtval2_reg )

  rand uvm_reg_field mtval2_field;

  function new( string name = "mtval2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    mtval2_field = uvm_reg_field::type_id::create("mtval2_field");
    mtval2_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : mtval2_reg


//------------------------------------------------------------------------------
// hstatus (0x600) - hstatus
//------------------------------------------------------------------------------
class hstatus_reg extends uvm_reg;
  `uvm_object_utils( hstatus_reg )

  rand uvm_reg_field hstatus_field;

  function new( string name = "hstatus_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstatus_field = uvm_reg_field::type_id::create("hstatus_field");
    hstatus_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : hstatus_reg


//------------------------------------------------------------------------------
// hedeleg (0x602) - hedeleg
//------------------------------------------------------------------------------
class hedeleg_reg extends uvm_reg;
  `uvm_object_utils( hedeleg_reg )

  rand uvm_reg_field hedeleg_field;

  function new( string name = "hedeleg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hedeleg_field = uvm_reg_field::type_id::create("hedeleg_field");
    hedeleg_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : hedeleg_reg


//------------------------------------------------------------------------------
// hideleg (0x603) - hideleg
//------------------------------------------------------------------------------
class hideleg_reg extends uvm_reg;
  `uvm_object_utils( hideleg_reg )

  rand uvm_reg_field hideleg_field;

  function new( string name = "hideleg_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hideleg_field = uvm_reg_field::type_id::create("hideleg_field");
    hideleg_field.configure( .parent(this),
                             .size(64),
                             .lsb_pos(0),
                             .access("RW"),
                             .volatile(0),
                             .reset(64'h0),
                             .has_reset(1),
                             .is_rand(1),
                             .individually_accessible(1) );
  endfunction : build
endclass : hideleg_reg


//------------------------------------------------------------------------------
// hie (0x604) - hie
//------------------------------------------------------------------------------
class hie_reg extends uvm_reg;
  `uvm_object_utils( hie_reg )

  rand uvm_reg_field hie_field;

  function new( string name = "hie_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hie_field = uvm_reg_field::type_id::create("hie_field");
    hie_field.configure( .parent(this),
                         .size(64),
                         .lsb_pos(0),
                         .access("RW"),
                         .volatile(0),
                         .reset(64'h0),
                         .has_reset(1),
                         .is_rand(1),
                         .individually_accessible(1) );
  endfunction : build
endclass : hie_reg


//------------------------------------------------------------------------------
// htimedelta (0x605) - htimedelta
//------------------------------------------------------------------------------
class htimedelta_reg extends uvm_reg;
  `uvm_object_utils( htimedelta_reg )

  rand uvm_reg_field htimedelta_field;

  function new( string name = "htimedelta_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    htimedelta_field = uvm_reg_field::type_id::create("htimedelta_field");
    htimedelta_field.configure( .parent(this),
                                .size(64),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : htimedelta_reg


//------------------------------------------------------------------------------
// hcounteren (0x606) - hcounteren
//------------------------------------------------------------------------------
class hcounteren_reg extends uvm_reg;
  `uvm_object_utils( hcounteren_reg )

  rand uvm_reg_field hcounteren_field;

  function new( string name = "hcounteren_reg" );
    super.new( .name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hcounteren_field = uvm_reg_field::type_id::create("hcounteren_field");
    hcounteren_field.configure( .parent(this),
                                .size(32),
                                .lsb_pos(0),
                                .access("RW"),
                                .volatile(0),
                                .reset(64'h0),
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1) );
  endfunction : build
endclass : hcounteren_reg


//------------------------------------------------------------------------------
// hgeie (0x607) - hgeie
//------------------------------------------------------------------------------
class hgeie_reg extends uvm_reg;
  `uvm_object_utils( hgeie_reg )

  rand uvm_reg_field hgeie_field;

  function new( string name = "hgeie_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hgeie_field = uvm_reg_field::type_id::create("hgeie_field");
    hgeie_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : hgeie_reg


//------------------------------------------------------------------------------
// hip (0x608) - hip
//------------------------------------------------------------------------------
class hip_reg extends uvm_reg;
  `uvm_object_utils( hip_reg )

  rand uvm_reg_field hip_field;

  function new( string name = "hip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hip_field = uvm_reg_field::type_id::create("hip_field");
    hip_field.configure( .parent(this),
                         .size(64),
                         .lsb_pos(0),
                         .access("RW"),
                         .volatile(0),
                         .reset(64'h0),
                         .has_reset(1),
                         .is_rand(1),
                         .individually_accessible(1) );
  endfunction : build
endclass : hip_reg


//------------------------------------------------------------------------------
// hstateen0 (0x60c) - hstateen0
//------------------------------------------------------------------------------
class hstateen0_reg extends uvm_reg;
  `uvm_object_utils( hstateen0_reg )

  rand uvm_reg_field hstateen0_field;

  function new( string name = "hstateen0_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen0_field = uvm_reg_field::type_id::create("hstateen0_field");
    hstateen0_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : hstateen0_reg


//------------------------------------------------------------------------------
// hstateen1 (0x60d) - hstateen1
//------------------------------------------------------------------------------
class hstateen1_reg extends uvm_reg;
  `uvm_object_utils( hstateen1_reg )

  rand uvm_reg_field hstateen1_field;

  function new( string name = "hstateen1_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen1_field = uvm_reg_field::type_id::create("hstateen1_field");
    hstateen1_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : hstateen1_reg


//------------------------------------------------------------------------------
// hstateen2 (0x60e) - hstateen2
//------------------------------------------------------------------------------
class hstateen2_reg extends uvm_reg;
  `uvm_object_utils( hstateen2_reg )

  rand uvm_reg_field hstateen2_field;

  function new( string name = "hstateen2_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen2_field = uvm_reg_field::type_id::create("hstateen2_field");
    hstateen2_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : hstateen2_reg


//------------------------------------------------------------------------------
// hstateen3 (0x60f) - hstateen3
//------------------------------------------------------------------------------
class hstateen3_reg extends uvm_reg;
  `uvm_object_utils( hstateen3_reg )

  rand uvm_reg_field hstateen3_field;

  function new( string name = "hstateen3_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hstateen3_field = uvm_reg_field::type_id::create("hstateen3_field");
    hstateen3_field.configure( .parent(this),
                               .size(64),
                               .lsb_pos(0),
                               .access("RW"),
                               .volatile(0),
                               .reset(64'h0),
                               .has_reset(1),
                               .is_rand(1),
                               .individually_accessible(1) );
  endfunction : build
endclass : hstateen3_reg


//------------------------------------------------------------------------------
// htval (0x643) - htval
//------------------------------------------------------------------------------
class htval_reg extends uvm_reg;
  `uvm_object_utils( htval_reg )

  rand uvm_reg_field htval_field;

  function new( string name = "htval_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    htval_field = uvm_reg_field::type_id::create("htval_field");
    htval_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : htval_reg


//------------------------------------------------------------------------------
// hvip (0x645) - hvip
//------------------------------------------------------------------------------
class hvip_reg extends uvm_reg;
  `uvm_object_utils( hvip_reg )

  rand uvm_reg_field hvip_field;

  function new( string name = "hvip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hvip_field = uvm_reg_field::type_id::create("hvip_field");
    hvip_field.configure( .parent(this),
                          .size(64),
                          .lsb_pos(0),
                          .access("RW"),
                          .volatile(0),
                          .reset(64'h0),
                          .has_reset(1),
                          .is_rand(1),
                          .individually_accessible(1) );
  endfunction : build
endclass : hvip_reg


//------------------------------------------------------------------------------
// htinst (0x64a) - htinst
//------------------------------------------------------------------------------
class htinst_reg extends uvm_reg;
  `uvm_object_utils( htinst_reg )

  rand uvm_reg_field htinst_field;

  function new( string name = "htinst_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    htinst_field = uvm_reg_field::type_id::create("htinst_field");
    htinst_field.configure( .parent(this),
                            .size(64),
                            .lsb_pos(0),
                            .access("RW"),
                            .volatile(0),
                            .reset(64'h0),
                            .has_reset(1),
                            .is_rand(1),
                            .individually_accessible(1) );
  endfunction : build
endclass : htinst_reg


//------------------------------------------------------------------------------
// hgatp (0x680) - hgatp
//------------------------------------------------------------------------------
class hgatp_reg extends uvm_reg;
  `uvm_object_utils( hgatp_reg )

  rand uvm_reg_field hgatp_field;

  function new( string name = "hgatp_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hgatp_field = uvm_reg_field::type_id::create("hgatp_field");
    hgatp_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : hgatp_reg


//------------------------------------------------------------------------------
// hcontext (0x6a8) - hcontext
//------------------------------------------------------------------------------
class hcontext_reg extends uvm_reg;
  `uvm_object_utils( hcontext_reg )

  rand uvm_reg_field hcontext_field;

  function new( string name = "hcontext_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hcontext_field = uvm_reg_field::type_id::create("hcontext_field");
    hcontext_field.configure( .parent(this),
                              .size(64),
                              .lsb_pos(0),
                              .access("RW"),
                              .volatile(0),
                              .reset(64'h0),
                              .has_reset(1),
                              .is_rand(1),
                              .individually_accessible(1) );
  endfunction : build
endclass : hcontext_reg


//------------------------------------------------------------------------------
// hgeip (0xe12) - hgeip
//------------------------------------------------------------------------------
class hgeip_reg extends uvm_reg;
  `uvm_object_utils( hgeip_reg )

  rand uvm_reg_field hgeip_field;

  function new( string name = "hgeip_reg" );
    super.new( .name(name), .n_bits(64), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    hgeip_field = uvm_reg_field::type_id::create("hgeip_field");
    hgeip_field.configure( .parent(this),
                           .size(64),
                           .lsb_pos(0),
                           .access("RW"),
                           .volatile(0),
                           .reset(64'h0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(1) );
  endfunction : build
endclass : hgeip_reg
