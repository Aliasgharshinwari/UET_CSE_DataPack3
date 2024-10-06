module tb_Decoder_3x8();
	reg A; 
	reg B; 
	reg C; 
	reg E;
	wire [7:0]I;
	
	Decoder_3x8 my_3x8_Decoder(A,B,C,E,I);
	
	initial begin
	
	A = 1;
	B = 0;
	C = 1;
	E = 0;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 0;
	B = 0;
	C = 1;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 0;
	B = 1;
	C = 0;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 0;
	B = 1;
	C = 1;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});	#10
	
	A = 1;
	B = 0;
	C = 0;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 1;
	B = 0;
	C = 1;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	
	#10
	A = 1;
	B = 1;
	C = 0;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	
	#10
	A = 1;
	B = 1;
	C = 1;
	E = 1;
	$display("%b %b %b %b %b", A , B, C, E, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	
	end
	
endmodule
