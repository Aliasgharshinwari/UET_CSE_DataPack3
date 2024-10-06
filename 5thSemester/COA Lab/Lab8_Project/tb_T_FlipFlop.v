module tb_T_FlipFlop();
	
	reg T, rst, Clk;
	wire Q, QBar;
	
	T_FlipFlop my_T_FlipFlop(T, rst, Clk, Q, QBar);

	initial begin
	Clk = 1;
	
	$display("T R Q Q'");

	T = 0;
	rst = 1;
	#10	
	$display("%b %b %b %b ", T , rst, Q,QBar);

	T = 1;
	rst = 0;
	#10	
	$display("%b %b %b %b ", T , rst, Q,QBar);

	T = 0;
	rst = 0;
	#10	
	$display("%b %b %b %b", T , rst, Q,QBar);

	T = 1;
	rst = 0;
	#10	
	$display("%b %b %b %b", T , rst, Q,QBar);
	end
	
	// Clock generation
    always #5 Clk = ~Clk;
	
endmodule