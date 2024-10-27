module tb_gray_ctr2();
	reg C = 0; 
	reg R;
	wire [1:0]OUT;
	
	gray_ctr2 ctr(C, R, OUT);
	
	always #5 C = ~C; 
	
	initial begin
		R = 1;
		#5 R = 0;
	end
	
	
endmodule

