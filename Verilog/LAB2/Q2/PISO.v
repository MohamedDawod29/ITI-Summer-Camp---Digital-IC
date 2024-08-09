module PISO
(
	input wire clk,reset_n,
	input wire [3:0] P_DATA,
	output  ser_data
);



	reg[3:0] Data;
	
	
	//shift the P_input data
	always @(posedge clk, negedge reset_n)
	begin
		if (~reset_n)
			Data <= P_DATA;
		
		else 
			Data <= Data >> 1;
	end
	
	assign ser_data = Data[0];
	
endmodule
