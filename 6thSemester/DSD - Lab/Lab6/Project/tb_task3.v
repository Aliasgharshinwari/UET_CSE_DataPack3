module tb_task3();
    reg clk, rst;         
    wire [6:0]o;
	
	top1 t3(clk, rst, o);

    always #5 clk = ~clk;
	
	initial begin
		clk = 0;
		rst = 1;
		
		#10
		rst = 0;
	
	end
	
endmodule