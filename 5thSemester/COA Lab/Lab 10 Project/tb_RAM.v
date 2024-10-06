module tb_RAM();	
	reg CLK = 0;
	reg RW; 
	reg [7:0]data_in;
	reg [3:0]addr ;
	wire [7:0]data_out;

	RAM ram(.CLK(CLK), .RW(RW), .data_in(data_in), .addr(addr), .data_out(data_out));
	
	always #5 CLK = ~CLK;
	
	initial begin
		data_in = 8'h56;
		RW = 1;
		addr = 4'hF;
		#10
		
		
		RW = 0;
		addr = 4'hF;
		#10
		
		data_in = 8'h46;
		RW = 1;
		addr = 4'hF;
		
	end
	
endmodule
