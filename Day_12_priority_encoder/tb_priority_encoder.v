module tb_priority_encoder;

reg [3:0] tb_i;
wire [1:0] tb_y;

priority_encoder dut (  .i(tb_i), .y(tb_y) );

initial begin 
   
	tb_i = 4'b0000;
    #10 tb_i = 4'b0010;
    #10 tb_i = 4'b0100;
    #10 tb_i = 4'b1000;

    #10 $finish;

end

initial $monitor ( " tb_i = %4b     tb_y = %2b  ", tb_i,tb_y);

initial begin 
	$dumpfile("tb_priority_encoder.vcd");
	$dumpvars(0,tb_priority_encoder);
end

endmodule


