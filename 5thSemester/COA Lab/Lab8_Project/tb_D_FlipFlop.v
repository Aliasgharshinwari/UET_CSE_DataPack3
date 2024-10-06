module tb_D_FlipFlop();
	
	reg D, rst, Clk;
	
	wire Q; 
	wire QBar;
	
	D_FlipFlop my_D_FlipFlop(D, rst, Clk, Q, QBar);

	initial begin
	Clk = 0;
	
	$display("D R C Q Q'");

	D = 0;
	rst = 1;
	#10	
	$display("%b %b %b %b %b", D , rst, Clk, Q,QBar);

	D = 1;
	rst = 0;
	#10	
	$display("%b %b %b %b %b", D , rst, Clk, Q,QBar);

	D = 0;
	rst = 0;
	#10	
	$display("%b %b %b %b %b", D , rst, Clk, Q,QBar);

	D = 0;
	rst = 0;
	#10	
	$display("%b %b %b %b %b", D , rst, Clk, Q,QBar);
	
	end
	
	// Clock generation
    always #5 Clk = ~Clk;
	
endmodule


