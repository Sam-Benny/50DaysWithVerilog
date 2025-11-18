module tb_parity_generator;

reg [3:0] tb_d;
wire tb_y;

parity_generator dut (.d(tb_d), .y(tb_y) );

integer i;

initial begin 

	for(i=0;i<16;i++)begin
		tb_d = i;
		#10;
	end
end

initial $monitor(" input : %b  |  output : %b  ",tb_d,tb_y);

initial begin 
      $dumpfile("tb_parity_generator.vcd");
      $dumpvars(0,tb_parity_generator);

end 

endmodule



