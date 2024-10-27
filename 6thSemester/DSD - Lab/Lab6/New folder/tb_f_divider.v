module tb_f_divider();
	reg clk;
	wire out;
	
	f_divider dut(clk, out);
	
	always #5 clk = ~clk;
	
	initial begin
		 clk = 0;	 
	end
		
endmodule



