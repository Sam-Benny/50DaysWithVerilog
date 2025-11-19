module tb_code_converter;

reg [3:0] tb_b;
wire [3:0] tb_g;

code_converter dut ( .b(tb_b), .g(tb_g) );

integer i;

initial begin 

	for(i=0;i<16;i++)begin 
		tb_b = i;
	        #10; 
	end

end 

initial $monitor ("   Binary =  %4b   ----->   Gray =  %4b " ,tb_b,tb_g);

initial begin  
	$dumpfile ("tb_code_converter.vcd");
        $dumpvars (0,tb_code_converter);
end

endmodule
