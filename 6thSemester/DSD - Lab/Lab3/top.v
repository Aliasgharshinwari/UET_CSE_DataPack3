module top();
	
	//output Z;
	wire A, B, C, D, Z;
	
	P2 p2(Z, A, B, C, D);
	P2_tb p2_tb(Z, A, B, C, D);
	
endmodule


