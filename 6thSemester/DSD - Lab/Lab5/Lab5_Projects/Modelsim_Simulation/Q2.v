module Q2();
	
	reg [0:3] A;
	reg [0:2] B;
	reg [0:2] C;
	reg [0:3] D;
	
	reg [6:0]Out;
	
	initial begin
		A = 4'b1100;
		B = 3'b100;
		C = 3'b010;
		D = (A==B)?B:C;
	end
endmodule

