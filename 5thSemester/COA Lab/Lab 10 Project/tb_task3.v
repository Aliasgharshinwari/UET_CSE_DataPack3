module tb_task3();
	
	reg rst;
	reg Clk;	
	wire [3:0]out; 
	wire [3:0]QBar; 
	task3 my_task3(.rst(rst), .Clk(Clk), .out(out), .QBar(QBar));

    always #5 Clk = ~Clk;
	
	initial begin
	rst = 0;
	Clk = 1;
	#10
	
	rst = 1;
	#30
	
	rst = 0;
	end
	
endmodule




