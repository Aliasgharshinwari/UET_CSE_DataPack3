module task2( Sel, In, Out);

	input Sel;
	input [1:0]In;
	output Out;
	
	assign Out = Sel ? In[0] : In[1];
	
endmodule

