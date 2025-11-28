module tb_odd_parity;

reg [3:0] tb_a;
wire tb_y;

odd_parity dut ( .a(tb_a), .y(tb_y) );

integer i;

initial begin 

	for(i=0; i<16; i++) begin
		tb_a =i;
		#10;
	end
	$finish;
end

initial $monitor( " input : %b    |  output : %b ",tb_a,tb_y);

initial begin 
	$dumpfile("tb_odd_parity.vcd");
	$dumpvars(0,tb_odd_parity);
end

endmodule

