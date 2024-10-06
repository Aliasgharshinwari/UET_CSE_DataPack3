module tb_SR_FlipFlop();
	
	reg S; 
	reg R;
	reg Clk;
	
	wire Q; 
	wire QBar;
	
	SR_FlipFlop my_SR_FlipFlop(S, R, Clk, Q, QBar);

	initial begin
	
	$display("S R C Q Q'");
	
	S = 0;
	R = 1;
	Clk = 0;
	#10	
	$display("%b %b %b %b %b", S , R,Clk, Q,QBar);

	
	S = 0;
	R = 1;
	Clk = 1;
	#10	
	$display("%b %b %b %b %b", S , R,Clk, Q,QBar);
	
	S = 1;
	R = 0;
	Clk = 1;
	#10	
	$display("%b %b %b %b %b", S , R,Clk, Q,QBar);
	
	
	S = 1;
	R = 1;
	Clk = 1;
	#10	
	$display("%b %b %b %b %b", S , R,Clk, Q,QBar);
	
	end
endmodule

