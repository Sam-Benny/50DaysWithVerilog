module tb_two_bit_comparator;

reg [1:0] tb_a, tb_b;

wire tb_a_less_b, tb_a_equal_b, tb_a_greater_b;

two_bit_comparator dut ( .a1(tb_a[1]), .a0(tb_a[0]), .b1(tb_b[1]), .b0(tb_b[0]),

                         .a_less_b(tb_a_less_b), .a_equal_b(tb_a_equal_b),

			 .a_greater_b(tb_a_greater_b) 
		 );
integer i,j;

initial begin 	

	for(i=0;i<4;i++)begin
		for(j=0;j<4;j++)begin
			tb_a=i;
		       	tb_b=j;
			#10;
		end
	end
	$finish;
end 


initial begin 

	$monitor (" inputs:  a = %b%b  b = %b%b   |   output:  a<b = %b  a=b = %b  a>b = %b  "
	            ,tb_a[1], tb_a[0], tb_b[1], tb_b[0],  tb_a_less_b, tb_a_equal_b, tb_a_greater_b );

end 

initial begin 
	$dumpfile("tb_two_bit_comparator.vcd");
	$dumpvars(0,tb_two_bit_comparator);

end

endmodule
