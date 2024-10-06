module JK_FlipFlop(J, K, Clk, Q, QBar);
	
	input J, K, Clk;
	
	output reg Q = 0;
	output reg QBar = 1;
	//output Q , QBar;
	//reg Q, QBar;
	
	wire o1, o2;
	
	always@(posedge Clk) begin

//		nand n1(o1, J, Clk, QBar);
//		nand n2(o2, K, Clk, Q);
	
//		assign n1 = ~(J & Clk & QBar);
//		assign n2 = ~(K & Clk & Q);
		assign Q = ~(~(J & Clk & QBar) & QBar);
		assign QBar = ~(~(K & Clk & Q) & Q);
	end
//	always @* begin
	//nand n3(Q, o1, QBar);
	//nand n4(QBar, o2, Q);
	
	
endmodule
