module dl_mux( 

input wire [1:0] s ,
input wire [3:0] i ,
output wire y
);

assign y=( ( ~s[1] & ~s[0] & i[0] ) | ( ~s[1] & s[0] & i[1] ) | ( s[1] & ~s[0] & i[2]) | (s[1] & s[0] & i[3]) );

endmodule






