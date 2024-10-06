module tb_four_bit_counter_behaviour();
	
	reg rst;
	reg Clk;
	
	wire [3:0]out; 
	
	four_bit_counter_behaviour my_four_bit_counter_behaviour(.rst(rst), .Clk(Clk), .out(out));

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



