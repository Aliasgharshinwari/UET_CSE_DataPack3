module tb_task3_b();
    reg clk, rst;         
    wire [6:0]out;
	
	top2 t3(clk, rst, out);

    always #5 clk = ~clk; //100 GHz signal
	
	initial begin
		clk = 0;
		rst = 1;
		
		#10
		rst = 0;
	
	end
	
endmodule
