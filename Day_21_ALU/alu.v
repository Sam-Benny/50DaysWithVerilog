module alu (
	input [3:0] a_in, b_in,
	input [3:0] sel,
	output reg [3:0] y_out, diff,
	output reg [7:0] multiple_out,
	output reg c_out, borrow

);

always@(*)begin 
  case (sel)

	  4'b0000 :  { c_out,y_out } = a_in + b_in ;
	  
	  4'b0001 :  { borrow,diff } = a_in - b_in ;

	  4'b0010 :  y_out = a_in + 1;

	  4'b0011 :  y_out = a_in - 1;

	  4'b0100 :  y_out = b_in + 1;

	  4'b0101 :  y_out = b_in - 1;

	  4'b0110 :  y_out = a_in & b_in;

	  4'b0111 :  y_out = a_in | b_in;

	  4'b1000 :  y_out = a_in ^ b_in;

	  4'b1001 :  y_out = a_in ~^ b_in;

	  4'b1010 :  y_out = ~a_in;

	  4'b1011 :  y_out = ~b_in;

	  4'b1100 :  y_out = a_in << 1;

	  4'b1101 :  y_out = a_in >> 1;

	  4'b1110 :  y_out = ~a_in + 1;

	  4'b1111 :  multiple_out = a_in * b_in;
  endcase
  
  end

  endmodule



