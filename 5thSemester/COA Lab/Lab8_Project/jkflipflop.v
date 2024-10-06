module jkflipflop(J,K,CLK,Q,Q_BAR);
    input J,K,CLK;
    output Q,Q_BAR;
    reg Q,Q_BAR;
    nand n1(JCLK,J,Q_BAR,CLK);
    nand n2(KCLK,K,Q,CLK);
    assign Q=~(JCLK&Q_BAR);
    assign Q_BAR=~(KCLK&Q);
endmodule;