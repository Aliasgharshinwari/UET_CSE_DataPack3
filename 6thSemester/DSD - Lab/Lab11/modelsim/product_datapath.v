module product_datapath (eqz, LdA, LdB, Ldp, clrp, decB, data_in, clk);
    input LdA, LdB, Ldp, clrp, decB, clk;
    input [7:0] data_in;
    output eqz;
  
    wire [7:0] X, Y, Z, Bout, Bus;                                     
    PIPO1 A (X, data_in, LdA, clk);
    PIPO2 P (Y, Z, Ldp, clrp, clk);
    CNTR B (Bout, Bus, LdB, decB, clk);
                                                                     
    ADD AD (Z, X, Y);
    EQZ COMP (eqz, Bout);
	
	assign Bus = data_in;

endmodule
