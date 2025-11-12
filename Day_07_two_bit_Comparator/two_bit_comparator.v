module two_bit_comparator ( a1,a0,b1,b0,a_less_b,a_equal_b,a_greater_b );

input a1,a0,b1,b0;
output a_less_b, a_equal_b, a_greater_b;


assign a_less_b = ( ~a1 & b1 ) | ( ~a1 & ~a0 & b0 ) | ( ~a0 & b1 & b0 ) ;

assign a_equal_b = ( a0 ~^ b0 ) & ( a1 ~^ b1 ) ;

assign a_greater_b = ( a1 & ~b1 ) | ( a1 & a0 & ~b0 ) | ( a0 & ~b1 & ~b0 ) ;


endmodule
