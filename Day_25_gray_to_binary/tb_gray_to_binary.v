module tb_gray_to_binary;

parameter n = 4;

reg [n-1:0]  tb_gray_in;
wire [n-1:0] tb_binary_out;

gray_to_binary dut ( .gray_in(tb_gray_in), .binary_out(tb_binary_out) );


integer i;

initial begin

  for( i=0; i< 16;i++)begin
	  tb_gray_in = i ^ (i >> 1 ) ;
	  #10;
  end
  $finish;

end

initial begin 

	$monitor  ( "    Gray_in = %b    |   Binary_out = %b ",tb_gray_in, tb_binary_out );
	$dumpfile ("tb_gray_to_binary.vcd");
	$dumpvars (0,tb_gray_to_binary);
end

endmodule

