module hps_signal_buffer (
		input  wire       ck,     //     ck.export, In input and output paths, this clock feeds a packed register or DDIO. In bidirectional mode, this clock is the unique clock for the input and output paths if you turn off the Separate input/output Clocks parameter.
		output wire [0:0] dout,   //   dout.export, Data output to the FPGA core in input or bidirectional mode, DATA_SIZE depends on the register mode: Bypass or simple register - DATA_SIZE = SIZE DDIO - DATA_SIZE = 2 x SIZE
		input  wire [0:0] din,    //    din.export, Data input from the FPGA core in output or bidirectional mode.
		input  wire [0:0] oe,     //     oe.export, OE input from the FPGA core in output mode with Enable output enable port turned on, or bidirectional mode. OE is active high. When transmitting data, set this signal to 1. When receiving data, set this signal to 0.
		inout  wire [0:0] pad_io  // pad_io.export, Bidirectional signal connection with the pad.
	);
endmodule

