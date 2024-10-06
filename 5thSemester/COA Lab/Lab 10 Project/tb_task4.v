module tb_task4();
	reg rst, Clk, T;	
	wire [3:0]out; 
	wire [3:0]QBar; 
	task4 my_task4(.T(T), .rst(rst), .Clk(Clk), .out(out), .QBar(QBar));

    always #5 Clk = ~Clk;
	
	initial begin
	T = 0;
	rst = 0;
	Clk = 1;
	#10
	
	T = 0;
	rst = 1;
	#30
	
	T = 1;
	rst = 0;
	end
endmodule





