module tb_Decoder_2x4();

	reg A; 
	reg B; 
	reg E;
	wire [3:0]I;
	
	Decoder_2x4 my_2x4_Decoder(A,B,E,I);
	
	initial begin
	A = 0;
	B = 0;
	E = 0;
	$display("%b %b %b %b", A , B, E, {I[0], I[1], I[2], I[3]});
	#10	
	
	A = 0;
	B = 0;
	E = 1;
	$display("%b %b %b %b", A , B, E, {I[0], I[1], I[2], I[3]});
	#10
	
	A = 0;
	B = 1;
	E = 1;
	#10
	
	$display("%b %b %b %b", A , B, E, {I[0], I[1], I[2], I[3]});
	A = 1;
	B = 0;
	E = 1;
	$display("%b %b %b %b", A , B, E, {I[0], I[1], I[2], I[3]});
	#10
	
	A = 1;
	B = 1;
	E = 1;
	$display("%b %b %b %b", A , B, E, {I[0], I[1], I[2], I[3]});
		
	end
	
endmodule