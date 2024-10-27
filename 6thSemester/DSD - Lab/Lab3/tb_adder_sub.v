module tb_adder_sub();
	reg [3:0]A, B;
	reg M;
	wire [3:0]S;
	
	adder_sub a1(S, A, B, M);
	
	initial begin
	
		#10	A = 4'b0010; B = 4'b0010; M = 0;
		#10	A = 4'b1000; B = 4'b0010; M = 1;
		#10	A = 4'b1010; B = 4'b1010; M = 0;
		#10	A = 4'b1010; B = 4'b0110; M = 1;	
	
	end
	
	
endmodule


