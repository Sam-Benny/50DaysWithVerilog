module tb_decoder;

reg tb_x, tb_y, tb_z;
wire [7:0] tb_d;

decoder dut ( .x(tb_x), .y(tb_y), .z(tb_z), .d(tb_d) );

integer i;
initial begin 

	for(i=0;i<8;i++)begin
		{tb_x, tb_y, tb_z } = i;
		#10;
	end
	$finish;
end


initial $monitor("x= %b y= %b z= %b  |  d= %b", tb_x, tb_y, tb_z, tb_d);

initial begin 
	$dumpfile("tb_decoder.vcd");
	$dumpvars(0,tb_decoder);
end

endmodule
