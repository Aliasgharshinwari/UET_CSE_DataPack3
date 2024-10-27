module tb_top();
	reg clk, CLR;
	wire [10:0] segment;
	
	top dut(clk,CLR,segment);
	
	always #5 clk = ~clk;
	
	initial begin
	clk = 0;
	CLR = 0;

	
	#10
	CLR = 1;
	
	
	end
endmodule

