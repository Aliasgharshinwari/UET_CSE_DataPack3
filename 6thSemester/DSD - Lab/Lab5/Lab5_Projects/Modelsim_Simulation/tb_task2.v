module task2_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [6:0] Out;
    
    task2 uut (
        .a(a),
        .b(b),
        .Out(Out)
    );
    initial begin
        // Test case 1
        a = 4'b0000;
        b = 4'b0011;
        #10;
        
        // Test case 2
        a = 4'b0101;
        b = 4'b1001;
        #10;
    end
endmodule
