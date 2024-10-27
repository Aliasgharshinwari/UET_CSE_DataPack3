module rc8 (
    input wire clk, // Clock input
    input wire rst, // Reset input
    output wire [7:0] out // 8-bit output
);

    reg [7:0] counter; // 8-bit counter register

    always @(posedge clk or posedge rst) begin
        
		if (rst) begin
            counter <= 8'b00000001; // Reset the counter to 0
        end 
		
		else begin
            counter <= {counter[6:0], counter[7]}; // Shift the counter left
        end
    end
    assign out = counter; // Output the counter value
endmodule


