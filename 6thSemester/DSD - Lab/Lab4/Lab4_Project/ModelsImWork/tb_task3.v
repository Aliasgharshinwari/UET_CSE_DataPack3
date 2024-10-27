module task3_tb;
	reg [1:0]Sel;
	reg [3:0] In;
	wire Out;


	task2 dut (.Sel(Sel), .In(In), .Out(Out));

	initial begin

		Sel = 2'b01; // Set Sel to 1
		In = 4'b1010; // Set In to 2'b10

		// Apply stimulus
		#10;
		Sel = 2'b11; // Set Sel to 0
		In = 4'b1101; // Set In to 2'b01

		$finish;
	end

endmodule


