	hps_signal_buffer u0 (
		.ck     (_connected_to_ck_),     //   input,  width = 1,     ck.export
		.dout   (_connected_to_dout_),   //  output,  width = 1,   dout.export
		.din    (_connected_to_din_),    //   input,  width = 1,    din.export
		.oe     (_connected_to_oe_),     //   input,  width = 1,     oe.export
		.pad_io (_connected_to_pad_io_)  //   inout,  width = 1, pad_io.export
	);

