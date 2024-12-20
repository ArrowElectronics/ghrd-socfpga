	component hps_signal_buffer is
		port (
			ck     : in    std_logic                    := 'X';             -- export
			dout   : out   std_logic_vector(0 downto 0);                    -- export
			din    : in    std_logic_vector(0 downto 0) := (others => 'X'); -- export
			oe     : in    std_logic_vector(0 downto 0) := (others => 'X'); -- export
			pad_io : inout std_logic_vector(0 downto 0) := (others => 'X')  -- export
		);
	end component hps_signal_buffer;

	u0 : component hps_signal_buffer
		port map (
			ck     => CONNECTED_TO_ck,     --     ck.export
			dout   => CONNECTED_TO_dout,   --   dout.export
			din    => CONNECTED_TO_din,    --    din.export
			oe     => CONNECTED_TO_oe,     --     oe.export
			pad_io => CONNECTED_TO_pad_io  -- pad_io.export
		);

