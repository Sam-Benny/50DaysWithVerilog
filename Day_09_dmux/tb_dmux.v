module tb_dmux;

reg tb_enable, tb_i_in;
reg [1:0] tb_s;
wire [3:0] tb_y;

dmux dut ( .enable(tb_enable), .i_in(tb_i_in), .s(tb_s), .y(tb_y) );

initial begin 

	    tb_i_in=1; tb_enable=0; tb_s[1]=0; tb_s[0]=0;
	#10 tb_i_in=1; tb_enable=1; tb_s[1]=0; tb_s[0]=0;
	#10 tb_i_in=1; tb_enable=1; tb_s[1]=0; tb_s[0]=1;
	#10 tb_i_in=1; tb_enable=1; tb_s[1]=1; tb_s[0]=0;
        #10 tb_i_in=1; tb_enable=1; tb_s[1]=1; tb_s[0]=1;

	#10 $finish; 

end 

initial begin 

  $monitor ( " s[1] = %b  s[0] = %b   |  y[0] = %b  y[1] = %b  y[2] = %b  y[3] = %b ",
	       tb_s[1], tb_s[0], tb_y[0], tb_y[1], tb_y[2], tb_y[3] );
end 

initial begin 

	$dumpfile("tb_dmux.vcd");
	$dumpvars(0,tb_dmux);
end 

endmodule
