module SIPO_TB;

	reg clk,reset_n;
	reg ser_data;
	wire [3:0] P_DATA;
	
	
	always #5 clk = ~clk;
	
	SIPO DUT
	(
	.clk(clk),
	.reset_n(reset_n),
	.ser_data(ser_data),
	.P_DATA(P_DATA)
	);
	
	
	initial 
	begin
		clk = 1'b0;
		reset_n = 1'b1;
		
		#5
		reset_n = 1'b0;
		#5
		reset_n = 1'b1;
		
		#5
		ser_data = 1'b1;
		#10
		ser_data = 1'b0;
		#10
		ser_data = 1'b1;
		#10
		ser_data = 1'b1;
		
		#10
		$stop;
	end
	
endmodule

		