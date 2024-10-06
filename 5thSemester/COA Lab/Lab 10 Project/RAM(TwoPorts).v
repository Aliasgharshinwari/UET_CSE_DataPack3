module RAM_TwoPorts(CLK, R, W, data_in, addr, data_out);
	
	input CLK, R, W; 
	input [7:0]data_in;
	input [3:0]addr ;
	output reg [7:0]data_out;
	reg[7:0] mem[15:0];
	
	always @(posedge CLK)
		if(W)
			mem[addr] = data_in;
		else if(R)
			data_out = mem[addr];
endmodule

