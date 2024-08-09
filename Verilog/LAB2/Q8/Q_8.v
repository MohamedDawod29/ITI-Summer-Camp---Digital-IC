module clk_divide_by_6_counter (
    input wire clk,   // Input clock
    input wire rst,    // Reset signal
    output reg clk_out   // Output clock (divided by 3)
);

 // 2-bit counter to count from 0 to 2

reg [1:0] count;  // 2-bit counter to count from 0 to 2
reg q_1;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 2'b00;
        clk_out <= 0;
        q_1 <= 0;
    end else begin
        if (count == 2'b10) begin
            count <= 2'b00;
            q_1 <= ~q_1;
        end else begin
            count <= count + 1;
        end
    end
end

always @(posedge q_1 or posedge rst) begin
    if (rst) begin
        clk_out <= 0;
    end else begin
        clk_out <= ~clk_out;
    end
end
endmodule
