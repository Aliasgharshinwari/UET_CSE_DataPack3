module tst_counter;

	reg clock, reset; 
	wire [2:0] out;

	counter c (clock, reset, out);
	always
		#5 clock=~clock;
	
	initial
	begin
		reset=0;
		clock=0;
		#10 reset=1;
	end
	
endmodule