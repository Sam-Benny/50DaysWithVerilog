module tb_four_bit_alu;

reg  [3:0] tb_a_in, tb_b_in, tb_s;
wire [3:0] tb_y_out;

four_bit_alu uut ( .a_in(tb_a_in), .b_in(tb_b_in), .s(tb_s), .y_out(tb_y_out) );

integer i,j,k;

initial begin 

	for(i=0;i<16;i++)begin
		for(j=0;j<16;j++)begin
			for(k=0;k<10;k++)begin
				tb_a_in=i;
				tb_b_in=j;
				tb_s=k;
				#10;
			end
		end
	end
	$finish;
  end

  initial begin

    $display("   A    B    S     y_out");
    $monitor("  %b   %b   %b      %b",  tb_a_in, tb_b_in, tb_s,tb_y_out);

  end

  initial begin

	  $dumpfile("tb_four_bit_alu.vcd");
	  $dumpvars(0,tb_four_bit_alu);
  end

endmodule

