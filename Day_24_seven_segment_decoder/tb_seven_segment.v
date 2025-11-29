module tb_seven_segment;

reg  [3:0] tb_a_in;
wire [6:0] tb_led;

seven_segment dut ( .a_in(tb_a_in), .led(tb_led) );

integer i;

initial begin

    for (i = 0; i < 11; i = i + 1) begin
        tb_a_in = i;
        #10;
    end

    $finish;
end

initial $monitor ( " input a = %b    | output LED : %b " ,tb_a_in, tb_led );

initial begin 

	$dumpfile("tb_seven_segment.vcd");
	$dumpvars(0,tb_seven_segment);
end

endmodule

