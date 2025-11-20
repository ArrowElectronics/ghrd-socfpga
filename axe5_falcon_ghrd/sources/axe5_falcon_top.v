// 
// SPDX-FileCopyrightText: Copyright (C) 2025 Arrow Electronics, Inc. 
// SPDX-License-Identifier: MIT-0 
//

`timescale 1ns/10ps

`define wHPS_UART0
`define wHPS_I2C1
`define wHPS_I3C0
`define wHPS_EMAC2
`define wHPS_USB
`define wHPS_PB
`define wHPS_DIPSW
`define wHPS_SD
`define wHPS
`define wHPS_LED0
`define wHPS_LED1

`define wFAB_EMAC0
//`define wDBG_UART
`define wRGB_LED0
`define wRGB_LED1
`define wRGB_LED2
`define wRGB_LED3
`define wFAB_PB
`define wFAB_DIPSW
`define wFAB_I2C0
`define wHDMI
`define wDDR4 //EMIF HPS

`define wMIPI
`define wCAMERA0
`define wCAMERA1
`define wCRUVI_HSX
//`define wCRUVI_HSZ
//`define wPMOD
//`define wCRUVI_RGMII

module axe5_falcon_top (
   `ifdef wHPS_LED0
   inout         	HPS_LED0,
   `endif
   `ifdef wHPS_LED1
   inout         	HPS_LED1,
   `endif
   `ifdef wHPS_UART0
   output        	HPS_UART0_TX,
   input         	HPS_UART0_RX,
   `endif
   `ifdef wHPS_I2C1
   inout         	HPS_I2C1_SDA,
   inout         	HPS_I2C1_SCL,
   `endif
   `ifdef wHPS_I3C0
   inout         	HPS_I3C0_SDA,
   inout         	HPS_I3C0_SCL,
   `endif
   `ifdef wHPS_USB
   inout [7:0]   	USB_DATA,
   input         	USB_CLK, USB_NXT, USB_DIR,
   output        	USB_STP, 
   inout	  		USB_RST,
   `endif
   `ifdef wHPS_SD
   output        	SD_CLK,
   inout	  		SD_CMD,
   inout         	SD_DETECT,
   inout  [3:0]  	SD_DAT,
   `endif
   `ifdef wHPS
   inout [1:0]   	HPS_PB,
   inout [1:0]   	HPS_DIPSW,
   input         	HPS_COLD_RST,
   input         	HPS_OSC_CLK_25MHz,   
   `endif
   `ifdef wFAB_I2C0
   inout         	MUX_I2C_SDA,
   inout         	MUX_I2C_SCL, MUX_I2C_INT,
   `endif
   `ifdef wFAB_EMAC0
   output        	RGMII_RST, RGMII0_TXCK, RGMII0_TXCTL,
   output [3:0]  	RGMII0_TXD,
   input         	RGMII0_RXCK, RGMII0_RXCTL,
   input  [3:0]  	RGMII0_RXD,
   output        	RGMII_MDC,
   inout         	RGMII_MDIO,
   `endif
   `ifdef wHPS_EMAC2
   inout         	HPS_ETH2_RST, 
   output        	HPS_ETH2_TXCK, HPS_ETH2_TXCTL,
   output [3:0]  	HPS_ETH2_TXD,
   input         	HPS_ETH2_RXCK, HPS_ETH2_RXCTL,
   input  [3:0]  	HPS_ETH2_RXD,
   output        	HPS_ETH2_MDC,
   inout         	HPS_ETH2_MDIO,
   `endif
   `ifdef wRGB_LED0
   inout        	LED0R, LED0G, LED0B,
   `endif
   `ifdef wRGB_LED1
   output        	LED1R, LED1G, LED1B,
   `endif
   `ifdef wRGB_LED2
   output        	LED2R, LED2G, LED2B,
   `endif

   `ifdef wRGB_LED3
   output        	LED3R, LED3G, LED3B,
   `endif
   `ifdef wFAB_PB
   input [1:0]   	FPGA_PB,
   `endif
   `ifdef wFAB_DIPSW
   input [3:0]   	FPGA_DIPSW,
   `endif
   `ifdef wHDMI
   output        	HDMI_VS, HDMI_HS, HDMI_CLK, HDMI_DE, HDMI_CT_HPD,
   output [23:0] 	HDMI_D,
   `endif
   `ifdef wDDR4
   output        	DDR4_CK_P, DDR4_CK_N, DDR4_RST, 
	input         	DDR4_REFCK,
   output [16:0]  DDR4_A,
	output [1:0]	DDR4_BA,
	output			DDR4_BG, DDR4_ACT_N, DDR4_PAR,
	input				DDR4_ALERT_N,
   output	     	DDR4_CKE, DDR4_CS_N,
   inout  [31:0] 	DDR4_DQ,
   inout         	DDR4_DQS3_P, DDR4_DQS2_P, DDR4_DQS1_P, DDR4_DQS0_P,
   inout         	DDR4_DQS3_N, DDR4_DQS2_N, DDR4_DQS1_N, DDR4_DQS0_N,
   inout         	DDR4_DM3, DDR4_DM2, DDR4_DM1, DDR4_DM0,
   input         	DDR4_OCT_RZQIN,
	output         DDR4_ODT,
   `endif
	
	`ifdef wMIPI
	input          MIPI_RZQ, B2A_REFCK_P,
	`endif
	`ifdef wCAMERA0
	input         CSI0_C_P, CSI0_C_N,
	input         CSI0_D3_P, CSI0_D2_P, CSI0_D1_P, CSI0_D0_P,
	input         CSI0_D3_N, CSI0_D2_N, CSI0_D1_N, CSI0_D0_N,
	`endif
	`ifdef wCAMERA1
	input         CSI1_C_P, CSI1_C_N,
	input         CSI1_D3_P, CSI1_D2_P, CSI1_D1_P, CSI1_D0_P,
	input         CSI1_D3_N, CSI1_D2_N, CSI1_D1_N, CSI1_D0_N,
	`endif
   `ifdef wCRUVI_HSX
	// CSI-2
   inout         	CX_SMB_ALERT,
   inout         	CX_SMB_SDA,
   inout         	CX_SMB_SCL,
   input         	CX_REFCLK,
   inout         	CX_HSIO,
   inout         	CX_HSO, CX_RESET,
   input         	CX_HSI,
	// CSI-2
   input        	CX_B2_P, CX_B3_P, CX_B4_P,
   input         	CX_B2_N, CX_B3_N, CX_B4_N,
	// DSI-2
   output        	CX_A2_P, CX_A1_P, CX_A5_P,
   output        	CX_A2_N, CX_A1_N, CX_A5_N,
   `endif
   `ifdef wCRUVI_HSZ
	// DSI-2
   inout         	CZ_SMB_ALERT,
   inout         	CZ_SMB_SDA,
   inout         	CZ_SMB_SCL,
   input         	CZ_REFCLK,
   inout         	CZ_HSIO,
   inout         	CZ_HSO, CZ_RESET,
   input         	CZ_HSI,
   input        	CZ_B0_P, CZ_B2_P, CZ_B3_P, CZ_B4_P, CZ_B5_P, CZ_A4_P,
   input         	CZ_B0_N, CZ_B2_N, CZ_B3_N, CZ_B4_N, CZ_B5_N, CZ_A4_N,
   output        	CZ_A0_P, CZ_A1_P, CZ_A2_P, CZ_A3_P, CZ_B1_P, CZ_A5_P,
   output        	CZ_A0_N, CZ_A1_N, CZ_A2_N, CZ_A3_N, CZ_B1_N, CZ_A5_N,
   `endif
   `ifdef wCRUVI_LS
   inout  [7:0]  	CRUVI_LS,
   `endif
   `ifdef wPMOD
   inout  [7:0]  	PMOD,
	`endif
	`ifdef wDBG_UART
	input          DBG_RX,
	output         DBG_TX,
	`endif
	input          FPGA_RST_N,
   input         	CLK_25M_SYS
   
);
	
   `ifdef wRGB_LED0
   wire [2:0] rgb_led0;

   assign LED0R = rgb_led0[2];
   assign LED0G = rgb_led0[1];
   assign LED0B = rgb_led0[0];
   `endif
   
   `ifdef wRGB_LED1
   wire [2:0] rgb_led1;

   assign LED1R = rgb_led1[2];
   assign LED1G = rgb_led1[1];
   assign LED1B = rgb_led1[0];
   `endif
   
   `ifdef wRGB_LED2
   wire [2:0] rgb_led2;

   assign LED2R = rgb_led2[2];
   assign LED2G = rgb_led2[1];
   assign LED2B = rgb_led2[0];
   `endif
   
   `ifdef wRGB_LED3
   wire [2:0] rgb_led3;

   assign LED3R = rgb_led3[2];
   assign LED3G = rgb_led3[1];
   assign LED3B = rgb_led3[0];
   `endif
   
   `ifdef wHDMI

   assign HDMI_CT_HPD   = 1'b1;
   assign HDMI_CEC_CLK  = 1'b0;
     
   `endif   

   `ifdef wFAB_EMAC0
   wire	emac0_mdio_mdc, emac0_mdio_di, emac0_mdio_mdo, emac0_mdio_oe;
	
   assign RGMII_MDIO = emac0_mdio_oe ? emac0_mdio_mdo : 1'bz;
   assign emac0_mdio_di = RGMII_MDIO;
   `endif

   `ifdef wFAB_I2C0
   
   hps_signal_buffer i2c1_sda_buffer (
	.ck     (CLK_25M_SYS), 
	.dout   (i2c0_sda_i),
	.din    (1'b0),
	.oe     (i2c0_sda_oe),
	.pad_io (MUX_I2C_SDA)
   );   
	
   hps_signal_buffer i2c1_scl_buffer (
	.ck     (CLK_25M_SYS), 
	.dout   (i2c0_scl_i_clk),
	.din    (1'b0),
	.oe     (i2c0_scl_oe_clk),
	.pad_io (MUX_I2C_SCL)
   ); 	

   `endif

	// Instantiate HPS system from Plaform Designer
   ghrd_system pd_system (
        .sys_clk_clk              					(CLK_25M_SYS),
        .reset_pb_n_reset                       	(FPGA_RST_N),		
      `ifdef wDBG_UART
        .niosv_dbg_uart_rxd                   (DBG_RXD),  
        .niosv_dbg_uart_txd                   (DBG_TXD),
      `endif

		  `ifdef wHDMI
        .hdmi_vid_out_data                    (HDMI_D), 
        .hdmi_vid_out_active                  (HDMI_DE), 
        .hdmi_vid_out_f                       (),  
        .hdmi_vid_out_v_sync                  (HDMI_VS),
        .hdmi_vid_out_h_sync                  (HDMI_HS), 
        .hdmi_ddio_h_fragment                 (1'b1), 
        .hdmi_ddio_l_fragment                 (1'b0), 
        .hdmi_clock_out_export                (HDMI_CLK), 
      `endif
      `ifdef wFAB_DIPSW
        .dipsw_export             					(FPGA_DIPSW),
      `endif
      `ifdef wFAB_PB
        .pb_export                					(FPGA_PB),
      `endif
      `ifdef wRGB_LED0
        .rgb_led0_export          					(rgb_led0),
      `endif
      `ifdef wRGB_LED1
        .rgb_led1_export          					(rgb_led1),
      `endif
      `ifdef wRGB_LED2
        .rgb_led2_export          					(rgb_led2),
      `endif
      `ifdef wRGB_LED3
        .rgb_led3_export          					(rgb_led3),
      `endif
      `ifdef wFAB_EMAC0
        .emac1_mdio_mac_mdc       					(RGMII_MDC),
        .emac1_mdio_mac_mdi       					(emac0_mdio_di),
        .emac1_mdio_mac_mdo       					(emac0_mdio_mdo),
        .emac1_mdio_mac_mdoe      					(emac0_mdio_oe),
        .emac1_rgmii_tx_clk       					(RGMII0_TXCK),
        .emac1_rgmii_rx_clk         				(RGMII0_RXCK),
        .emac1_rgmii_rx_ctl           				(RGMII0_RXCTL),
        .emac1_rgmii_tx_ctl           				(RGMII0_TXCTL),
        .emac1_rgmii_rxd            				(RGMII0_RXD),
        .emac1_rgmii_txd          					(RGMII0_TXD),
        .emac1_app_rst_reset_n						(RGMII_RST),
      `endif
      `ifdef wFAB_I2C0
        .hps_i2c0_scl_i_clk           				(i2c0_scl_i_clk),
        .hps_i2c0_scl_oe_clk          			   (i2c0_scl_oe_clk),
        .hps_i2c0_sda_i               				(i2c0_sda_i),
        .hps_i2c0_sda_oe              				(i2c0_sda_oe),
      `endif
      `ifdef wHPS
        .hps_io_hps_osc_clk       					(HPS_OSC_CLK_25MHz),	  
      `ifdef wHPS_EMAC2
        .hps_io_emac2_tx_clk      					(HPS_ETH2_TXCK),
        .hps_io_emac2_tx_ctl      					(HPS_ETH2_TXCTL),
        .hps_io_emac2_rx_clk      					(HPS_ETH2_RXCK),
        .hps_io_emac2_rx_ctl      					(HPS_ETH2_RXCTL),
        .hps_io_emac2_txd0        					(HPS_ETH2_TXD[0]),
        .hps_io_emac2_txd1        					(HPS_ETH2_TXD[1]),
        .hps_io_emac2_rxd0        					(HPS_ETH2_RXD[0]),
        .hps_io_emac2_rxd1        					(HPS_ETH2_RXD[1]),
        .hps_io_emac2_txd2        					(HPS_ETH2_TXD[2]),
        .hps_io_emac2_txd3        					(HPS_ETH2_TXD[3]),
        .hps_io_emac2_rxd2        					(HPS_ETH2_RXD[2]),
        .hps_io_emac2_rxd3        					(HPS_ETH2_RXD[3]),
        .hps_io_mdio2_mdio        					(HPS_ETH2_MDIO),
        .hps_io_mdio2_mdc         					(HPS_ETH2_MDC),
        .emac2_app_rst_reset_n    					(),
		.hps_io_gpio34								(HPS_ETH2_RST),		
      `endif
      `ifdef wHPS_UART0
        .hps_io_uart0_tx          					(HPS_UART0_TX),
        .hps_io_uart0_rx          					(HPS_UART0_RX),
      `endif
      `ifdef wHPS_I2C1
        .hps_io_i2c1_sda          					(HPS_I2C1_SDA),
        .hps_io_i2c1_scl          					(HPS_I2C1_SCL),
      `endif
      `ifdef wHPS_I3C0
        .hps_io_i3c0_sda                         (HPS_I3C0_SDA), 
        .hps_io_i3c0_scl                         (HPS_I3C0_SCL),
      `endif
      `ifdef wHPS_USB
        .hps_io_usb0_clk                      (USB_CLK),                      //   input,   width = 1,                         .usb0_clk
        .hps_io_usb0_stp                      (USB_STP),                      //  output,   width = 1,                         .usb0_stp
        .hps_io_usb0_dir                      (USB_DIR),                      //   input,   width = 1,                         .usb0_dir
        .hps_io_usb0_data0                    (USB_DATA[0]),                    //   inout,   width = 1,                         .usb0_data0
        .hps_io_usb0_data1                    (USB_DATA[1]),                    //   inout,   width = 1,                         .usb0_data1
        .hps_io_usb0_nxt                      (USB_NXT),                      //   input,   width = 1,                         .usb0_nxt
        .hps_io_usb0_data2                    (USB_DATA[2]),                    //   inout,   width = 1,                         .usb0_data2
        .hps_io_usb0_data3                    (USB_DATA[3]),                    //   inout,   width = 1,                         .usb0_data3
        .hps_io_usb0_data4                    (USB_DATA[4]),                    //   inout,   width = 1,                         .usb0_data4
        .hps_io_usb0_data5                    (USB_DATA[5]),                    //   inout,   width = 1,                         .usb0_data5
        .hps_io_usb0_data6                    (USB_DATA[6]),                    //   inout,   width = 1,                         .usb0_data6
        .hps_io_usb0_data7                    (USB_DATA[7]),                    //   inout,   width = 1,                         .usb0_data6
		  .hps_io_gpio28            				 (USB_RST),
		  .usb_hub_rst_export						 (USB_HUB_RST), 					
      `endif
      `ifdef wHPS_SD		
        .hps_io_sdmmc_data0       					(SD_DAT[0]),
        .hps_io_sdmmc_data1       					(SD_DAT[1]),
        .hps_io_sdmmc_cclk        					(SD_CLK),
        .hps_io_sdmmc_data2       					(SD_DAT[2]),
        .hps_io_sdmmc_data3       					(SD_DAT[3]),
        .hps_io_sdmmc_cmd         					(SD_CMD),
        .hps_io_gpio35            					(SD_DETECT),		
      `endif		
      `ifdef wHPS_LED0
        .hps_io_gpio14            					(HPS_LED0),
      `endif
      `ifdef wHPS_LED1
        .hps_io_gpio15            					(HPS_LED1),
      `endif
      `ifdef wHPS_PB	  
        .hps_io_gpio16            					(HPS_PB[0]),
        .hps_io_gpio17            					(HPS_PB[1]),
      `endif
      `ifdef wHPS_DIPSW	  
        .hps_io_gpio12           					(HPS_DIPSW[0]),
        .hps_io_gpio13           					(HPS_DIPSW[1]),
      `endif		
      `ifdef wDDR4 //HPS EMIF
        .emif_ddr4_2a_ref_clk_clk		      (DDR4_REFCK),
        .emif_ddr4_2a_mem_ck_0_mem_ck_t		(DDR4_CK_P),
        .emif_ddr4_2a_mem_ck_0_mem_ck_c      (DDR4_CK_N),
        .emif_ddr4_2a_mem_0_mem_cke		      (DDR4_CKE),
        .emif_ddr4_2a_mem_reset_n_mem_reset_n(DDR4_RST),
        .emif_ddr4_2a_mem_0_mem_cs_n        	(DDR4_CS_N),
        .emif_ddr4_2a_mem_0_mem_a	        	(DDR4_A),
        .emif_ddr4_2a_mem_0_mem_dq	        	(DDR4_DQ),
        .emif_ddr4_2a_mem_0_mem_dqs_t	     	({DDR4_DQS3_P, DDR4_DQS2_P, DDR4_DQS1_P, DDR4_DQS0_P}),
        .emif_ddr4_2a_mem_0_mem_dqs_c	     	({DDR4_DQS3_N, DDR4_DQS2_N, DDR4_DQS1_N, DDR4_DQS0_N}),
        .emif_ddr4_2a_oct_0_oct_rzqin	     	(DDR4_OCT_RZQIN),
        .emif_ddr4_2a_mem_0_mem_odt	     	   (DDR4_ODT),
        .emif_ddr4_2a_mem_0_mem_ba           (DDR4_BA),
        .emif_ddr4_2a_mem_0_mem_bg           (DDR4_BG), 
        .emif_ddr4_2a_mem_0_mem_act_n        (DDR4_ACT_N), 
        .emif_ddr4_2a_mem_0_mem_par          (DDR4_PAR), 
        .emif_ddr4_2a_mem_0_mem_alert_n      (DDR4_ALERT_N),
        .emif_ddr4_2a_mem_0_mem_dbi_n        ({DDR4_DM3, DDR4_DM2, DDR4_DM1, DDR4_DM0}), 
		  `endif
      `endif
		  
        .eth1_rst_export                   (),  
		  `ifdef wMIPI
        .mipi_dphy_rzq_rzq                       (MIPI_RZQ), 
        .mipi_dphy_refclk_clk                    (B2A_REFCK_P), 
		  `ifdef wCAMERA0
        .csi0_dphyx4_io_dphy_link_dp             ({CSI0_D3_P,CSI0_D2_P,CSI0_D1_P,CSI0_D0_P}), 
        .csi0_dphyx4_io_dphy_link_dn             ({CSI0_D3_N,CSI0_D2_N,CSI0_D1_N,CSI0_D0_N}),
        .csi0_dphyx4_io_dphy_link_cp             (CSI0_C_P),
        .csi0_dphyx4_io_dphy_link_cn             (CSI0_C_N), 
		  `endif
		  `ifdef wCAMERA1
        .csi1_dphyx4_io_dphy_link_dp             ({CSI1_D3_P,CSI1_D2_P,CSI1_D1_P,CSI1_D0_P}),
        .csi1_dphyx4_io_dphy_link_dn             ({CSI1_D3_N,CSI1_D2_N,CSI1_D1_N,CSI1_D0_N}), 
        .csi1_dphyx4_io_dphy_link_cp             (CSI1_C_P), 
        .csi1_dphyx4_io_dphy_link_cn             (CSI1_C_N), 
		  `endif
		  `ifdef wCRUVI_HSX
		  // CSI-2
        .csi_dphyx2_io_dphy_link_dp              ({CX_B4_P, CX_B3_P}),
        .csi_dphyx2_io_dphy_link_dn              ({CX_B4_N, CX_B3_N}),
        .csi_dphyx2_io_dphy_link_cp              (CX_B2_P),
        .csi_dphyx2_io_dphy_link_cn              (CX_B2_N), 
        // DSI-2
        .dsi_dphyx2_io_dphy_link_dp              ({CX_A2_P, CX_A1_P}),  
        .dsi_dphyx2_io_dphy_link_dn              ({CX_A2_N, CX_A1_N}), 
        .dsi_dphyx2_io_dphy_link_cp              (CX_A5_P),
        .dsi_dphyx2_io_dphy_link_cn              (CX_A5_N)
        `endif
        `endif

		);



endmodule
