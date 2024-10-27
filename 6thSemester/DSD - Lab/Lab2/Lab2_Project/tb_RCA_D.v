module tb_RCA_D();
	reg [3:0] A, B;
	reg Cin = 1'b0;
	wire [3:0] S;
	wire C;
	
	RCA_D rca(A, B, Cin, S, C);

	initial begin
	
	$monitor("A = %d B = %d Cin = %d S = %d C = %d", A, B, Cin, S, C);
		
	A = 4'b1000; B = 4'b0001;
	#10 A = 4'b1000; B = 4'b0010;
	#10 A = 4'b1000; B = 4'b0011;
	#10 A = 4'b1000; B = 4'b1000;

	
	end
endmodule

