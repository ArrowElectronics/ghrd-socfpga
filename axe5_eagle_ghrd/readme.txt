# generate jic for qspi
quartus_pfg.exe -c axe5_eagle_top.sof axe5_eagle_top.jic -o device=MT25QU128 -o flash_loader=A5ED065BB32AE5SR0 -o hps_path=u-boot-spl.ihex -o mode=ASX4

# program into qspi
quartus_pgm.exe -c 1 -m jtag -o "pvi;axe5_eagle_top.jic"



# generate the combined FPGA / HPS sof
quartus_pfg.exe -c axe5_eagle_top.sof axe5_eagle_top_with_HPS.sof -o hps_path=u-boot-spl.ihex

# download the sof from a Nios II command shell
quartus_pgm.exe -c 1 -m jtag -o "p;axe5_eagle_top_with_HPS.sof"