module tb_U_T_FlipFlop();
	
	reg rst;
	reg Clk;
	
	wire Q; 
	wire QBar; 
	
	U_T_FF my_U_T_FF(rst, Clk, Q, QBar);

	initial begin
	Clk = 0;
	
	rst = 1;
	//Clk = 0;
	#10	
	
	rst = 0;
	//Clk = 1;
	#10	
	
	rst = 0;
	//Clk = 0;
	#10	
	
	rst = 0;
	//Clk = 1;

	
	end
	
	// Clock generation
    always #5 Clk = ~Clk;
	
endmodule




