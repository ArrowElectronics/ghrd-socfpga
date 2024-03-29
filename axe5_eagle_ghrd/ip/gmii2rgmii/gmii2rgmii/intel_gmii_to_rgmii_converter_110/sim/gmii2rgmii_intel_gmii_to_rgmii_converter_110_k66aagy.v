// gmii2rgmii_intel_gmii_to_rgmii_converter_110_k66aagy.v

// This file was auto-generated from intel_gmii_to_rgmii_converter_wrapper_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module gmii2rgmii_intel_gmii_to_rgmii_converter_110_k66aagy #(
		parameter TX_PIPELINE_DEPTH = 1,
		parameter RX_PIPELINE_DEPTH = 1,
		parameter ADVANCED_MODE     = 0
	) (
		input  wire       hps_gmii_mac_tx_clk_o,     //           hps_gmii.mac_tx_clk_o
		input  wire       hps_gmii_mac_rst_tx_n,     //                   .mac_rst_tx_n
		input  wire       hps_gmii_mac_rst_rx_n,     //                   .mac_rst_rx_n
		input  wire [7:0] hps_gmii_mac_txd_o,        //                   .mac_txd_o
		input  wire       hps_gmii_mac_txen,         //                   .mac_txen
		input  wire       hps_gmii_mac_txer,         //                   .mac_txer
		input  wire [2:0] hps_gmii_mac_speed,        //                   .mac_speed
		output wire       hps_gmii_mac_tx_clk_i,     //                   .mac_tx_clk_i
		output wire       hps_gmii_mac_rx_clk,       //                   .mac_rx_clk
		output wire       hps_gmii_mac_rxdv,         //                   .mac_rxdv
		output wire       hps_gmii_mac_rxer,         //                   .mac_rxer
		output wire [7:0] hps_gmii_mac_rxd,          //                   .mac_rxd
		output wire       hps_gmii_mac_col,          //                   .mac_col
		output wire       hps_gmii_mac_crs,          //                   .mac_crs
		input  wire       phy_rgmii_rgmii_rx_clk,    //          phy_rgmii.rgmii_rx_clk
		input  wire [3:0] phy_rgmii_rgmii_rxd,       //                   .rgmii_rxd
		input  wire       phy_rgmii_rgmii_rx_ctl,    //                   .rgmii_rx_ctl
		output wire       phy_rgmii_rgmii_tx_clk,    //                   .rgmii_tx_clk
		output wire [3:0] phy_rgmii_rgmii_txd,       //                   .rgmii_txd
		output wire       phy_rgmii_rgmii_tx_ctl,    //                   .rgmii_tx_ctl
		input  wire       pll_250m_tx_clock_clk,     //  pll_250m_tx_clock.clk
		input  wire       pll_125m_tx_clock_clk,     //  pll_125m_tx_clock.clk
		input  wire       pll_25m_clock_clk,         //      pll_25m_clock.clk
		input  wire       pll_2_5m_clock_clk,        //     pll_2_5m_clock.clk
		input  wire       locked_pll_250m_tx_export, // locked_pll_250m_tx.export
		input  wire       peri_reset_reset,          //         peri_reset.reset
		input  wire       peri_clock_clk             //         peri_clock.clk
	);

	wire    u_pll_rx_2x_outclk0_clk;                               // u_pll_rx_2x:outclk_0 -> u_intel_gmii_to_rgmii_adapter_core:pll_rx_clk_2x
	wire    u_pll_rx_2x_locked_export;                             // u_pll_rx_2x:locked -> u_intel_gmii_to_rgmii_adapter_core:locked_pll_rx
	wire    u_intel_gmii_to_rgmii_adapter_core_pll_rx_clk_ref_clk; // u_intel_gmii_to_rgmii_adapter_core:pll_rx_clk_ref -> u_pll_rx_2x:refclk
	wire    rst_controller_reset_out_reset;                        // rst_controller:reset_out -> u_intel_gmii_to_rgmii_adapter_core:rst_n

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (TX_PIPELINE_DEPTH != 1)
		begin
		// synthesis translate_off
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
		// synthesis translate_on
			instantiated_with_wrong_parameters_error_see_comment_above
					tx_pipeline_depth_check ( .error(1'b1) );
		end
		if (RX_PIPELINE_DEPTH != 1)
		begin
		// synthesis translate_off
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
		// synthesis translate_on
			instantiated_with_wrong_parameters_error_see_comment_above
					rx_pipeline_depth_check ( .error(1'b1) );
		end
		if (ADVANCED_MODE != 0)
		begin
		// synthesis translate_off
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
		// synthesis translate_on
			instantiated_with_wrong_parameters_error_see_comment_above
					advanced_mode_check ( .error(1'b1) );
		end
	endgenerate

	intel_gmii_to_rgmii_adapter #(
		.TX_PIPELINE_DEPTH (1),
		.RX_PIPELINE_DEPTH (1),
		.USE_ALTGPIO       (0),
		.ADVANCED_MODE     (0)
	) u_intel_gmii_to_rgmii_adapter_core (
		.clk                (peri_clock_clk),                                        //   input,  width = 1,         peri_clock.clk
		.rst_n              (~rst_controller_reset_out_reset),                       //   input,  width = 1,         peri_reset.reset_n
		.mac_tx_clk_o       (hps_gmii_mac_tx_clk_o),                                 //   input,  width = 1,           hps_gmii.mac_tx_clk_o
		.mac_rst_tx_n       (hps_gmii_mac_rst_tx_n),                                 //   input,  width = 1,                   .mac_rst_tx_n
		.mac_rst_rx_n       (hps_gmii_mac_rst_rx_n),                                 //   input,  width = 1,                   .mac_rst_rx_n
		.mac_txd            (hps_gmii_mac_txd_o),                                    //   input,  width = 8,                   .mac_txd_o
		.mac_txen           (hps_gmii_mac_txen),                                     //   input,  width = 1,                   .mac_txen
		.mac_txer           (hps_gmii_mac_txer),                                     //   input,  width = 1,                   .mac_txer
		.mac_speed          (hps_gmii_mac_speed),                                    //   input,  width = 3,                   .mac_speed
		.mac_tx_clk_i       (hps_gmii_mac_tx_clk_i),                                 //  output,  width = 1,                   .mac_tx_clk_i
		.mac_rx_clk         (hps_gmii_mac_rx_clk),                                   //  output,  width = 1,                   .mac_rx_clk
		.mac_rxdv           (hps_gmii_mac_rxdv),                                     //  output,  width = 1,                   .mac_rxdv
		.mac_rxer           (hps_gmii_mac_rxer),                                     //  output,  width = 1,                   .mac_rxer
		.mac_rxd            (hps_gmii_mac_rxd),                                      //  output,  width = 8,                   .mac_rxd
		.mac_col            (hps_gmii_mac_col),                                      //  output,  width = 1,                   .mac_col
		.mac_crs            (hps_gmii_mac_crs),                                      //  output,  width = 1,                   .mac_crs
		.rgmii_rx_clk       (phy_rgmii_rgmii_rx_clk),                                //   input,  width = 1,          phy_rgmii.rgmii_rx_clk
		.rgmii_rxd          (phy_rgmii_rgmii_rxd),                                   //   input,  width = 4,                   .rgmii_rxd
		.rgmii_rx_ctl       (phy_rgmii_rgmii_rx_ctl),                                //   input,  width = 1,                   .rgmii_rx_ctl
		.rgmii_tx_clk       (phy_rgmii_rgmii_tx_clk),                                //  output,  width = 1,                   .rgmii_tx_clk
		.rgmii_txd          (phy_rgmii_rgmii_txd),                                   //  output,  width = 4,                   .rgmii_txd
		.rgmii_tx_ctl       (phy_rgmii_rgmii_tx_ctl),                                //  output,  width = 1,                   .rgmii_tx_ctl
		.pll_rx_clk_ref     (u_intel_gmii_to_rgmii_adapter_core_pll_rx_clk_ref_clk), //  output,  width = 1,     pll_rx_clk_ref.clk
		.pll_rx_clk_2x      (u_pll_rx_2x_outclk0_clk),                               //   input,  width = 1,      pll_rx_clk_2x.clk
		.pll_250m_tx_clk    (pll_250m_tx_clock_clk),                                 //   input,  width = 1,  pll_250m_tx_clock.clk
		.pll_125m_tx_clk    (pll_125m_tx_clock_clk),                                 //   input,  width = 1,  pll_125m_tx_clock.clk
		.pll_25m_clk        (pll_25m_clock_clk),                                     //   input,  width = 1,      pll_25m_clock.clk
		.pll_2_5m_clk       (pll_2_5m_clock_clk),                                    //   input,  width = 1,     pll_2_5m_clock.clk
		.locked_pll_250m_tx (locked_pll_250m_tx_export),                             //   input,  width = 1, locked_pll_250m_tx.export
		.locked_pll_rx      (u_pll_rx_2x_locked_export)                              //   input,  width = 1,      locked_pll_rx.export
	);

	gmii2rgmii_altera_iopll_1931_uizzywy u_pll_rx_2x (
		.refclk   (u_intel_gmii_to_rgmii_adapter_core_pll_rx_clk_ref_clk), //   input,  width = 1,  refclk.clk
		.locked   (u_pll_rx_2x_locked_export),                             //  output,  width = 1,  locked.export
		.rst      (peri_reset_reset),                                      //   input,  width = 1,   reset.reset
		.outclk_0 (u_pll_rx_2x_outclk0_clk)                                //  output,  width = 1, outclk0.clk
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (peri_reset_reset),               //   input,  width = 1, reset_in0.reset
		.clk            (peri_clock_clk),                 //   input,  width = 1,       clk.clk
		.reset_out      (rst_controller_reset_out_reset), //  output,  width = 1, reset_out.reset
		.reset_req      (),                               // (terminated),                       
		.reset_req_in0  (1'b0),                           // (terminated),                       
		.reset_in1      (1'b0),                           // (terminated),                       
		.reset_req_in1  (1'b0),                           // (terminated),                       
		.reset_in2      (1'b0),                           // (terminated),                       
		.reset_req_in2  (1'b0),                           // (terminated),                       
		.reset_in3      (1'b0),                           // (terminated),                       
		.reset_req_in3  (1'b0),                           // (terminated),                       
		.reset_in4      (1'b0),                           // (terminated),                       
		.reset_req_in4  (1'b0),                           // (terminated),                       
		.reset_in5      (1'b0),                           // (terminated),                       
		.reset_req_in5  (1'b0),                           // (terminated),                       
		.reset_in6      (1'b0),                           // (terminated),                       
		.reset_req_in6  (1'b0),                           // (terminated),                       
		.reset_in7      (1'b0),                           // (terminated),                       
		.reset_req_in7  (1'b0),                           // (terminated),                       
		.reset_in8      (1'b0),                           // (terminated),                       
		.reset_req_in8  (1'b0),                           // (terminated),                       
		.reset_in9      (1'b0),                           // (terminated),                       
		.reset_req_in9  (1'b0),                           // (terminated),                       
		.reset_in10     (1'b0),                           // (terminated),                       
		.reset_req_in10 (1'b0),                           // (terminated),                       
		.reset_in11     (1'b0),                           // (terminated),                       
		.reset_req_in11 (1'b0),                           // (terminated),                       
		.reset_in12     (1'b0),                           // (terminated),                       
		.reset_req_in12 (1'b0),                           // (terminated),                       
		.reset_in13     (1'b0),                           // (terminated),                       
		.reset_req_in13 (1'b0),                           // (terminated),                       
		.reset_in14     (1'b0),                           // (terminated),                       
		.reset_req_in14 (1'b0),                           // (terminated),                       
		.reset_in15     (1'b0),                           // (terminated),                       
		.reset_req_in15 (1'b0)                            // (terminated),                       
	);

endmodule
