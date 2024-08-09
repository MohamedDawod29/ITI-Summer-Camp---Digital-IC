module memory_buffer #(parameter WIDTH = 8, DEPTH = 8)
(
	input wire clk,reset_n,
	input wire en_w,en_r,
	input wire [WIDTH-1:0] data_in,
	input wire [2:0] address,
	output reg Full_Flag,Empty_Flag,
	output reg [WIDTH-1:0] data_out
);

	reg [7:0] count; 
	reg [WIDTH-1:0] memory [0:DEPTH-1];
	integer i;
	
	always @(posedge clk, negedge reset_n)
	begin
		if (!reset_n)
		begin
			Empty_Flag <= 1'b1;
			count <= 0;
			for (i = 0; i<DEPTH ; i=i+1)
				memory [i] <= 0;
		end
		
		else if (en_w && !en_r)
		begin
			Empty_Flag <= 1'b0;
			memory [address] <= data_in;
			count [address] <= 1'b1;
			Full_Flag <= (count == 8'b1111111) ? 1'b1:1'b0;
		end
		
		else if (en_r && !en_w)
		begin
			data_out <= memory [address];
		end
		
		else
			data_out <= 0;
	end

endmodule
	