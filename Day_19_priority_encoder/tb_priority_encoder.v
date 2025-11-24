module tb_priority_encoder;

reg [3:0] tb_d;
wire [2:1] tb_y;

priority_encoder dut ( .d(tb_d), .y(tb_y) );

integer i;
initial begin 
     
	for(i=0;i<16;i++)begin
		tb_d = i;
		#10;
	end 
	$finish;
end

initial $monitor ( " d = %b  |  y = %b ",tb_d, tb_y);

initial begin 
	$dumpfile("tb_priority_encoder.vcd");
	$dumpvars(0,tb_priority_encoder);
end

endmodule
