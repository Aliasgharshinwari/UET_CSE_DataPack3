module D_FF(D,rst, Clk, Q, QBar);
	
	input D;
	input Clk;
	input rst;
	output reg Q = 0;
	output reg QBar = 1;
	
	
	always@(posedge Clk)

		if (rst) begin
				Q <= 1'b0;
				QBar <= 1'b1;
			end	
			
		else begin
				Q <= D;
				QBar <= ~D;
			end
endmodule

