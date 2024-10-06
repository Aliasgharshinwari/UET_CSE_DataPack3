module JKFlipFlop(q,qbar,clk,j,k);

	input j,k,clk;
	output reg q = 0;
	output reg qbar = 1;

	wire nand1_out; // output from nand1
	wire nand2_out; // output from nand2

	
	nand(nand1_out, j,clk,qbar);
	nand(nand2_out, k,clk,q);
	
	SR_Latch my_latch(nand1_out, nand2_out, q, qbar);
	

endmodule