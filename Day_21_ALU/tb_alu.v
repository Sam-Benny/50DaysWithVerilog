module tb_alu;

reg [3:0] tb_a_in, tb_b_in;
reg [3:0] tb_sel;
output wire  [3:0] tb_y_out, tb_diff;
output wire  [7:0] tb_multiple_out;
output tb_c_out, tb_borrow;

alu dut ( .a_in(tb_a_in), .b_in(tb_b_in), .sel(tb_sel), .y_out(tb_y_out), .diff(tb_diff), 
	  .c_out(tb_c_out), .borrow(tb_borrow), .multiple_out(tb_multiple_out)  
  );

  integer i,j,k;
  initial begin 
	  
	  for( i=0;i<16;i++)begin
		  for(j=0;j<16;j++)begin
			  for(k=0;k<16;k++)begin
				  tb_a_in = i;
				  tb_b_in = j;
				  tb_sel  = k;
				  #10;                          // The below lines are just for printing the output in a formatted way 

				  if( tb_sel ==4'b0000)       $display ( " a_in = %b         b_in = %b        |   sum          = %b          carry  = %b \n", tb_a_in, tb_b_in, tb_y_out, tb_c_out);  

				  else if ( tb_sel ==4'b0001) $display ( " a_in = %b         b_in = %b        |   Difference   = %b          Borrow = %b\n ", tb_a_in, tb_b_in, tb_diff, tb_borrow);  

				  else if (tb_sel == 4'b1111) $display ( " a_in = %b ( %d )  b_in = %b ( %d ) |   multiple_out = %b ( %d ) \n",  tb_a_in, tb_a_in, tb_b_in, tb_b_in, tb_multiple_out,  tb_multiple_out );

				  else                        $display ( " a_in = %b         b_in = %b        |   y_out        = %b  \n",        tb_a_in, tb_b_in, tb_y_out );
			  end
		  end
	  end
	  $finish;
  end
 
  initial begin 

	  $dumpfile ( "tb_alu.vcd");
	  $dumpvars ( 0,tb_alu);
  end
  endmodule
