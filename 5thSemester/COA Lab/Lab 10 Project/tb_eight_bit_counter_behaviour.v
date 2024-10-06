module tb_eight_bit_counter_behaviour();
	
	reg rst;
	reg Clk;
	
	wire [7:0]out; 
	
	eight_bit_counter_behaviour my_eight_bit_counter_behaviour(.rst(rst), .Clk(Clk), .out(out));

	// Clock generation
    always #5 Clk = ~Clk;
	
	initial begin

	rst = 1;
	Clk = 1;
	#10	

	rst = 0;
	//Clk = 0;
	#10	
	
	rst = 0;
	//Clk = 1;
	#10	
	
	rst = 0;
	//Clk = 0;
	#10	
	
	rst = 1;
	//Clk = 1;
	#10	
	
	rst = 0;
	
	end
endmodule




