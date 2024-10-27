module ADD(
	input a, 
	input b, 
	input cin,
	output reg sum,
	output reg cout
);

	always@(a or b or cin)
		begin
			sum <= a^b^cin;
			cout <= (a&b) | (a&cin) | (b&cin);
		end
endmodule
