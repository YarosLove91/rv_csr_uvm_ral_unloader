// monitor.sv
class monitor extends uvm_monitor;
  virtual sfr_if vif;

  uvm_analysis_port#(seq_item) item_collect_port;
  `uvm_component_utils(monitor)

  function new(string name = "monitor", uvm_component parent = null);
    super.new(name, parent);
    item_collect_port = new("item_collect_port", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual sfr_if)::get(this, "", "vif", vif))
      `uvm_fatal(get_type_name(), "Not set at top level");
  endfunction

  task run_phase(uvm_phase phase);
    forever begin
      seq_item mon_item;
      @(posedge vif.clk);

      // WRITE: i_wr_en активен и DUT подтвердил готовность
      if (vif.i_wr_en && vif.o_wready) begin
        mon_item = seq_item::type_id::create("mon_item");
        mon_item.addr     = vif.i_waddr;
        mon_item.data     = vif.i_wdata;
        mon_item.rd_or_wr = 1'b0;
        item_collect_port.write(mon_item);
        `uvm_info(get_type_name(),
                  $sformatf("WR %s", mon_item.convert2string()),
                  UVM_LOW)
      end
      // READ: i_rd_en активен и DUT вернул данные
      else if (vif.i_rd_en && vif.o_rvalid) begin
        mon_item = seq_item::type_id::create("mon_item");
        mon_item.addr     = vif.i_raddr;
        mon_item.data     = vif.o_rdata;
        mon_item.rd_or_wr = 1'b1;
        item_collect_port.write(mon_item);
        `uvm_info(get_type_name(),
                  $sformatf("RD %s", mon_item.convert2string()),
                  UVM_LOW)
      end
    end
  endtask
endclass