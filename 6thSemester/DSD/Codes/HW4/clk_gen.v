module clk_gen;

	reg clk;
	
	initial begin
	clk = 0;
	
	forever 
		begin
			#10 clk = 1;
			#3 clk = 0;
		end	
	end
	

endmodule
