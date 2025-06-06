

package require qsys
package require quartus::device

source ../scripts/adi_env.tcl
source ../scripts/adi_ip_intel.tcl

set_module_property NAME axi_hdmi_tx
set_module_property DESCRIPTION "AXI HDMI Transmit Interface"
set_module_property VERSION 1.0
set_module_property GROUP "Analog Devices"
set_module_property DISPLAY_NAME axi_hdmi_tx
#set_module_property VALIDATION_CALLBACK info_param_validate

# files

add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL axi_hdmi_tx
add_fileset_file ad_mem.v                 VERILOG PATH $ad_hdl_dir/library/common/ad_mem.v
add_fileset_file ad_rst.v                 VERILOG PATH $ad_hdl_dir/library/common/ad_rst.v
add_fileset_file ad_csc.v                 VERILOG PATH $ad_hdl_dir/library/common/ad_csc.v
add_fileset_file ad_csc_RGB2CrYCb.v       VERILOG PATH $ad_hdl_dir/library/common/ad_csc_RGB2CrYCb.v
add_fileset_file ad_ss_444to422.v         VERILOG PATH $ad_hdl_dir/library/common/ad_ss_444to422.v
add_fileset_file up_axi.v                 VERILOG PATH $ad_hdl_dir/library/common/up_axi.v
add_fileset_file up_xfer_cntrl.v          VERILOG PATH $ad_hdl_dir/library/common/up_xfer_cntrl.v
add_fileset_file up_xfer_status.v         VERILOG PATH $ad_hdl_dir/library/common/up_xfer_status.v
add_fileset_file up_clock_mon.v           VERILOG PATH $ad_hdl_dir/library/common/up_clock_mon.v
add_fileset_file up_hdmi_tx.v             VERILOG PATH $ad_hdl_dir/library/common/up_hdmi_tx.v
add_fileset_file ad_mul.v                 VERILOG PATH $ad_hdl_dir/library/intel/common/ad_mul.v
add_fileset_file axi_hdmi_tx_vdma.v       VERILOG PATH axi_hdmi_tx_vdma.v
add_fileset_file axi_hdmi_tx_es.v         VERILOG PATH axi_hdmi_tx_es.v
add_fileset_file axi_hdmi_tx_core.v       VERILOG PATH axi_hdmi_tx_core.v
add_fileset_file axi_hdmi_tx.v            VERILOG PATH axi_hdmi_tx.v TOP_LEVEL_FILE
add_fileset_file up_xfer_cntrl_constr.sdc   SDC PATH  $ad_hdl_dir/library/intel/common/up_xfer_cntrl_constr.sdc
add_fileset_file up_xfer_status_constr.sdc  SDC PATH  $ad_hdl_dir/library/intel/common/up_xfer_status_constr.sdc
add_fileset_file up_clock_mon_constr.sdc    SDC PATH  $ad_hdl_dir/library/intel/common/up_clock_mon_constr.sdc
add_fileset_file up_rst_constr.sdc          SDC PATH  $ad_hdl_dir/library/intel/common/up_rst_constr.sdc
add_fileset_file axi_hdmi_tx_constr.sdc     SDC PATH axi_hdmi_tx_constr.sdc

# parameters

add_parameter ID INTEGER 0
set_parameter_property ID DEFAULT_VALUE 0
#set_parameter_property ID DISPLAY_NAME ID
#set_parameter_property ID TYPE INTEGER
#set_parameter_property ID UNITS None
#set_parameter_property ID HDL_PARAMETER true

ad_ip_parameter FPGA_TECHNOLOGY INTEGER 101 true { \
  DISPLAY_HINT "FPGA_TECHNOLOGY" \
  DISPLAY_NAME "FPGA_TECHNOLOGY" \
  ALLOWED_RANGES { "101:Cyclone V" "102:Agilex-5 E-Series" }
}

ad_ip_parameter INTERFACE STRING "16_BIT" true { \
  DISPLAY_HINT "interface" \
  DISPLAY_NAME "SYNCHRONIZATION" \
  ALLOWED_RANGES { "16_BIT:Separate" "16_BIT_EMBEDDED_SYNC:Embedded" }
}

ad_ip_parameter CR_CB_N INTEGER 0 true { \
  DISPLAY_HINT "CR_CB_N" \
  DISPLAY_NAME "CR_CB_N" \
  ALLOWED_RANGES { "0:Blue component first" "1:Red component first" }
}

ad_ip_parameter OUT_CLK_POLARITY INTEGER 0 true { \
  DISPLAY_HINT "HDMI CLOCK POLARITY" \
  DISPLAY_NAME "HDMI CLOCK POLARITY" \
  ALLOWED_RANGES { "0:Launch on rising edge" "1:Launch on falling edge" }
}

#adi_add_auto_fpga_spec_params

# axi4 slave

ad_ip_intf_s_axi s_axi_aclk s_axi_aresetn

# hdmi interface

add_interface hdmi_clock clock end
add_interface_port hdmi_clock hdmi_clk clk Input 1

add_interface hdmi_if conduit end
set_interface_property hdmi_if associatedClock hdmi_clock
add_interface_port hdmi_if hdmi_out_clk h_clk Output 1
add_interface_port hdmi_if hdmi_16_hsync h16_hsync Output 1
add_interface_port hdmi_if hdmi_16_vsync h16_vsync Output 1
add_interface_port hdmi_if hdmi_16_data_e h16_data_e Output 1
add_interface_port hdmi_if hdmi_16_data h16_data Output 16
add_interface_port hdmi_if hdmi_16_es_data h16_es_data Output 16
add_interface_port hdmi_if hdmi_24_hsync h24_hsync Output 1
add_interface_port hdmi_if hdmi_24_vsync h24_vsync Output 1
add_interface_port hdmi_if hdmi_24_data_e h24_data_e Output 1
add_interface_port hdmi_if hdmi_24_data h24_data Output 24
add_interface_port hdmi_if hdmi_36_hsync h36_hsync Output 1
add_interface_port hdmi_if hdmi_36_vsync h36_vsync Output 1
add_interface_port hdmi_if hdmi_36_data_e h36_data_e Output 1
add_interface_port hdmi_if hdmi_36_data h36_data Output 36

# avalon streaming dma

add_interface vdma_clock  clock end
add_interface_port vdma_clock vdma_clk clk Input 1

add_interface vdma_reset reset end
add_interface_port vdma_reset s_axi_aresetn reset_n Input 1
set_interface_property vdma_reset associatedClock vdma_clock

# axi4 streaming slave
add_interface vdma_if axi4stream end
set_interface_property vdma_if associatedClock vdma_clock
set_interface_property vdma_if associatedReset vdma_reset
add_interface_port vdma_if vdma_end_of_frame tlast Input 1
add_interface_port vdma_if vdma_valid tvalid Input 1
add_interface_port vdma_if vdma_data tdata Input 64
add_interface_port vdma_if vdma_ready tready Output 1