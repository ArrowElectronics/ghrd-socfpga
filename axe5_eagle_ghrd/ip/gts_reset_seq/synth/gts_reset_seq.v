// gts_reset_seq.v

// Generated using ACDS version 23.4 77

`timescale 1 ps / 1 ps
module gts_reset_seq (
		output wire [0:0] o_src_rs_grant,    //         rsif.src_rs_grant,    SRC_GRANT
		input  wire [0:0] i_src_rs_priority, //             .src_rs_priority, PRIORITY BIT
		input  wire [0:0] i_src_rs_req,      //             .src_rs_req,      SRC_REQ
		output wire [0:0] o_pma_cu_clk       // o_pma_cu_clk.clk,             PMA clock from PLL for proper calculation. For simulation only
	);

	gts_reset_seq_intel_srcss_gts_200_wnl7lpy #(
		.SRC_RS_DISABLE      (0),
		.NUM_LANES_SHORELINE (1),
		.NUM_BANKS_SHORELINE (1)
	) intel_srcss_gts_0 (
		.o_src_rs_grant    (o_src_rs_grant),    //  output,  width = 1,         rsif.src_rs_grant
		.i_src_rs_priority (i_src_rs_priority), //   input,  width = 1,             .src_rs_priority
		.i_src_rs_req      (i_src_rs_req),      //   input,  width = 1,             .src_rs_req
		.o_pma_cu_clk      (o_pma_cu_clk)       //  output,  width = 1, o_pma_cu_clk.clk
	);

endmodule
