module full_sub(
    diff_out, borrow_out, a_not_out, a_not_and_c_out, a_not_and_b_out, b_and_c_out,
    a_in, b_in, c_in
);

input a_in, b_in, c_in;
output diff_out, borrow_out, a_not_out, a_not_and_c_out, a_not_and_b_out, b_and_c_out;

xor diff (diff_out, a_in, b_in, c_in);
and and1 (b_and_c_out, b_in, c_in);
not not1 (a_not_out, a_in);
and and2 (a_not_and_c_out, a_not_out, c_in);
and and3 (a_not_and_b_out, a_not_out, b_in);
or  or1  (borrow_out, a_not_and_c_out, a_not_and_b_out, b_and_c_out);

endmodule

