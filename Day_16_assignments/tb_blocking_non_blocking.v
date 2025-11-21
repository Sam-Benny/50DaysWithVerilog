module tb_blocking_non_blocking;

wire a,b,c,x,y,z;

blocking dut1 ( .a(a), .b(b), .c(c) );
non_blocking dut2 ( .a(x), .b(y), .c(z) );

initial begin
	#2;
       	$display ( "\n Blocking     : a = %b  b = %b  c = %b \n Non_Blocking : a = %b  b = %b  c = %b\n",
                    a, b, c, x, y, z );
    end
    
initial begin 
	$dumpfile("tb_blocking_non_blocking.vcd");
	$dumpvars(0,tb_blocking_non_blocking);
end

endmodule	    
