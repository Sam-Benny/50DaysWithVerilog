module odd_parity(
	input [3:0] a,
	output reg y
);

integer i;

always@(*)begin 

	y=0;

	for(i=0; i<4; i++) begin
		y = y ^ a[i] ;
	end
end

endmodule
