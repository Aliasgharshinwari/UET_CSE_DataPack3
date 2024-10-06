module task2(I, Sel, Out);
	input [3:0] I;
	input [1:0] Sel;
	wire O1, O2;
	output Out;
	
	mux2x1 mux1({I[0],I[1]}, Sel[0], O1);
	mux2x1 mux2({I[2],I[3]}, Sel[0], O2);
	mux2x1 mux3({O1,O2}, Sel[1], Out);
	
endmodule

