module tb_dl_mux;

reg [1:0] tb_s;
reg [3:0] tb_i ;
wire tb_y;

dl_mux dut (.s(tb_s), .i(tb_i), .y(tb_y) );

initial begin 
        
	 tb_s= 2'b00; tb_i= 4'b1010;
     #10 tb_s= 2'b01;
     #10 tb_s= 2'b10;
     #10 tb_s= 2'b11;

     #10 $finish;
end


initial $monitor("y= %b",tb_y);


initial begin 
	$dumpfile("tb_dl_mux.vcd");
	$dumpvars(0,tb_dl_mux);
end

endmodule








