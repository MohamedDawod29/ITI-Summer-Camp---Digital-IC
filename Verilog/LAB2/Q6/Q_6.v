module clk_Divider (
    input clk,
    input rst,
    output Divide_2,
    output Divide_4,
    output Divide_8,
    output Divide_16
);

reg q_1, q_2, q_3, q_4;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        q_1 <= 0;
    end else begin
        q_1 <= !q_1;
    end
end

always @(posedge q_1 or negedge rst) begin
    if (!rst) begin
        q_2 <= 0;
    end else begin
        q_2 <= !q_2;
    end
end

always @(posedge q_2 or negedge rst) begin
    if (!rst) begin
        q_3 <= 0;
    end else begin
        q_3 <= !q_3;
    end
end

always @(posedge q_3 or negedge rst) begin
    if (!rst) begin
        q_4 <= 0;
    end else begin
        q_4 <= !q_4;
    end
end

assign Divide_2 = q_1;
assign Divide_4 = q_2;
assign Divide_8 = q_3;
assign Divide_16 = q_4;

endmodule
