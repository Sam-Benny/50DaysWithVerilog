module tb_mux;

reg [7:0] tb_d;
reg [2:0] tb_sel;
wire tb_y;

mux dut ( .d(tb_d), .sel(tb_sel), .y(tb_y) );

integer i;

initial begin
           tb_d = 8'b01010101;
	for(i=0;i<8;i++)begin
		tb_sel = i;
		#10;
	end
        $finish;
end 

initial $monitor (" sel : %b   |   y : %b  ",tb_sel,tb_y);

initial begin
	$dumpfile("tb_mux.vcd");
	$dumpvars(0,tb_mux);
end

endmodule

