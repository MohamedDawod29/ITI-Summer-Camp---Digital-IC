module decoder_TB;

//signal defenition

	reg enable;
	reg [2:0] s;
	wire [7:0] D;

//instantiation

	decoder DUT
	(
	.enable(enable),
	.s(s),
	.D(D)
	);
	
//test cases

	initial
	begin
		enable = 1'b0;
		#10
		enable = 1'b1; s = 3'b000;   // D = 128
		#10 s = 3'b110;           // D = 2
		
		#20
		$stop;
	end
	
endmodule
