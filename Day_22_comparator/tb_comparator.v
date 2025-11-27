 module tb_comparator;
    reg [3:0] tb_a_in, tb_b_in;
    output wire tb_a_less_b, tb_a_greater_b, tb_a_equal_b;  

   comparator dut ( .a_in(tb_a_in), .b_in(tb_b_in), .a_less_b(tb_a_less_b),
	            .a_greater_b( tb_a_greater_b ), .a_equal_b( tb_a_equal_b) ) ;
   
   integer i,j;
   
    initial begin 
      for(i=0;i<16;i++)begin
        for(j=0;j<16;j++)begin
          tb_a_in = i;
          tb_b_in = j;
          #10;
        end
      end
      $finish;
    end
   
   initial $monitor( "     input :  a = %b  b = %b   |  output :  a<b = %b   a=b = %b  a>b = %b    ",
	   tb_a_in, tb_b_in, tb_a_less_b, tb_a_equal_b, tb_a_greater_b );
   
   initial begin 
   $dumpfile("tb_comparator.vcd");
   $dumpvars(0,tb_comparator);
   end
   
   
 endmodule
