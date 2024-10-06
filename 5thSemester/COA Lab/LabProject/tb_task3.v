module tb_task3();

	reg A; 
	reg B; 
	reg C;
	wire [7:0]I;
	
	task3 my_3x8_Decoder(A,B,C,I);
	
	
	initial begin
	A = 0;
	B = 0;
	C = 0;
	
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 0;
	B = 0;
	C = 1;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 0;
	B = 1;
	C = 0;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 0;
	B = 1;
	C = 1;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 1;
	B = 0;
	C = 0;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	#10
	
	A = 1;
	B = 0;
	C = 1;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	
	#10
	A = 1;
	B = 1;
	C = 0;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	
	#10
	A = 1;
	B = 1;
	C = 1;
	$display("%b %b %b %b", A , B, C, {I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]});
	
	end
endmodule


