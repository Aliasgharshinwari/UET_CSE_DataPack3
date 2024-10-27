module P2_tb(Z, A, B, C, D);
	input Z;
	output reg A, B, C, D;
	
	
	initial begin
	
	#10	{A, B, C, D} = 4'b0000;
	#10	{A, B, C, D} = 4'b0001;
	#10	{A, B, C, D} = 4'b0010;
	#10	{A, B, C, D} = 4'b0100;
	
	
	end
	
	
endmodule

