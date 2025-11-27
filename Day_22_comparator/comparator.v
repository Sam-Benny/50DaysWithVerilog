module comparator (
input [3:0] a_in,b_in,
output reg a_less_b, a_greater_b, a_equal_b
);

always@(*)begin

    a_greater_b = (a_in > b_in);
    a_less_b  = (a_in < b_in);
    a_equal_b = (a_in == b_in);
    
    end

endmodule
    
    

