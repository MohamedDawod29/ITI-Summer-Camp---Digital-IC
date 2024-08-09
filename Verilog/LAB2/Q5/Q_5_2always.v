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
                mealy_out=0;
        end
        else
        next_state = zero;
                        mealy_out=0;

    end
    first: begin

        if (taken) begin
                next_state = first;
                                mealy_out=0;

        end
        else
        next_state = second;
                        mealy_out=0;

    end
second: begin

if (taken) begin
                next_state = third;
                mealy_out=0;
        end
        else
        next_state = first;
        mealy_out=0;
    end

    third: begin

if (taken) begin
                next_state = fourth;
                                mealy_out=0;

        end
        else
        next_state = zero;
        mealy_out=0;
    end
fourth: begin

if (taken) begin
                next_state = first;
                mealy_out=0;
        end
        else
        next_state = fifth;
        mealy_out=0;
    end
fifth: begin

if (taken) begin
                next_state = sixth;
                mealy_out=0;
        end
        else
        next_state = zero;
        mealy_out=0;
    end

sixth: begin

if (taken) begin
                next_state = first;
                    mealy_out=0;
        end
        else
        next_state = seventh;
            mealy_out=0;
    end
seventh: begin

if (taken) begin
                next_state =eight ;
                mealy_out=1;
        end
        else
        next_state = zero;
        mealy_out=0;
    end
    end
    endcase
assign mealy_out = (current_state==eight)1:0;
endmodule
