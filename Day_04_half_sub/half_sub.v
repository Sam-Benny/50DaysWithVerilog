module half_sub(diff_out, borrow_out, temp_inout, a_in, b_in);

input a_in, b_in;
output diff_out, borrow_out;
inout temp_inout;

xor dut1 (diff_out, a_in, b_in);
not dut2 (temp_inout, a_in);
and dut3 (borrow_out, temp_inout, b_in);

endmodule

