module decoder( 
	input [2:0] xyz,
        output reg [7:0] d
	);

	
always@(*)begin

	 d = 8'b00000000; 

	if( xyz == 3'b000) d[0]=1;

	else if (xyz == 3'b001) d[1]=1;

	else if (xyz == 3'b010) d[2]=1;

	else if (xyz == 3'b011) d[3]=1;

	else if (xyz == 3'b100) d[4]=1;

	else if (xyz == 3'b101) d[5]=1;

	else if (xyz == 3'b110) d[6]=1;
	
	else  d[7]=1;

end

endmodule


