module task2_tb;
	reg Sel;
	reg [1:0] In;
	wire Out;


	task2 dut (.Sel(Sel), .In(In), .Out(Out));

	initial begin

		Sel = 1; // Set Sel to 1
		In = 2'b10; // Set In to 2'b10

		// Apply stimulus
		#10;
		Sel = 0; // Set Sel to 0
		In = 2'b01; // Set In to 2'b01

		$finish;
	end

endmodule

