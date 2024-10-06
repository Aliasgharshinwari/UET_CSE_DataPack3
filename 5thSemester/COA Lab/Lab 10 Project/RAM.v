module RAM(CLK, RW, data_in, addr, data_out);
	
	input CLK, RW; 
	input [7:0]data_in;
	input [3:0]addr ;
	output reg [7:0]data_out;
	reg[7:0] mem[15:0];
	
	always @(posedge CLK)
		if(RW)
			mem[addr] = data_in;
		else
			data_out = mem[addr];
endmodule
