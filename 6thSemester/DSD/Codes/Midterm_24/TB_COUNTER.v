module TB_COUNTER();

	reg CLK, RESET, UP_DN;
	wire [2:0] COUNT;

	
	COUNTER C1(CLK, RESET, UP_DN, COUNT);
	
	always #5 CLK = ~CLK;
	
	initial begin
		CLK = 0; RESET = 0; UP_DN = 1;
		#10 RESET = 1; UP_DN = 1;
		#20 UP_DN = 0;
	end
	
endmodule
