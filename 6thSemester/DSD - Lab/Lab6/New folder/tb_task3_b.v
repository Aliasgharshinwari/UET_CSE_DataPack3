module tb_task3_b();
    reg clk, reset;         
    wire [6:0]out;
	
	task3_b t3(clk, reset, out);

    always #5 clk = ~clk; //100 GHz signal
	
	initial begin
		clk = 0;
		reset = 1;
		
		#10
		reset = 0;
	
	end
	
endmodule
