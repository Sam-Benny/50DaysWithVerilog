module blocking ( 
	output reg a,b,c
);

initial begin 
	a=0; b=1; c=0;
	#1;
	a= 1;
	b=c;
	c= a + b;
end 

endmodule
