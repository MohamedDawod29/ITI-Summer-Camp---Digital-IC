module decoder 
(
	input wire enable,
	input wire [2:0] s,
	output reg [7:0] D 
);

	always @ (*)
	begin
		if (enable)
		begin
			case (s)
			3'b000: D = 8'd128; 
			3'b001: D = 8'd64;
			3'b010: D = 8'd32;
			3'b011: D = 8'd16;
			3'b100: D = 8'd8;
			3'b101: D = 8'd4;
			3'b110: D = 8'd2;
			3'b111: D = 8'd1;
			endcase
		end
		
		else
			D = 8'd0;
	end
	
endmodule
	