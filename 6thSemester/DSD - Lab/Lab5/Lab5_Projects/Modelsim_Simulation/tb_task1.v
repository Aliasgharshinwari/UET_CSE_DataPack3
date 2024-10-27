module task1_tb;
    reg [3:0] Input;
    wire [6:0] Out;
    task1 uut (
        .Input(Input),
        .Out(Out)
    );

    // Apply test vectors
    initial begin

        // Test case 1
        Input = 4'b0000;
        #10;
        
        // Test case 2
        Input = 4'b0011;
        #10;
    end

endmodule

