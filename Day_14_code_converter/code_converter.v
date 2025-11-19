module code_converter(
	input [3:0] b,
	output[3:0] g
);

assign g = {  b[3], b[2]^b[3], b[1]^b[2], b[0]^b[1]  } ; 


endmodule
