module tb_D_FlipFlop();
	
	reg D; 
	reg rst;
	reg Clk;
	
	wire Q; 
	wire QBar; 
	
	D_FF my_D_FF(D, rst, Clk, Q, QBar);

	initial begin
	Clk = 0;
	
	$display("D R C Q ");

	D = 0;
	rst = 1;
	//Clk = 0;
	#10	
	$display("%b %b %b %b ", D , rst, Clk, Q);

	D = 1;
	rst = 0;
	//Clk = 1;
	#10	
	$display("%b %b %b %b ", D , rst, Clk, Q);

	D = 0;
	rst = 0;
	//Clk = 0;
	#10	
	$display("%b %b %b %b ", D , rst, Clk, Q);

	D = 0;
	rst = 0;
	//Clk = 1;
	#10	
	$display("%b %b %b %b ", D , rst, Clk, Q);
	
	end
	
	// Clock generation
    always #5 Clk = ~Clk;
	
endmodule



