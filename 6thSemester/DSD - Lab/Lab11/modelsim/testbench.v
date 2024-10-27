module testbench();
	
	reg CLK = 0;
	reg [7:0]data_in;
	reg start;
	wire done;
	
	wire eqz, LdA, LdB, LdP, clrp, decB;
	
	controller cp(CLK, eqz, start, LdA, LdB, LdP, clrp, decB, done);
	product_datapath dp(eqz, LdA, LdB, Ldp, clrp, decB, data_in, CLK);
	
	always # 5 CLK = ~CLK;
	
	initial begin
		//$monitor("%d, Data=%d, X=%d, Y=%d, Z=%d ", $time, data_in, dp.X, dp.Y, dp.Z);
		
		#15
		start = 1;
		data_in = 8'd5;

		#15
		data_in = 8'd10;
		
		
	end
endmodule

