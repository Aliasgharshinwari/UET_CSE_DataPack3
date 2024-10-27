module tb_PEER;
    reg CLK, MOVE, RESET;
    wire [2:0]STATE;

    // Instantiate the PEER module
    PEER dut (
        .CLK(CLK),
        .MOVE(MOVE),
        .RESET(RESET),
        .STATE(STATE)
    );

    // Clock generation
    always begin
        #5 CLK = ~CLK;
    end

    // Initialize inputs
    initial begin
        CLK = 0;
        MOVE = 0;
        RESET = 0;

        // Apply test vectors
        #10 RESET = 1; // Assert reset
        #10 RESET = 0; // Release reset
        #10 MOVE = 1; // Set MOVE
        // Add more test cases as needed

    end

    // Monitor outputs
    always @(posedge CLK) begin
        $display("Time=%t: STATE=%b", $time, STATE);
    end
endmodule

