module tb_four_bit_adder;

reg  tb_a0, tb_a1,tb_a2,tb_a3, tb_b0,tb_b1,tb_b2,tb_b3;
wire tb_s0,tb_s1,tb_s2,tb_s3, tb_c0,tb_c1,tb_c2,tb_c3;

four_bit_adder dut( .a0(tb_a0), .a1(tb_a1), .a2(tb_a2), .a3(tb_a3),
                    .b0(tb_b0), .b1(tb_b1), .b2(tb_b2), .b3(tb_b3),
	            .c0(tb_c0), .c1(tb_c1), .c2(tb_c2), .c3(tb_c3),
	            .s0(tb_s0), .s1(tb_s1), .s2(tb_s2), .s3(tb_s3)

	);

initial begin 

       tb_a3=0; tb_a2=0; tb_a1=0; tb_a0=0;   tb_b3=0; tb_b2=0; tb_b1=0; tb_b0=0;  //  0 + 0
   #10 tb_a3=0; tb_a2=0; tb_a1=0; tb_a0=1;   tb_b3=0; tb_b2=0; tb_b1=0; tb_b0=1;  //  1 + 1
   #10 tb_a3=0; tb_a2=0; tb_a1=1; tb_a0=0;   tb_b3=0; tb_b2=0; tb_b1=1; tb_b0=1;  //  2 + 3
   #10 tb_a3=0; tb_a2=1; tb_a1=0; tb_a0=1;   tb_b3=0; tb_b2=1; tb_b1=0; tb_b0=1;  //  5 + 5
   #10 tb_a3=1; tb_a2=0; tb_a1=0; tb_a0=0;   tb_b3=0; tb_b2=1; tb_b1=1; tb_b0=0;  //  8 + 6
   #10 tb_a3=1; tb_a2=1; tb_a1=0; tb_a0=1;   tb_b3=1; tb_b2=0; tb_b1=0; tb_b0=0;  // 13 + 8 
   #10 tb_a3=1; tb_a2=0; tb_a1=1; tb_a0=0;   tb_b3=0; tb_b2=1; tb_b1=1; tb_b0=1;  // 10 + 7
   #10 tb_a3=1; tb_a2=1; tb_a1=1; tb_a0=1;   tb_b3=1; tb_b2=1; tb_b1=1; tb_b0=1;  // 15 + 15

   #10 $finish;

end 
    
initial begin 

$monitor("  | a3=%b a2=%b a1=%b a0=%b   b3=%b b2=%b b1=%b b0=%b   | input a : %b%b%b%b |  input b : %b%b%b%b |  sum : %b%b%b%b  |  carry : %b |",
         tb_a3, tb_a2, tb_a1, tb_a0, tb_b3, tb_b2, tb_b1, tb_b0, 
         tb_a3, tb_a2, tb_a1, tb_a0, tb_b3, tb_b2, tb_b1, tb_b0,
	 tb_s3, tb_s2, tb_s1, tb_s0,
         tb_c3);
end

initial begin 

$dumpfile("tb_four_bit_adder.vcd");
$dumpvars(0,tb_four_bit_adder);

end

endmodule

	
