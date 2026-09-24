//------------------------------------------------------------------------------
// csr_zvl32b_reg_block.svh
//
// RAL-модель Zvl32b.
// АВТОГЕНЕРАЦИЯ. Не редактировать вручную.
//------------------------------------------------------------------------------

class csr_zvl32b_reg_block extends uvm_reg_block;
  `uvm_object_utils( csr_zvl32b_reg_block )

  rand vstart_reg vstart;
  rand vxsat_reg vxsat;
  rand vxrm_reg vxrm;
  rand vcsr_reg vcsr;
  rand vl_reg vl;
  rand vtype_reg vtype;
  rand vlenb_reg vlenb;

  uvm_reg_map csr_map;

  function new( string name = "csr_zvl32b_reg_block" );
    super.new( .name(name), .has_coverage(UVM_NO_COVERAGE) );
  endfunction : new

  virtual function void build();
    vstart = vstart_reg::type_id::create("vstart");
    vstart.configure( .blk_parent(this) );
    vstart.build();

    vxsat = vxsat_reg::type_id::create("vxsat");
    vxsat.configure( .blk_parent(this) );
    vxsat.build();

    vxrm = vxrm_reg::type_id::create("vxrm");
    vxrm.configure( .blk_parent(this) );
    vxrm.build();

    vcsr = vcsr_reg::type_id::create("vcsr");
    vcsr.configure( .blk_parent(this) );
    vcsr.build();

    vl = vl_reg::type_id::create("vl");
    vl.configure( .blk_parent(this) );
    vl.build();

    vtype = vtype_reg::type_id::create("vtype");
    vtype.configure( .blk_parent(this) );
    vtype.build();

    vlenb = vlenb_reg::type_id::create("vlenb");
    vlenb.configure( .blk_parent(this) );
    vlenb.build();

    csr_map = create_map("csr_map", 'h0, 8, UVM_LITTLE_ENDIAN, 1);

    csr_map.add_reg(vstart, 12'h008, "RW");
    csr_map.add_reg(vxsat, 12'h009, "RW");
    csr_map.add_reg(vxrm, 12'h00a, "RW");
    csr_map.add_reg(vcsr, 12'h00f, "RW");
    csr_map.add_reg(vl, 12'hc20, "RW");
    csr_map.add_reg(vtype, 12'hc21, "RW");
    csr_map.add_reg(vlenb, 12'hc22, "RW");

    lock_model();
  endfunction : build

endclass : csr_zvl32b_reg_block
