module tb_d_FF();
	reg D, clk;
	wire q, qbar;
	
	d_FF DUT(D, clk, q, qbar);
	
	always #5 clk = ~clk;
	
	initial begin
		 D = 0;
		 clk = 0;
		 
		 #15 
		 D = 1;
		 
	end
		
endmodule


