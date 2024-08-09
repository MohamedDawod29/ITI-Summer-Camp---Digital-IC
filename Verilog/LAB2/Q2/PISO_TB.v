module PISO_TB;

	reg clk,reset_n;
	reg [3:0] P_DATA;
	wire  ser_data;
	
	
	always #5 clk = ~clk;
	
	PISO DUT
	(
	.clk(clk),
	.reset_n(reset_n),
	.P_DATA(P_DATA),
	.ser_data(ser_data)
	);
	
	initial 
	begin
		clk = 1'b0;
		reset_n = 1'b1;
		P_DATA = 4'b1011;
		
		#5
		reset_n = 1'b0;
		#5
		reset_n = 1'b1;
		
		#35
		$stop;
	end
	
endmodule
