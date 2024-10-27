module EQZ (eqz, data);
	input [7:0] data;
    output eqz;
    assign eqz = (data == 0);

endmodule
