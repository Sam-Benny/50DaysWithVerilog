module tb_encoder;

reg [7:0] tb_d;

wire tb_x, tb_y, tb_z ;

encoder dut ( .d(tb_d), .x(tb_x), .y(tb_y), .z(tb_z) );

 
integer i;

initial begin

for(i=0;i<8;i++)begin
	tb_d =8'b00000001<<i;
	#10;
end

end 

initial begin 
	$monitor ( " d[7]= %b  d[6]= %b  d[5]= %b  d[4]= %b  d[3]= %b  d[2]= %b  d[1]= %b  d[0]= %b |  x = %b  y = %b  z = %b " ,
		     tb_d[7], tb_d[6], tb_d[5], tb_d[4], tb_d[3], tb_d[2], tb_d[1], tb_d[0],tb_x, tb_y, tb_z ); 
end

initial begin 
	$dumpfile ("tb_encoder.vcd");
	$dumpvars (0,tb_encoder);
end

endmodule

