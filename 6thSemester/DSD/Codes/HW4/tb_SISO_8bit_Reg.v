module test_SISO_8bit_Reg;
    reg CLK, SI, SHIFT, CLR;
    wire SO;

    // Instantiate the SISO_8bit_Reg module
    SISO_8bit_Reg dut (
        .CLK(CLK),
        .SI(SI),
        .SHIFT(SHIFT),
        .CLR(CLR),
        .SO(SO)
    );

    // Clock generation
    always begin
        #5 CLK = ~CLK;
    end

    // Initialize inputs
    initial begin
        CLK = 0;
        SI = 0;
        SHIFT = 0;
        CLR = 1;

        // Apply test vectors
        #10 CLR = 0; SI = 1; // Set serial input to 1
        #10 SHIFT = 1; // Enable shift mode
        #10 SI = 0; // Set serial input to 0

       // #10 $finish; // End simulation
    end

    // Monitor outputs
    always @(posedge CLK) begin
        $display("Time=%t: SO=%b", $time, SO);
    end
endmodule

