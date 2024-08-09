module SIPO
(
	input wire clk,reset_n,
	input wire ser_data,
	output [3:0] P_DATA
);

	reg [3:0] DATA;
	
	always @(posedge clk, negedge reset_n)
	begin
		if (!reset_n)
			DATA <= 0;
			
		else 
		begin
			DATA <= DATA << 1;
			DATA[0] <= ser_data;
		end
	end
	
	assign P_DATA = DATA;
	
endmodule
