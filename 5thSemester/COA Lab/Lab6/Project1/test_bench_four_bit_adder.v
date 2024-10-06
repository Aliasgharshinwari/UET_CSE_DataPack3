module tb_four_bit_adder();
	reg [3:0] in1, in2;
	wire [3:0] S;
	reg Cin;
	wire Cout;

	four_bit_adder my_four_bit_adder(in1, in2,Cin, S, Cout);


initial	begin
	in1 = 4'hA;
	in2 = 4'hB;
	Cin = 0;	
	#10;

	in1 = 4'hA;
	in2 = 4'hB;
	Cin = 1;	
	#10;

	in1 = 4'hC;
	in2 = 4'hD;
	Cin = 0;	
	#10;

	in1 = 4'hA;
	in2 = 4'hC;
	Cin = 0;	
	#10;
	end

endmodule