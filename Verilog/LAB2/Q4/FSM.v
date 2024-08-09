module FSM 
(
	input wire clk,
	input wire reset,
	input wire taken,
	output reg predict
);

   localparam [1:0] state_0 = 0,state_1 = 1,state_2 = 2, state_3 = 3;
	reg [1:0] next_state,current_state;

	always @(posedge clk,posedge reset)
	begin
		if (reset)
			current_state <= state_0;
		else
			current_state <= next_state;
	end
	
	always @(*)
	begin
		case (current_state)
		state_0:
		begin
			if(~taken)
			begin
				next_state = state_1;
				predict = 1'b1;
			end
			else
			begin
				next_state = state_0;
				predict = 1'b1;
			end
		end
		state_1:
		begin
			if(~taken)
			begin
				next_state = state_2;
				predict = 1'b0;
			end
			else
			begin
				next_state = state_0;
				predict = 1'b1;
			end
		end
		state_2:
		begin
			if(~taken)
			begin
				next_state = state_2;
				predict = 1'b0;
			end
			else
			begin
				next_state = state_3;
				predict = 1'b1;
			end
		end
		state_3:
		begin
			if(~taken)
			begin
				next_state = state_2;
				predict = 1'b0;
			end
			else
			begin
				next_state = state_0;
				predict = 1'b1;
			end
		end
		default:
		begin
			next_state = state_0;
			predict = 1'b1;
		end
		endcase
	end
	
endmodule
