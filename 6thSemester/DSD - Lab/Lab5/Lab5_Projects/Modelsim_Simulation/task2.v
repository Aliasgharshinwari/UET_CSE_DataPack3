module task2 (Out, a, b);
	input [3:0] a, b;
	output reg [6:0] Out;
	wire [3:0] sum;
	
	always @(a or b)
		case(sum)   
			4'h0: Out = 7'h40;
			4'h1: Out = 7'h79;
			4'h2: Out = 7'h24;
			4'h3: Out = 7'h30;
			4'h4: Out = 7'h19;
			4'h5: Out = 7'h12;
			4'h6: Out = 7'h02;
			4'h7: Out = 7'h78;
			4'h8: Out = 7'h00;
			4'h9: Out = 7'h10;
			default: Out = 7'h00;
		endcase	
		assign sum = a + b;
endmodule
