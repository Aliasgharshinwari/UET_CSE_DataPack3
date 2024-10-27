module tb_counter3();

	reg clock = 0; 
	reg reset;  
	wire [2:0] out; 
	

	counter3 c3(.clock(clock), .reset(reset), .out(out));
	
	always #5 clock = ~clock;
	
	initial begin
	#5 reset = 1;
	
	end
	
endmodule

