module P2(Z, A, B, C, D);
	output Z;
	input A, B, C, D;
	
	
	wire z1, z2, z3, cbar;
	
	and a1(z1, A, B);
	
	not n1(c_bar, C);
	or o1(z2,z1,cbar);
	and a2(z3, z2, D);
	not n2(Z,z3);
	
endmodule
