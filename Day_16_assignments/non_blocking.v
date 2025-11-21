module non_blocking (
	output reg a,b,c
);
initial begin 

	a=0; b=0; c=0;
	#1;
	a<=1 ;
	c<=a + b;
end 

endmodule
