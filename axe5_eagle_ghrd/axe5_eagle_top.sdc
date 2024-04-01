create_clock -name REFCLK_3B0_p -period 40 -waveform {0 20} [get_ports {REFCLK_3B0_p}]

# create clock for internal clock (PLL input clock already constrained)
create_generated_clock -name hdmi_data_clk -source [get_pins { pd_system|video_sys_0|hdmi_pll|iopll_0|tennm_ph2_iopll|ref_clk0}] \
     -divide_by 16 -multiply_by 95 [get_pins {pd_system|video_sys_0|hdmi_pll|iopll_0|tennm_ph2_iopll|out_clk[0]}]
     
create_generated_clock -name hdmi_clk_out_int -source [get_pins { pd_system|video_sys_0|hdmi_pll|iopll_0|tennm_ph2_iopll|ref_clk0}] \
     -divide_by 16 -multiply_by 95 -phase 180 [get_pins { pd_system|video_sys_0|hdmi_pll|iopll_0|tennm_ph2_iopll|out_clk[1] }]     

# create virtual external clock for adv7511
create_generated_clock -name hdmi_clk_out -source [get_pins { pd_system|video_sys_0|hdmi_pll|iopll_0|tennm_ph2_iopll|out_clk[1] }]  [get_ports HDMI_CLK]

# output max delay = (setup latch – setup launch) – skew
# output min delay = skew - (hold launch –  hold latch)
# setup latch – setup launch =  period/2
# hold launch –  hold latch  =  period/2 

set period 6.736
set skew 0.0
set tvsu 1.0
set tvhld 0.7 
set out_max_dly [expr   $period/2 - $skew - $tvsu] 
set out_min_dly [expr   $skew + $tvhld - $period/2]

# max and min delay output constraints
set_output_delay -clock [get_clocks hdmi_clk_out] -max -$out_max_dly  [get_ports HDMI_D[*]]
set_output_delay -clock hdmi_clk_out -max -$out_max_dly  [get_ports HDMI_VS]
set_output_delay -clock hdmi_clk_out -max -$out_max_dly  [get_ports HDMI_HS]
set_output_delay -clock hdmi_clk_out -max -$out_max_dly  [get_ports HDMI_DE]

set_output_delay -clock hdmi_clk_out -min -$out_min_dly  [get_ports HDMI_D[*]]
set_output_delay -clock hdmi_clk_out -min -$out_min_dly  [get_ports HDMI_VS]
set_output_delay -clock hdmi_clk_out -min -$out_min_dly  [get_ports HDMI_HS]
set_output_delay -clock hdmi_clk_out -min -$out_min_dly  [get_ports HDMI_DE]

# false path falling edge paths through ddio block
set_false_path -fall_from [get_clocks hdmi_clk_out]

