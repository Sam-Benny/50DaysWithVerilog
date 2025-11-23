module tb_decoder;

reg [2:0] tb_xyz;
wire [7:0] tb_d;

decoder dut ( .xyz(tb_xyz), .d(tb_d) );

integer i; 

initial begin 
       	for(i=0;i<8;i++)begin
		tb_xyz= i;
		#10;
	end
	$finish;
end

initial $monitor (" input :  %b     |    output :  %b ",tb_xyz, tb_d );

initial begin 
	$dumpfile("tb_decoder.vcd");
	$dumpvars(0,tb_decoder);
end

endmodule

