module tb_FA();
	reg A, B, Cin;
	wire S, C;
	
	full_adder fa(A, B, Cin, S, C);

	initial begin	
	$monitor("A = %d B = %d Cin = %d S = %d C = %d", A, B, Cin, S, C);
		
	{A,B,Cin} = 3'b000;
	#10 {A,B,Cin} = 3'b001;
	#10 {A,B,Cin} = 3'b010;
	#10 {A,B,Cin} = 3'b011;
	#10 {A,B,Cin} = 3'b100;
	#10 {A,B,Cin} = 3'b101;
	#10 {A,B,Cin} = 3'b110;
	#10 {A,B,Cin} = 3'b111;
	end
endmodule

