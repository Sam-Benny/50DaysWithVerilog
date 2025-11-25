module four_bit_add_sub(
	input [3:0] a_in, b_in,
	input c_in,
        output reg [3:0] sum_out,  diff_out,
	output reg  borrow, carry_out
);

always@(*)begin

	{carry_out, sum_out} = a_in + b_in  + c_in;
	
        diff_out = a_in - b_in - c_in;
        borrow   = (b_in + c_in) > a_in;

end

endmodule
	
