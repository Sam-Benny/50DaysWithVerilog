module four_bit_adder (

	s0,s1,s2,s3, c0,c1,c2,c3,
	a0,a1,a2,a3, b0,b1,b2,b3
);

input 	a0,a1,a2,a3, b0,b1,b2,b3;
output  s0,s1,s2,s3, c0,c1,c2,c3;


assign s0=a0^b0;
assign c0=a0&b0;

assign s1=a1^b1^c0;
assign c1=( a1&b1 |b1&c0 | c0&a1 );

assign s2=a2^b2^c1;
assign c2=( a2&b2 |b2&c1 | c1&a2 );

assign s3=a3^b3^c2;
assign c3=( a3&b3 |b3&c2 | c2&a3 );


endmodule




