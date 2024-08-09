module conv_b_g_TB;

	reg[2:0] data_bin;
	wire [2:0] data_gray;
	
	//instantiation
	conv_b_g DUT
	(
	.data_bin(data_bin),
	.data_gray(data_gray)
	);
	
	//test cases values
	initial 
	begin
	
	data_bin = 3'b000;
	#10
	data_bin = 3'b001;
	#10
	data_bin = 3'b010;
	#10
	data_bin = 3'b011;
	#10
	data_bin = 3'b100;
	#10
	data_bin = 3'b101;
	#10
	data_bin = 3'b110;
	#10
	data_bin = 3'b111;
	#10
	
	$stop;
	
	end

endmodule
