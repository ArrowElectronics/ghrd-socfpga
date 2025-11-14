// 
// SPDX-FileCopyrightText: Copyright (C) 2025 Arrow Electronics, Inc. 
// SPDX-License-Identifier: MIT-0 
//

`timescale 1ns/10ps

`define wHPS_UART0
`define wHPS_I2C0
`define wHPS_EMAC2
`define wHPS_USB
`define wHPS_PB
`define wHPS_DIPSW
`define wHPS_SD
`define wHPS
`define wHPS_LED0
`define wHPS_LED1

`define wFAB_EMAC
`define wRGB_LED0
`define wRGB_LED1
`define wRGB_LED2
`define wRGB_LED3
`define wFAB_PB
`define wFAB_DIPSW
`define wFAB_I2C1
`define wFAB_QSPI
`define wADDA
`define wHDMI
`define wLPDDR4A //EMIF HPS
`define wLPDDR4B //EMIF FPGA

//`define wFMC
//`define wCRUVI_HS_1
//`define wCRUVI_HS_2
//`define wCRUVI_LS_1
//`define wCRUVI_LS_2
//`define wSFP10G_1
//`define wSFP10G_2
//`define wFMC_XCVRS
//`define wPCIe
//`define smartVID


module axe5_eagle_top (
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
   `ifdef wHPS_I2C0
   inout         	HPS_I2C0_SDA,
   inout         	HPS_I2C0_SCL,
   `endif
   `ifdef wHPS_USB
   inout [7:0]   	USB_DATA,
   input         	USB_CLK, USB_NXT, USB_DIR,
   output        	USB_STP, 
   inout	  		USB_RST,
   output        	USB_SSTX_p, USB_SSTX_n, 
   input         	USB_SSRX_p, USB_SSRX_n, 
   input         	USB_REFCLK_p,
   output	  		USB_HUB_RST,   
   `endif
   `ifdef wHPS_SD
   output        	SD_CLK,
   inout	  		SD_CMD,
   inout         	SD_DETECT,
   inout  [3:0]  	SD_DAT,
   `endif
   `ifdef wHPS
   inout [1:0]   	HPS_PB,
   inout 	     	HPS_DIPSW[1:0],
  // input         	HPS_COLD_RST,
   input         	HPS_OSC_CLK_25MHz,   
   `endif
   `ifdef wFAB_I2C1
   inout         	MUX_I2C_SDA,
   inout         	MUX_I2C_SCL, MUX_I2C_INT,
   `endif
   `ifdef wADDA
   output        	ADDA_CLK, ADDA_DIN, ADDA_SYNC, ADDA_RST,
   input         	ADDA_DOUT,
   `endif
   `ifdef wFAB_EMAC
   output        	ETH1_RST, ETH1_TXCK, ETH1_TXCTL,
   output [3:0]  	ETH1_TXD,
   input         	ETH1_RXCK, ETH1_RXCTL,
   input  [3:0]  	ETH1_RXD,
   output        	ETH1_MDC,
   inout         	ETH1_MDIO,
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
   input [1:0]   	FPGA_DIPSW,
   `endif
   `ifdef wHDMI
   output        	HDMI_VS, HDMI_HS, HDMI_CLK, HDMI_DE, HDMI_CT_HPD, HDMI_SPDIF, HDMI_CEC_CLK,
   input         	HDMI_INT,
   output [23:0] 	HDMI_D,
   `endif
   `ifdef wLPDDR4A
   output        	LPDDR4A_CK_P, LPDDR4A_CK_N, LPDDR4A_RST, 
	input         	LPDDR4A_REFCK,
   output [5:0]  	LPDDR4A_CA,
   output	     	LPDDR4A_CKE, LPDDR4A_CS_N,
   inout  [31:0] 	LPDDR4A_DQ,
   inout         	LPDDR4A_DQSA1_p, LPDDR4A_DQSA1_n, LPDDR4A_DQSA0_p, LPDDR4A_DQSA0_n,
   inout         	LPDDR4A_DQSB1_p, LPDDR4A_DQSB1_n, LPDDR4A_DQSB0_p, LPDDR4A_DQSB0_n,
   inout         	LPDDR4A_DMB1, LPDDR4A_DMB0, LPDDR4A_DMA1, LPDDR4A_DMA0,
   input         	LPDDR4A_OCT_RZQIN,
   `endif
   `ifdef wLPDDR4B
   output        	LPDDR4B_CK_P, LPDDR4B_CK_N, LPDDR4B_RST, 
   input         	LPDDR4B_REFCK,
   output [5:0]  	LPDDR4B_CA,
   output			LPDDR4B_CKE, LPDDR4B_CS_N,
   inout  [31:0] 	LPDDR4B_DQ,
   inout         	LPDDR4B_DQSA1_p, LPDDR4B_DQSA1_n, LPDDR4B_DQSA0_p, LPDDR4B_DQSA0_n,
   inout         	LPDDR4B_DQSB1_p, LPDDR4B_DQSB1_n, LPDDR4B_DQSB0_p, LPDDR4B_DQSB0_n,
   inout         	LPDDR4B_DMB1, LPDDR4B_DMB0, LPDDR4B_DMA1, LPDDR4B_DMA0,
   input         	LPDDR4B_OCT_RZQIN,
   `endif
   `ifdef wFMC
   output        	FMC_REFCK_C2M_p, FMC_SYNC_C2M_p, FMC_REFCK_C2M_n, FMC_SYNC_C2M_n,
   input         	FMC_REFCK_M2C_p, FMC_CLK0_M2C_p, FMC_CLK1_M2C_p,
   input         	FMC_REFCK_M2C_n, FMC_CLK0_M2C_n, FMC_CLK1_M2C_n,
   inout         	LA00_p, LA01_p, LA02_p, LA03_p, LA04_p, LA05_p, LA06_p,
   inout         	LA07_p, LA08_p, LA09_p, LA10_p, LA11_p, LA12_p, LA13_p,
   inout         	LA14_p, LA15_p, LA16_p, LA17_p, LA18_p, LA19_p, LA20_p,
   inout         	LA21_p, LA22_p, LA23_p, LA24_p, LA25_p, LA26_p, LA27_p,
   inout         	LA28_p, LA29_p, LA30_p, LA31_p, LA32_p, LA33_p,
   inout         	LA00_n, LA01_n, LA02_n, LA03_n, LA04_n, LA05_n, LA06_n,
   inout         	LA07_n, LA08_n, LA09_n, LA10_n, LA11_n, LA12_n, LA13_n,
   inout         	LA14_n, LA15_n, LA16_n, LA17_n, LA18_n, LA19_n, LA20_n,
   inout         	LA21_n, LA22_n, LA23_n, LA24_n, LA25_n, LA26_n, LA27_n,
	inout         	LA28_n, LA29_n, LA30_n, LA31_n, LA32_n, LA33_n,
   `endif
   `ifdef wFMC_XCVRS
   input  [1:0]  	FMC_GBTCLK_p, FMC_GBTCLK_n,
   input  [1:0]  	FMC_GT_CK_p, FMC_GT_CK_n,
   input  [7:0]  	DP_M2C_p, DP_M2C_n,
   output [7:0]  	DP_C2M_p, DP_C2M_n,
   `endif
	
   `ifdef wPCIe
   input         	PCIE_CLK_p, PCIE_CLK_n,
   input         	PCIE_100M_CK_p, PCIE_100M_CK_n,
   input  [3:0]  	PET_p, PET_n,
   output [3:0]  	PER_p, PER_n,
   `endif
   `ifdef wCRUVI_HS_1
   inout         	CX_SMB_ALERT,
   inout         	CX_SMB_SDA,
   inout         	CX_SMB_SCL,
   input         	CX_REFCLK,
   inout         	CX_HSIO,
   inout         	CX_HSO, CX_RESET,
   input         	CX_HSI,
   inout         	CX_B0_p, CX_B1_p, CX_B2_p, CX_B3_p, CX_B4_p, CX_B5_p,
   inout         	CX_B0_n, CX_B1_n, CX_B2_n, CX_B3_n, CX_B4_n, CX_B5_n,
   inout         	CX_A0_p, CX_A1_p, CX_A2_p, CX_A3_p, CX_A4_p, CX_A5_p,
   inout         	CX_A0_n, CX_A1_n, CX_A2_n, CX_A3_n, CX_A4_n, CX_A5_n,
   `endif
   `ifdef wCRUVI_HS_2
   inout         	CY_SMB_ALERT,
   inout         	CY_SMB_SDA,
   inout         	CY_SMB_SCL,
   input         	CY_REFCLK,
   inout         	CY_HSIO,
   inout         	CY_HSO, CY_RESET,
   input         	CY_HSI,
   inout         	CY_B0_p, CY_B1_p, CY_B2_p, CY_B3_p, CY_B4_p, CY_B5_p,
   inout         	CY_B0_n, CY_B1_n, CY_B2_n, CY_B3_n, CY_B4_n, CY_B5_n,
   inout         	CY_A0_p, CY_A1_p, CY_A2_p, CY_A3_p, CY_A4_p, CY_A5_p,
   inout         	CY_A0_n, CY_A1_n, CY_A2_n, CY_A3_n, CY_A4_n, CY_A5_n,
   `endif
   `ifdef wCRUVI_LS_1
   inout  [7:0]  	CRUVI_LS_B,
   `endif
   `ifdef wCRUVI_LS_2
   inout  [7:0]  	CRUVI_LS_C,
   `endif
   `ifdef wFAB_QSPI
   output        	FPGA_QSPI_CS, FPGA_QSPI_CLK, FPGA_QSPI_RST,
   inout [3:0]   	FPGA_QSPI_D,
   `endif
   `ifdef wSFP10G_1
   output        	SFPA_TD_p, SFPA_TD_n,
   output        	SFPA_RD_p, SFPA_RD_n,
   `endif
   `ifdef wSFP10G_2
   output        	SFPB_TD_p, SFPB_TD_n,
   output        	SFPB_RD_p, SFPB_RD_n,
   `endif

   `ifdef wSFP10G_1
   input         	SFP_REFCLK_p, SFP_REFCLK_n,
   `elsif wSFP10G_1
   input         	SFP_REFCLK_p, SFP_REFCLK_n,
   `endif

   `ifdef smartVID
   inout         	PWR_SDA,
   inout         	PWR_SCL,
   `endif

   input         	REFCLK_3B0,
   input         	FPGA_RST_n
   //input         	SDM_CLK_25MHz
   
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
   wire [15:0]	hdmi_data_pd;  
   
   assign HDMI_CT_HPD = 1'b1;
   assign HDMI_CEC_CLK = 1'b0; 
   
   // yuv422, separate sync, x1 clk, style 1, table 18, 1080p, hdmi_clk 148.5M
  
   assign HDMI_D [23:0] = {hdmi_data_pd, {8{1'b0}}};  
   `endif   

   `ifdef wFAB_EMAC
   wire	emac0_mdio_mdc, emac0_mdio_di, emac0_mdio_mdo, emac0_mdio_oe;
	
   assign ETH1_MDIO = emac0_mdio_oe ? emac0_mdio_mdo : 1'bz;
   assign emac0_mdio_di = ETH1_MDIO;
   `endif

   `ifdef wFAB_I2C1
   
   hps_signal_buffer i2c1_sda_buffer (
	.ck     (REFCLK_3B0), 
	.dout   (i2c1_sda_i),
	.din    (1'b0),
	.oe     (i2c1_sda_oe),
	.pad_io (MUX_I2C_SDA)
   );   
	
   hps_signal_buffer i2c1_scl_buffer (
	.ck     (REFCLK_3B0), 
	.dout   (i2c1_scl_i_clk),
	.din    (1'b0),
	.oe     (i2c1_scl_oe_clk),
	.pad_io (MUX_I2C_SCL)
   ); 	

   `endif

	// Instantiate HPS system from Plaform Designer
   ghrd_system pd_system (
        .sys_clk_clk              					(REFCLK_3B0),
        .reset_pb_n_reset                       	(FPGA_RST_n),		
      `ifdef wHDMI
        .hdmi_clk_clk             					(HDMI_CLK),
        .hdmi_h16_hsync           					(HDMI_HS),
        .hdmi_h16_vsync           					(HDMI_VS),
        .hdmi_h16_data_e          					(HDMI_DE),
        .hdmi_h16_data            					(hdmi_data_pd),
        .hdmi_h16_es_data         					(),
        .hdmi_h24_hsync           					(),
        .hdmi_h24_vsync           					(),
        .hdmi_h24_data_e          					(),
        .hdmi_h24_data            					(),
        .hdmi_h36_hsync           					(),
        .hdmi_h36_vsync           					(),
        .hdmi_h36_data_e          					(),
        .hdmi_h36_data            					(),
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
      `ifdef wFAB_EMAC
        .emac0_mdio_mac_mdc       					(ETH1_MDC),
        .emac0_mdio_mac_mdi       					(emac0_mdio_di),
        .emac0_mdio_mac_mdo       					(emac0_mdio_mdo),
        .emac0_mdio_mac_mdoe      					(emac0_mdio_oe),
        .emac0_rgmii_tx_clk       					(ETH1_TXCK),
        .emac0_rgmii_rx_clk         				(ETH1_RXCK),
        .emac0_rgmii_rx_ctl           				(ETH1_RXCTL),
        .emac0_rgmii_tx_ctl           				(ETH1_TXCTL),
        .emac0_rgmii_rxd            				(ETH1_RXD),
        .emac0_rgmii_txd          					(ETH1_TXD),
        .eth1_rst_export							(ETH1_RST),
      `endif
      `ifdef wADDA
        .spim0_miso_i             					(ADDA_DOUT),
        .spim0_mosi_o             					(ADDA_DIN),
        .spim0_mosi_oe            					(),
        .spim0_ss_in_n            					(1'b1),
        .spim0_ss0_n_o            					(ADDA_SYNC),
        .spim0_ss1_n_o            					(),
        .spim0_sclk_out_clk       					(ADDA_CLK),
        .spim0_ss2_n_o            					(),
        .spim0_ss3_n_o            					(),
       `endif
      `ifdef wFAB_I2C1
        .i2c1_scl_i_clk           					(i2c1_scl_i_clk),
        .i2c1_scl_oe_clk          					(i2c1_scl_oe_clk),
        .i2c1_sda_i               					(i2c1_sda_i),
        .i2c1_sda_oe              					(i2c1_sda_oe),
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
      `ifdef wHPS_I2C0
        .hps_io_i2c0_sda          					(HPS_I2C0_SDA),
        .hps_io_i2c0_scl          					(HPS_I2C0_SCL),
      `endif
      `ifdef wHPS_USB
        .usb31_io_vbus_det        					(1'b1),
        .usb31_io_flt_bar         					(1'b1),
        .usb31_io_usb_ctrl        					(),
        .usb31_io_usb31_id        					(1'b1),
        .hps_io_usb1_clk          					(USB_CLK),
        .hps_io_usb1_stp          					(USB_STP),
        .hps_io_usb1_dir          					(USB_DIR),
        .hps_io_usb1_data0        					(USB_DATA[0]),
        .hps_io_usb1_data1        					(USB_DATA[1]),
        .hps_io_usb1_nxt          					(USB_NXT),
        .hps_io_usb1_data2        					(USB_DATA[2]),
        .hps_io_usb1_data3        					(USB_DATA[3]),
        .hps_io_usb1_data4        					(USB_DATA[4]),
        .hps_io_usb1_data5        					(USB_DATA[5]),
        .hps_io_usb1_data6        					(USB_DATA[6]),
        .hps_io_usb1_data7        					(USB_DATA[7]),
		  // EG aggregates
        .usb31_phy_pma_cpu_clk_clk					(o_pma_cu_clk),              
        .usb31_phy_refclk_p_clk						(USB_REFCLK_p),                 
        .usb31_phy_rx_serial_n_i_rx_serial_n		(USB_SSRX_n),    
        .usb31_phy_rx_serial_p_i_rx_serial_p		(USB_SSRX_p),    
        .usb31_phy_tx_serial_n_o_tx_serial_n		(USB_SSTX_n),    
        .usb31_phy_tx_serial_p_o_tx_serial_p		(USB_SSTX_p),    
        .usb31_phy_reconfig_rst_reset				(),           
        .usb31_phy_reconfig_clk_clk					(),             
        .usb31_phy_reconfig_slave_address			(),       
        .usb31_phy_reconfig_slave_byteenable		(),    
        .usb31_phy_reconfig_slave_readdatavalid		(), 
        .usb31_phy_reconfig_slave_read				(),          
        .usb31_phy_reconfig_slave_write				(),         
        .usb31_phy_reconfig_slave_readdata			(),      
        .usb31_phy_reconfig_slave_writedata			(),     
        .usb31_phy_reconfig_slave_waitrequest		(),  
		.hps_io_gpio28            					(USB_RST),
		.usb_hub_rst_export							(USB_HUB_RST), 					
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
        .hps_io_gpio6             					(HPS_LED0),
      `endif
      `ifdef wHPS_LED1
        .hps_io_gpio7             					(HPS_LED1),
      `endif
      `ifdef wHPS_PB	  
        .hps_io_gpio8             					(HPS_PB[0]),
        .hps_io_gpio9             					(HPS_PB[1]),
      `endif
      `ifdef wHPS_DIPSW	  
        .hps_io_gpio10            					(HPS_DIPSW[0]),
        .hps_io_gpio1            					(HPS_DIPSW[1]),
      `endif		
      `ifdef wLPDDR4A //HPS EMIF
        .emif_bank3a_hps_ref_clk_clk		       	(LPDDR4A_REFCK),
        .emif_bank3a_hps_mem_ck_0_mem_ck_t		    (LPDDR4A_CK_P),
        .emif_bank3a_hps_mem_ck_0_mem_ck_c      	(LPDDR4A_CK_N),
        .emif_bank3a_hps_mem_0_mem_cke		       	(LPDDR4A_CKE),
        .emif_bank3a_hps_mem_reset_n_mem_reset_n   	(LPDDR4A_RST),
        .emif_bank3a_hps_mem_0_mem_cs	        	(LPDDR4A_CS_N),
        .emif_bank3a_hps_mem_0_mem_ca	        	(LPDDR4A_CA),
        .emif_bank3a_hps_mem_0_mem_dq	        	(LPDDR4A_DQ),
        .emif_bank3a_hps_mem_0_mem_dqs_t	     	({LPDDR4A_DQSB1_p, LPDDR4A_DQSB0_p, LPDDR4A_DQSA1_p, LPDDR4A_DQSA0_p}),
        .emif_bank3a_hps_mem_0_mem_dqs_c	     	({LPDDR4A_DQSB1_n, LPDDR4A_DQSB0_n, LPDDR4A_DQSA1_n, LPDDR4A_DQSA0_n}),
        .emif_bank3a_hps_mem_0_mem_dmi		       	({LPDDR4A_DMB1,LPDDR4A_DMB0,LPDDR4A_DMA1,LPDDR4A_DMA0}),
        .emif_bank3a_hps_oct_0_oct_rzqin	     	(LPDDR4A_OCT_RZQIN),
      `endif
      `endif
      `ifdef wLPDDR4B //FPGA EMIF
        .emif_bank2a_fpga_ref_clk_clk    			(LPDDR4B_REFCK),
        .emif_bank2a_fpga_mem_ck_0_mem_ck_t    		(LPDDR4B_CK_P),
        .emif_bank2a_fpga_mem_ck_0_mem_ck_c    		(LPDDR4B_CK_N),
        .emif_bank2a_fpga_mem_0_mem_cke       		(LPDDR4B_CKE),
        .emif_bank2a_fpga_mem_reset_n_mem_reset_n	(LPDDR4B_RST),
        .emif_bank2a_fpga_mem_0_mem_cs       		(LPDDR4B_CS_N),
        .emif_bank2a_fpga_mem_0_mem_ca     			(LPDDR4B_CA),
        .emif_bank2a_fpga_mem_0_mem_dq     			(LPDDR4B_DQ),
        .emif_bank2a_fpga_mem_0_mem_dqs_t  			({LPDDR4B_DQSB1_p, LPDDR4B_DQSB0_p, LPDDR4B_DQSA1_p, LPDDR4B_DQSA0_p}),
        .emif_bank2a_fpga_mem_0_mem_dqs_c  			({LPDDR4B_DQSB1_n, LPDDR4B_DQSB0_n, LPDDR4B_DQSA1_n, LPDDR4B_DQSA0_n}),
        .emif_bank2a_fpga_mem_0_mem_dmi    			({LPDDR4B_DMB1,LPDDR4B_DMB0,LPDDR4B_DMA1,LPDDR4B_DMA0}),
        .emif_bank2a_fpga_oct_0_oct_rzqin 			(LPDDR4B_OCT_RZQIN)
      `endif
    );




endmodule
