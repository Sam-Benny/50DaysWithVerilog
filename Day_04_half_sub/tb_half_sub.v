module tb_half_sub;

reg tb_a_in, tb_b_in;
wire tb_diff_out, tb_borrow_out, tb_temp_inout;

half_sub dut( .diff_out(tb_diff_out), .borrow_out(tb_borrow_out),
              .temp_inout(tb_temp_inout), .a_in(tb_a_in), .b_in(tb_b_in)
);


initial begin

    tb_a_in = 1'b0; tb_b_in = 1'b0;
#10 tb_a_in = 1'b0; tb_b_in = 1'b1;
#10 tb_a_in = 1'b1; tb_b_in = 1'b0;
#10 tb_a_in = 1'b1; tb_b_in = 1'b1;

#10 $finish;

end

initial begin

    $monitor("\na_in=%b  b_in=%b  diff_out=%b  borrow_out=%b", 
              tb_a_in, tb_b_in, tb_diff_out, tb_borrow_out);
end

initial begin

    $dumpfile("tb_half_sub.vcd");
    $dumpvars(0, tb_half_sub);
end


endmodule

