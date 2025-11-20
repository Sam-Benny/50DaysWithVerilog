module four_bit_alu (
	input [3:0] a_in, b_in,s,
	output [3:0] y_out
	);

wire [3:0] add_out, sub_out, and_out, or_out, xor_out, not_out, left_shift_out, right_shift_out, increment_out, decrement_out ;

assign add_out =  a_in + b_in;
assign sub_out =  a_in - b_in;
assign and_out =  a_in & b_in;
assign or_out  =  a_in | b_in;
assign xor_out =  a_in ^ b_in;
assign not_out =  ~ a_in;

assign left_shift_out  =  a_in << 1;
assign right_shift_out =  a_in >> 1;
assign increment_out   =  a_in + 1;
assign decrement_out   =  a_in - 1;


assign y_out =  (s == 4'b0000) ? add_out  : 
	        (s == 4'b0001) ? sub_out  :
	        (s == 4'b0010) ? and_out :
                (s == 4'b0011) ? or_out  :
                (s == 4'b0100) ? xor_out :        
                (s == 4'b0101) ? not_out :      
                (s == 4'b0110) ? left_shift_out :
                (s == 4'b0111) ? right_shift_out:
                (s == 4'b1000) ? increment_out  :
                                 decrement_out  ;
                

endmodule 
