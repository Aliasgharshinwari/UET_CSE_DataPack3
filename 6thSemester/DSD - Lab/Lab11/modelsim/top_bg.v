module top_tb();
	
	reg CLK;
	reg [7:0]data_in;
	reg start;
	wire done;
	
	top dut(CLK, data_in, start, done);
	
	always # 5 CLK = ~CLK;
	
	initial begin
		$monitor("%d, Data=%d, X=%d, Y=%d, Z=%d ", $time, data_in, dut.dp.X, dut.dp.Y, dut.dp.Z);
		#10
		start = 1;
		data_in = 8'd5;

		#5
		data_in = 8'd10;
		
		
	end
endmodule
