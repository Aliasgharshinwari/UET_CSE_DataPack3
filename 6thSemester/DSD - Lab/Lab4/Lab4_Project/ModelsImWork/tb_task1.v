module task1_tb;
	reg [7:0] In;
	wire [7:0] Out;

	task1 dut (	.In(In), .Out(Out));

	initial begin
	
		// Initialize inputs
		In = 8'b10101010;

		// Apply stimulus
		#10;
		In = 8'b11001100;

		$finish;
	end

endmodule

