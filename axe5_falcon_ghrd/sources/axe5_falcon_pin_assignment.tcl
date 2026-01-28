#
# SPDX-FileCopyrightText: Copyright (C) 2025 Arrow Electronics, Inc. 
# SPDX-License-Identifier: MIT-0 
#


set wRGB_LED0 1
set wRGB_LED1 1
set wRGB_LED2 1
set wRGB_LED3 1
set wHPS_LED0 1
set wHPS_LED1 1
set wDDR4 1
set wHDMI 1
set wHPS_LED0 1
set wHPS_LED1 1
set wHPS_UART0 1
set wHPS_I2C1 0
set wHPS_I3C0 1
set wFAB_I2C0 1
set wFAB_I2C1 1
set wHPS_PB 1
set wHPS_DIPSW 1
set wHPS_USB 1
set wHPS_EMAC2 1
set wHPS_SD 1
set wHPS 1
set wFAB_EMAC0 0
set wFAB_EMAC1 0
set wFAB_PB 1
set wFAB_DIPSW 1
set wMIPI 1
set wCAMERA0 1
set wCAMERA1 1
set wCRUVI_HSX 1
set wCRUVI_HSZ 0
set wCRUVI_RGMII 0
set wCRUVI_LS 0
set wPMOD 0
set wDBG_UART 0

# set_location_assignment PIN_AN67   -to HPS_OSC_CLK_25MHz
set_instance_assignment -name IO_STANDARD "1.8-V" -to HPS_OSC_CLK_25MHz

set_instance_assignment -name IO_STANDARD "1.8-V" -to HPS_COLD_nRESET

############## BANK 2A_T (1.2V) ##############
if {$wMIPI == 1} {
set_location_assignment PIN_DP55  -to B2A_REFCK_P 
set_instance_assignment -name IO_STANDARD "1.2-V True Differential Signaling" -to B2A_REFCK_P
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to B2A_REFCK_P
set_location_assignment PIN_DP58  -to MIPI_RZQ 
set_instance_assignment -name IO_STANDARD "1.2-V" -to MIPI_RZQ
}

if {$wCAMERA0 == 1} {
set_location_assignment PIN_DP15  -to CSI0_C_P
set_location_assignment PIN_DN15  -to CSI0_C_N
set_location_assignment PIN_DP20  -to CSI0_D0_P
set_location_assignment PIN_DN17  -to CSI0_D0_N
set_location_assignment PIN_DP22  -to CSI0_D1_P
set_location_assignment PIN_DN20  -to CSI0_D1_N
set_location_assignment PIN_DP10  -to CSI0_D2_P
set_location_assignment PIN_DP13  -to CSI0_D2_N
set_location_assignment PIN_DP7  -to CSI0_D3_P
set_location_assignment PIN_DN10  -to CSI0_D3_N
}

if {$wCAMERA1 == 1} {
set_location_assignment PIN_DK18  -to CSI1_C_P
set_location_assignment PIN_DJ18  -to CSI1_C_N
set_location_assignment PIN_DJ21  -to CSI1_D0_P
set_location_assignment PIN_DF21  -to CSI1_D0_N
set_location_assignment PIN_DD21  -to CSI1_D1_P
set_location_assignment PIN_DD18  -to CSI1_D1_N
set_location_assignment PIN_DJ12  -to CSI1_D2_P
set_location_assignment PIN_DF12  -to CSI1_D2_N
set_location_assignment PIN_DD12  -to CSI1_D3_P
set_location_assignment PIN_DD9  -to CSI1_D3_N
}

if {$wCRUVI_HSX == 1} {
#set_location_assignment PIN_DD27  -to CX_B5_P
#set_location_assignment PIN_DD24  -to CX_B5_N
set_location_assignment PIN_DD35  -to CX_B4_P
set_location_assignment PIN_DD32  -to CX_B4_N
set_location_assignment PIN_DJ35  -to CX_B3_P
set_location_assignment PIN_DF35  -to CX_B3_N
set_location_assignment PIN_DK32  -to CX_B2_P
set_location_assignment PIN_DJ32  -to CX_B2_N
#set_location_assignment PIN_DJ27  -to CX_A4_P
#set_location_assignment PIN_DF27  -to CX_A4_N
#set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_A4_P
#set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_A4_N
##
set_location_assignment PIN_DJ42  -to CX_HSIO
set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_HSIO
set_location_assignment PIN_DF42  -to CX_HSO
set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_HSO
set_location_assignment PIN_DN43  -to CX_RESET
set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_RESET
set_location_assignment PIN_DP47  -to CX_HSI
set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_HSI
#set_location_assignment PIN_DK56  -to CX_A0_P
#set_location_assignment PIN_DJ56  -to CX_A0_N
set_location_assignment PIN_DP70  -to CX_A1_P
set_location_assignment PIN_DN68  -to CX_A1_N
set_location_assignment PIN_DN73  -to CX_A2_P
set_location_assignment PIN_DN74  -to CX_A2_N
#set_location_assignment PIN_DP66  -to CX_A3_P
#set_location_assignment PIN_DN63  -to CX_A3_N
#set_location_assignment PIN_DP61  -to CX_B1_P
#set_location_assignment PIN_DN61  -to CX_B1_N
#set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_B1_P
#set_instance_assignment -name IO_STANDARD "1.2-V" -to CX_B1_N
set_location_assignment PIN_DP68  -to CX_A5_P
set_location_assignment PIN_DN66  -to CX_A5_N
}

if {$wCRUVI_HSZ == 1} {
set_location_assignment PIN_DP25  -to CZ_B5_P
set_location_assignment PIN_DN25  -to CZ_B5_N
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_B5_P
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_B5_N
set_location_assignment PIN_DP38  -to CZ_B4_P
set_location_assignment PIN_DN38  -to CZ_B4_N
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_B4_P
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_B4_N
set_location_assignment PIN_DP36  -to CZ_B3_P
set_location_assignment PIN_DN33  -to CZ_B3_N
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_B3_P
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_B3_N
set_location_assignment PIN_DP33  -to CZ_B2_P
set_location_assignment PIN_DN30  -to CZ_B2_N
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_B2_P
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_B2_N
set_location_assignment PIN_DP30  -to CZ_A4_P
set_location_assignment PIN_DN28  -to CZ_A4_N
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_A4_P
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_A4_N
set_location_assignment PIN_DP23  -to CZ_B0_P
set_location_assignment PIN_DN22  -to CZ_B0_N
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_B0_P
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_B0_N
##
set_location_assignment PIN_DJ48  -to CZ_HSIO
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_HSIO
set_location_assignment PIN_DK48  -to CZ_HSO
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_HSO
set_location_assignment PIN_DD48  -to CZ_RESET
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_RESET
set_location_assignment PIN_DJ51  -to CZ_HSI
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_HSI
set_location_assignment PIN_DK56  -to CZ_A0_P
set_location_assignment PIN_DJ56  -to CZ_A0_N
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_A0_P
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_A0_N
set_location_assignment PIN_DJ65  -to CZ_A1_P
set_location_assignment PIN_DF65  -to CZ_A1_N
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_A1_P
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_A1_N
set_location_assignment PIN_DD65  -to CZ_A2_P
set_location_assignment PIN_DD62  -to CZ_A2_N
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_A2_P
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_A2_N
set_location_assignment PIN_DJ59  -to CZ_A3_P
set_location_assignment PIN_DF59  -to CZ_A3_N
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_A3_P
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_A3_N
set_location_assignment PIN_DD59  -to CZ_B1_P
set_location_assignment PIN_DD56  -to CZ_B1_N
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_B1_P
set_instance_assignment -name IO_STANDARD "1.2-V" -to CZ_B1_N
set_location_assignment PIN_DK62  -to CZ_A5P
set_location_assignment PIN_DJ62  -to CZ_A5_N
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_A5_P
set_instance_assignment -name IO_STANDARD "DPHY" -to CZ_A5_N
}

############## DDR4 Bank 3A ##############
if {$wDDR4 == 1} {
set_location_assignment PIN_AB48  -to DDR4_CK_P 
set_location_assignment PIN_W48  -to DDR4_CK_N 
set_location_assignment PIN_W62  -to DDR4_RST 
set_location_assignment PIN_J51  -to DDR4_REFCK 
set_instance_assignment -name IO_STANDARD "1.2-V True Differential Signaling" -to DDR4_REFCK
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to DDR4_REFCK
set_location_assignment PIN_T65  -to DDR4_CS_N 
set_location_assignment PIN_T59  -to DDR4_CKE
set_location_assignment PIN_B66  -to DDR4_A[0] 
set_location_assignment PIN_A68  -to DDR4_A[1] 
set_location_assignment PIN_B68  -to DDR4_A[2] 
set_location_assignment PIN_A70  -to DDR4_A[3] 
set_location_assignment PIN_B63  -to DDR4_A[4] 
set_location_assignment PIN_A66  -to DDR4_A[5] 
set_location_assignment PIN_A61  -to DDR4_A[6] 
set_location_assignment PIN_B61  -to DDR4_A[7] 
set_location_assignment PIN_B58  -to DDR4_A[8] 
set_location_assignment PIN_A60  -to DDR4_A[9] 
set_location_assignment PIN_B55  -to DDR4_A[10] 
set_location_assignment PIN_A58  -to DDR4_A[11] 
set_location_assignment PIN_M48  -to DDR4_A[12] 
set_location_assignment PIN_G48  -to DDR4_A[13] 
set_location_assignment PIN_E48  -to DDR4_A[14] 
set_location_assignment PIN_J42  -to DDR4_A[15] 
set_location_assignment PIN_G42  -to DDR4_A[16] 
set_location_assignment PIN_M39  -to DDR4_BA[0] 
set_location_assignment PIN_G39  -to DDR4_BA[1] 
set_location_assignment PIN_E39  -to DDR4_BG 
#set_location_assignment PIN_AB62  -to DDR4_BG[1]
set_location_assignment PIN_T39  -to DDR4_ALERT_N 
set_location_assignment PIN_AB56 -to DDR4_ODT 
set_location_assignment PIN_M65  -to DDR4_ACT_N 
set_location_assignment PIN_E39  -to DDR4_BG 
set_location_assignment PIN_M51  -to DDR4_PAR
set_location_assignment PIN_J65  -to DDR4_DQ[0] 
set_location_assignment PIN_G65  -to DDR4_DQ[1] 
set_location_assignment PIN_T62  -to DDR4_DQ[2] 
set_location_assignment PIN_M62  -to DDR4_DQ[3] 
set_location_assignment PIN_T56  -to DDR4_DQ[4] 
set_location_assignment PIN_M56  -to DDR4_DQ[5]
set_location_assignment PIN_G56  -to DDR4_DQ[6] 
set_location_assignment PIN_E56  -to DDR4_DQ[7] 
set_location_assignment PIN_A50  -to DDR4_DQ[8]
set_location_assignment PIN_B50  -to DDR4_DQ[9] 
set_location_assignment PIN_B53  -to DDR4_DQ[10] 
set_location_assignment PIN_A55  -to DDR4_DQ[11] 
set_location_assignment PIN_B41  -to DDR4_DQ[12] 
set_location_assignment PIN_A43  -to DDR4_DQ[13] 
set_location_assignment PIN_A38  -to DDR4_DQ[14] 
set_location_assignment PIN_B38  -to DDR4_DQ[15] 
set_location_assignment PIN_AB39  -to DDR4_DQ[16] 
set_location_assignment PIN_W39   -to DDR4_DQ[17] 
set_location_assignment PIN_M42   -to DDR4_DQ[18] 
set_location_assignment PIN_T42   -to DDR4_DQ[19] 
set_location_assignment PIN_AB24  -to DDR4_DQ[20] 
set_location_assignment PIN_W24   -to DDR4_DQ[21] 
set_location_assignment PIN_T27   -to DDR4_DQ[22] 
set_location_assignment PIN_M27   -to DDR4_DQ[23] 
set_location_assignment PIN_J35   -to DDR4_DQ[24] 
set_location_assignment PIN_G35   -to DDR4_DQ[25] 
set_location_assignment PIN_T32   -to DDR4_DQ[26] 
set_location_assignment PIN_M32   -to DDR4_DQ[27] 
set_location_assignment PIN_T24   -to DDR4_DQ[28] 
set_location_assignment PIN_M24   -to DDR4_DQ[29] 
set_location_assignment PIN_G24   -to DDR4_DQ[30] 
set_location_assignment PIN_E24   -to DDR4_DQ[31] 
set_location_assignment PIN_G32   -to DDR4_DQS3_P 
set_location_assignment PIN_E32   -to DDR4_DQS3_N 
set_location_assignment PIN_AB32  -to DDR4_DQS2_P 
set_location_assignment PIN_W32   -to DDR4_DQS2_N 
set_location_assignment PIN_B45   -to DDR4_DQS1_P 
set_location_assignment PIN_A47   -to DDR4_DQS1_N 
set_location_assignment PIN_G62   -to DDR4_DQS0_P 
set_location_assignment PIN_E62   -to DDR4_DQS0_N 
set_location_assignment PIN_J59   -to DDR4_DM0 
set_location_assignment PIN_B43   -to DDR4_DM1
set_location_assignment PIN_T35   -to DDR4_DM2 
set_location_assignment PIN_J27   -to DDR4_DM3 
set_location_assignment PIN_T48   -to DDR4_OCT_RZQIN 
}

############## Bank  (3.3V) ##############
set_location_assignment PIN_CR6   -to CLK_25M_SYS
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CLK_25M_SYS

if {$wHPS_USB == 1} {
set_location_assignment PIN_BJ23   -to USB_HUB_RST
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB_HUB_RST
}

#Set_location_assignment PIN_AT19   -to FAN_ALERT
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FAN_ALERT

#Set_location_assignment PIN_AT14   -to FAN_FF_FS
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FAN_FF_FS

#Set_location_assignment PIN_AT11   -to FAN_SHDN
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FAN_SHDN

if {$wHDMI == 1} {
set_location_assignment PIN_CR8  -to HDMI_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_SCL
set_location_assignment PIN_DD3  -to HDMI_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_SDA
# set_location_assignment PIN_DM2  -to HDMI_PD
# set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_PD
set_location_assignment PIN_DC1  -to HDMI_VS
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_VS
set_location_assignment PIN_DH1  -to HDMI_HS
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_HS
set_location_assignment PIN_CE19  -to HDMI_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_CLK
set_location_assignment PIN_DE1  -to HDMI_DE
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_DE
# set_location_assignment PIN_DF3  -to HDMI_HTPLG
# set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_HTPLG
set_location_assignment PIN_DN2  -to HDMI_CT_HPD
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_CT_HPD
set_location_assignment PIN_DH2  -to HDMI_D[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[0]
set_location_assignment PIN_DC2  -to HDMI_D[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[1]
set_location_assignment PIN_CV4  -to HDMI_D[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[2]
set_location_assignment PIN_CV6  -to HDMI_D[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[3]
set_location_assignment PIN_CV11  -to HDMI_D[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[4]
set_location_assignment PIN_CV14  -to HDMI_D[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[5]
set_location_assignment PIN_CV16  -to HDMI_D[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[6]
set_location_assignment PIN_CV19  -to HDMI_D[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[7]
set_location_assignment PIN_CR11  -to HDMI_D[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[8]
set_location_assignment PIN_CR14  -to HDMI_D[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[9]
set_location_assignment PIN_CR19  -to HDMI_D[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[10]
set_location_assignment PIN_CH16  -to HDMI_D[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[11]
set_location_assignment PIN_CH19  -to HDMI_D[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[12]
set_location_assignment PIN_CH14  -to HDMI_D[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[13]
set_location_assignment PIN_CG23  -to HDMI_D[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[14]
set_location_assignment PIN_CE14  -to HDMI_D[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[15]
set_location_assignment PIN_CG26  -to HDMI_D[16]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[16]
set_location_assignment PIN_CD23  -to HDMI_D[17]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[17]
set_location_assignment PIN_CH4   -to HDMI_D[18]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[18]
set_location_assignment PIN_CA23  -to HDMI_D[19]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[19]
set_location_assignment PIN_BV11  -to HDMI_D[20]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[20]
set_location_assignment PIN_BV19  -to HDMI_D[21]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[21]
set_location_assignment PIN_BV16  -to HDMI_D[22]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[22]
set_location_assignment PIN_BV14  -to HDMI_D[23]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_D[23]
}

if {$wFAB_I2C1 == 1} {
set_location_assignment PIN_DD3  -to HDMI_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_SCL
set_location_assignment PIN_CR8  -to HDMI_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to HDMI_SDA
}


############## Bank  (3.3V) ##############
if {$wCRUVI_LS == 1} {
set_location_assignment PIN_BE11  -to CRUVI_LS[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[0]
set_location_assignment PIN_BR11  -to CRUVI_LS[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[1]
set_location_assignment PIN_BH16  -to CRUVI_LS[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[2]
set_location_assignment PIN_BH19  -to CRUVI_LS[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[3]
set_location_assignment PIN_BR19  -to CRUVI_LS[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[4]
set_location_assignment PIN_BH11  -to CRUVI_LS[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[5]
set_location_assignment PIN_BE14  -to CRUVI_LS[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[6]
set_location_assignment PIN_BR14  -to CRUVI_LS[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CRUVI_LS[7]
}

if {$wCRUVI_HSX == 1} {
set_location_assignment PIN_CE8  -to CX_SMB_ALERT
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CX_SMB_ALERT
set_location_assignment PIN_DJ3  -to CX_SMB_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CX_SMB_SDA
set_location_assignment PIN_CE6  -to CX_SMB_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CX_SMB_SCL
set_location_assignment PIN_CH6  -to CX_REFCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CX_REFCLK
}

#set_location_assignment PIN_BU23  -to CY_SMB_ALERT
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CY_SMB_ALERT
#set_location_assignment PIN_BE19  -to CY_SMB_SDA
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CY_SMB_SDA
#set_location_assignment PIN_AV19  -to CY_SMB_SCL
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CY_SMB_SCL
#set_location_assignment PIN_BH14  -to CY_REFCLK
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CY_REFCLK


if {$wCRUVI_HSZ == 1} {
set_location_assignment PIN_AV14  -to CZ_SMB_ALERT
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CZ_SMB_ALERT
set_location_assignment PIN_AV16  -to CZ_SMB_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CZ_SMB_SDA
set_location_assignment PIN_AV11  -to CZ_SMB_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CZ_SMB_SCL
set_location_assignment PIN_BF23  -to CZ_REFCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to CZ_REFCLK
}

############## Bank HVIO_6F (1.8V) ##############
set_location_assignment PIN_BP1  -to FPGA_RST_N
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to FPGA_RST_N

# set_location_assignment PIN_BR8  -to VSEL_3V3
# set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to VSEL_3V3

if {$wFAB_EMAC0 || $wFAB_EMAC1} {
set_location_assignment PIN_BR6  -to RGMII_RESET
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII_RESET
set_location_assignment PIN_CB2  -to RGMII_MDIO
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII_MDIO
set_location_assignment PIN_BW1  -to RGMII_MDC
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII_MDC
#set_location_assignment PIN_BW2  -to RGMII_IRC
#set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII_IRC
}

if {$wFAB_EMAC0 == 1} {
set_location_assignment PIN_CJ1   -to RGMII0_TXCK
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_TXCK
set_location_assignment PIN_DA1 -to RGMII0_TXD[0]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_TXD[0]
set_location_assignment PIN_DA2  -to RGMII0_TXD[1]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_TXD[1]
set_location_assignment PIN_CU2  -to RGMII0_TXD[2]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_TXD[2]
set_location_assignment PIN_BV6  -to RGMII0_TXD[3]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_TXD[3]
set_location_assignment PIN_CF2   -to RGMII0_RXCK
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_RXCK
set_location_assignment PIN_CF1  -to RGMII0_RXCTL
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_RXCTL
set_location_assignment PIN_CJ2  -to RGMII0_TXCTL
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_TXCTL
set_location_assignment PIN_CP1   -to RGMII0_RXD[0]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_RXD[0]
set_location_assignment PIN_CP2   -to RGMII0_RXD[1]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_RXD[1]
set_location_assignment PIN_CM1   -to RGMII0_RXD[2]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_RXD[2]
set_location_assignment PIN_BV4   -to RGMII0_RXD[3]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII0_RXD[3]
}

############## Bank HVIO_6G (3.3V) ##############
#set_location_assignment PIN_AH11  -to PLL_SCL
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to PLL_SCL
#set_location_assignment PIN_AE8  -to PLL_SDA
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to PLL_SDA

if {$wRGB_LED0 == 1} {
set_location_assignment PIN_AE14  -to LED0R
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED0R
set_location_assignment PIN_R11  -to LED0G
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED0G
set_location_assignment PIN_R8  -to LED0B
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED0B
}
if {$wRGB_LED1 == 1} {
set_location_assignment PIN_AT8  -to LED1R
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED1R
set_location_assignment PIN_AH4  -to LED1G
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED1G
set_location_assignment PIN_AH6  -to LED1B
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED1B
}
if {$wRGB_LED2 == 1} {
set_location_assignment PIN_AE19  -to LED2R
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED2R
set_location_assignment PIN_V19  -to LED2G
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED2G
set_location_assignment PIN_V14  -to LED2B
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED2B
}
if {$wRGB_LED3 == 1} {
set_location_assignment PIN_C19  -to LED3R
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED3R
set_location_assignment PIN_B17  -to LED3G
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED3G
set_location_assignment PIN_R19  -to LED3B
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to LED3B
}

if {$wFAB_PB == 1} {
set_location_assignment PIN_AG26  -to FPGA_PB[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_PB[0]
set_location_assignment PIN_AT6  -to FPGA_PB[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_PB[1]
}

if {$wFAB_DIPSW == 1} {
set_location_assignment PIN_AG31  -to FPGA_DIPSW[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_DIPSW[0]
set_location_assignment PIN_AL37  -to FPGA_DIPSW[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_DIPSW[1]
set_location_assignment PIN_H19  -to FPGA_DIPSW[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_DIPSW[2]
set_location_assignment PIN_AH19  -to FPGA_DIPSW[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_DIPSW[3]
}

############## Bank HVIO_6H (1.8V) ##############
# set_location_assignment PIN_BE8  -to VSEL_1V3
# set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to VSEL_1V3

if {$wFAB_I2C0 == 1} {
set_location_assignment PIN_AC2  -to I2C_SCL
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to I2C_SCL
set_location_assignment PIN_AC1  -to I2C_SDA
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to I2C_SDA
set_location_assignment PIN_AF1  -to MUX_I2C_INT
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to MUX_I2C_INT
}

if {$wDBG_UART == 1} {
set_location_assignment PIN_AJ2  -to DBG_TXD
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to DBG_TXD
set_location_assignment PIN_AJ1  -to DBG_RXD
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to DBG_RXD
}

if {$wFAB_EMAC1 == 1} {
set_location_assignment PIN_AU2   -to RGMII1_TXCK
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_TXCK
set_location_assignment PIN_BL2  -to RGMII1_TXD[0]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_TXD[0]
set_location_assignment PIN_BL1  -to RGMII1_TXD[1]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_TXD[1]
set_location_assignment PIN_BH4  -to RGMII1_TXD[2]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_TXD[2]
set_location_assignment PIN_BG2  -to RGMII1_TXD[3]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_TXD[3]
set_location_assignment PIN_AP1   -to RGMII1_RXCK
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_RXCK
set_location_assignment PIN_AP2  -to RGMII1_RXCTL
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_RXCTL
set_location_assignment PIN_AU1  -to RGMII1_TXCTL
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_TXCTL
set_location_assignment PIN_BD2   -to RGMII1_RXD[0]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_RXD[0]
set_location_assignment PIN_BD1   -to RGMII1_RXD[1]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_RXD[1]
set_location_assignment PIN_BH6   -to RGMII1_RXD[2]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_RXD[2]
set_location_assignment PIN_BA1   -to RGMII1_RXD[3]
set_instance_assignment -name IO_STANDARD "1.8-V LVCMOS" -to RGMII1_RXD[3]
}


############## BANK HPS_IOA/HPS_IOB (1.8V) ##############
if {$wHPS_DIPSW == 1} {
# HPS_IOA_13
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_DIPSW[0]
# HPS_IOA_14
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_DIPSW[1]
}

if {$wHPS_UART0 == 1} {
# HPS_IOA_23
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_UART0_TX
# HPS_IOA_24
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_UART0_RX
}

if {$wHPS_I2C1 == 1} {
# HPS_IOA_21
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_I2C1_SDA
# HPS_IOA_22
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_I2C1_SCL
}

if {$wHPS_LED0 == 1} {
# HPS_IOA_15
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_LED0
}

if {$wHPS_LED1 == 1} {
# HPS_IOA_16
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_LED1
}

if {$wHPS_PB == 1} {
# HPS_IOA_17
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_PB[0]
# HPS_IOA_18
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_PB[1]
}

if {$wHPS_I3C0 == 1} {
# HPS_IOA_19
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_I3C0_SDA
# HPS_IOA_20
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_I3C0_SCL
}

if {$wHPS_USB == 1} {
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_RST
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_CLK
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_STP
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DIR
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_NXT
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[7]
}

if {$wHPS_EMAC2 == 1} {
# HPS_IOB_11
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RST
# HPS_IOB_13
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_TXCK
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_TXD[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_TXD[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_TXD[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_TXD[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RXCTL
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_TXCTL
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RXCK
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RXD[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RXD[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RXD[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_RXD[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_MDC
set_instance_assignment -name IO_STANDARD "1.8 V" -to HPS_ETH2_MDIO
}

if {$wHPS_SD == 1} {
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_CLK
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_CMD
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_DETECT
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_DAT[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_DAT[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_DAT[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to SD_DAT[3]
}







