
module DifftestRunaheadEvent(
  input         io_clock,
input  [ 7:0] io_coreid,
input  [ 7:0] io_index,
input         io_valid,
input         io_branch,
input         io_may_replay,
input  [63:0] io_pc,
input  [63:0] io_checkpoint_id
);
`ifndef SYNTHESIS
`ifdef DIFFTEST

import "DPI-C" function void v_difftest_RunaheadEvent (
input     byte io_coreid,
input     byte io_index,
input      bit io_valid,
input      bit io_branch,
input      bit io_may_replay,
input  longint io_pc,
input  longint io_checkpoint_id
);

  always @(posedge io_clock) begin
    v_difftest_RunaheadEvent (io_coreid,io_index,io_valid,io_branch,io_may_replay,io_pc,io_checkpoint_id);
  end
`endif
`endif
endmodule
