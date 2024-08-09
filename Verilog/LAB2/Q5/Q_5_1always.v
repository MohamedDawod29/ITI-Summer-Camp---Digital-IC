module Q_5 (
    input clk,
    input rst,
    input taken,
    output reg mealy_out
);
    localparam zero = 3'b000,
                first = 3'b001,
                second = 3'b010,
                third = 3'b011,
                fourth = 3'b100,
                fifth = 3'b101,
                sixth = 3'b110,
                seventh = 3'b111,
                eight=4'b1000,

 reg [3:0] current_state, next_state;

always @(posedge clk or negedge rst) begin
    if (~rst) begin
        current_state <= zero;
    end else begin
        current_state <= next_state;
    end
end 
always @(*) begin
    case (current_state)
        zero: begin
            if (taken) begin
                next_state = first;
        end
        else
        next_state = zero;
    end
    first: begin

        if (taken) begin
                next_state = first;
        end
        else
        next_state = second;
    end
second: begin

if (taken) begin
                next_state = third;
        end
        else
        next_state = first;
    end

    third: begin

if (taken) begin
                next_state = fourth;
        end
        else
        next_state = zero;
    end
fourth: begin

if (taken) begin
                next_state = first;
        end
        else
        next_state = fifth;
    end
fifth: begin

if (taken) begin
                next_state = sixth;
        end
        else
        next_state = zero;
    end

sixth: begin

if (taken) begin
                next_state = first;
        end
        else
        next_state = seventh;
    end
seventh: begin

if (taken) begin
                next_state =eight ;
        end
        else
        next_state = zero;
    end
    end
    endcase
assign mealy_out = (current_state==eight)1:0;
endmodule
