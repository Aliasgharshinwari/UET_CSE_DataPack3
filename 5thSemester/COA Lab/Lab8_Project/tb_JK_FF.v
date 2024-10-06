module tb_JK_FF();
    reg J, K, Clk;
    reg Q, Q_bar;

    // Instantiate the JKFlipFlop
    JKFlipFlop JKFF (Q, Q_bar, Clk, J, K);

    initial begin
        // Initialize inputs
        J = 0; K = 0; Clk = 0;
		Q = 0; Q_bar = 1;
        // Apply input values
        #10 J = 0; K = 0; #10;  // No change
        #10 J = 1; K = 0; #10;  // Set
        #10 J = 0; K = 1; #10;  // Reset
        #10 J = 1; K = 1; #10;  // Toggle
        #10 J = 0; K = 0; #10;  // No change

        // End the simulation
        #10 $finish;
    end

    // Clock generation
    always #5 Clk = ~Clk;

    // Monitor the values
    initial begin
        $monitor("At time %t, J = %b, K = %b, Q = %b, Q_bar = %b", $time, J, K, Q, Q_bar);
    end
endmodule

