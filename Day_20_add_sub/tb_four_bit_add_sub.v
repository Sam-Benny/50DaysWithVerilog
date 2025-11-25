module tb_four_bit_add_sub;

	reg [3:0] tb_a_in, tb_b_in;
	reg tb_c_in;
        wire [3:0] tb_sum_out,  tb_diff_out;
	wire  tb_borrow, tb_carry_out;

four_bit_add_sub dut ( .a_in(tb_a_in), .b_in(tb_b_in), .c_in(tb_c_in), .sum_out(tb_sum_out),
	             .carry_out(tb_carry_out), .diff_out(tb_diff_out), .borrow(tb_borrow)
	             );

	     integer i,j;
	     initial begin
		    tb_c_in = 0; 
		     for( i=0;i<16;i++)begin
			     for(j=0;j<16;j++)begin
				     tb_a_in = i;
				     tb_b_in = j;
				     #10;
			     end
		     end
		     $finish;
	     end


initial $monitor ( " a = %b   b = %b   | Addition :  sum_out = %b   carry_out = %b   |   Subtraction : diff_out = %b   borrow = %b   ",
	           tb_a_in, tb_b_in, tb_sum_out, tb_carry_out, tb_diff_out, tb_borrow);

initial begin

	 $dumpfile ("tb_four_bit_add_sub.vcd");
	 $dumpvars (0,tb_four_bit_add_sub);
end

	     endmodule
				     
