
module DifftestRunaheadRedirectEvent(
  input         io_clock,
input  [ 7:0] io_coreid,
input         io_valid,
input  [63:0] io_pc,
input  [63:0] io_target_pc,
input  [63:0] io_checkpoint_id
);
`ifndef SYNTHESIS
`ifdef DIFFTEST

import "DPI-C" function void v_difftest_RunaheadRedirectEvent (
input     byte io_coreid,
input      bit io_valid,
input  longint io_pc,
input  longint io_target_pc,
input  longint io_checkpoint_id
);

  always @(posedge io_clock) begin
    v_difftest_RunaheadRedirectEvent (io_coreid,io_valid,io_pc,io_target_pc,io_checkpoint_id);
  end
`endif
`endif
endmodule
