module conv_b_g 
(	
	input wire [2:0] data_bin,
	output reg [2:0] data_gray
);

	always @(*)
	begin
		case (data_bin)
		3'b000: data_gray = 3'b000;
		3'b001: data_gray = 3'b001;
		3'b010: data_gray = 3'b011;
		3'b011: data_gray = 3'b010;
		3'b100: data_gray = 3'b110;
		3'b101: data_gray = 3'b111;
		3'b110: data_gray = 3'b101;
		3'b111: data_gray = 3'b100;
		default: data_gray = 3'b000;
		endcase
	end
	
endmodule
