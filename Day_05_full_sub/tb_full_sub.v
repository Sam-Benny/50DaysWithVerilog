module tb_full_sub;

reg tb_a_in, tb_b_in, tb_c_in;
wire tb_diff_out, tb_borrow_out;
wire tb_a_not_out, tb_a_not_and_c_out, tb_a_not_and_b_out, tb_b_and_c_out;

full_sub dut ( .diff_out(tb_diff_out), .borrow_out(tb_borrow_out), .a_not_out(tb_a_not_out), .a_not_and_c_out(tb_a_not_and_c_out), 
        	.a_not_and_b_out(tb_a_not_and_b_out), .b_and_c_out(tb_b_and_c_out), .a_in(tb_a_in), .b_in(tb_b_in), .c_in(tb_c_in)
);

initial begin

    tb_a_in=0; tb_b_in=0; tb_c_in=0;
#10 tb_a_in=0; tb_b_in=0; tb_c_in=1;
#10 tb_a_in=0; tb_b_in=1; tb_c_in=0;
#10 tb_a_in=0; tb_b_in=1; tb_c_in=1;
#10 tb_a_in=1; tb_b_in=0; tb_c_in=0;
#10 tb_a_in=1; tb_b_in=0; tb_c_in=1;
#10 tb_a_in=1; tb_b_in=1; tb_c_in=0;
#10 tb_a_in=1; tb_b_in=1; tb_c_in=1;

#10 $finish;

end

initial begin

    $monitor("\n a_in=%b  b_in=%b  c_in=%b  diff_out=%b  borrow_out=%b",
                 tb_a_in, tb_b_in, tb_c_in, tb_diff_out, tb_borrow_out);

end


initial begin
    $dumpfile("tb_full_sub.vcd");
    $dumpvars(0, tb_full_sub);
end


endmodule

