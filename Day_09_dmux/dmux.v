module dmux( 
	input enable , i_in,
	input  [1:0] s,
        output [3:0] y
	        
);

assign y[0]= enable & ~s[1] & ~s[0] & i_in ;
assign y[1]= enable & ~s[1] &  s[0] & i_in ;
assign y[2]= enable &  s[1] & ~s[0] & i_in ;
assign y[3]= enable &  s[1] &  s[0] & i_in ;


endmodule

