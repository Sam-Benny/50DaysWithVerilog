module parity_generator(
	input [3:0] d,
	output y
);

assign y = d[3] ^ d[2] ^ d[1] ^ d[0] ;

endmodule
