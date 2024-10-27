module top_magcomp4();

	reg [3:0] A, B;
	wire ALB, AGB, AEB;
	
	mag_comp4 m(A, B, ALB, AGB, AEB );
	
	initial begin
	$monitor ("%d, A=%b, B=%b, ALB=%b, AGB=%b AEB=%b", $time, A, B, ALB, AGB, AEB);
	
	#10 A = 4'b0000; B = 4'b0001;
	#10 A = 4'b1000; B = 4'b0001;
	#10 A = 4'b1000; B = 4'b1000;
	
	end

endmodule