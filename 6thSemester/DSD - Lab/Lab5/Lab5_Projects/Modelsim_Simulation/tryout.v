module tryout();
	
	reg [15:0]A;
	reg [0:15]B;
	reg [3:0]x1, x2, x3;
	
	initial begin
		A = 16'h1234;
		B = 16'h1234;
		x1 = A[3:0];
		x2 = B[0:3];
		x3 = A[0:3] & B[0:3];
	end
endmodule


