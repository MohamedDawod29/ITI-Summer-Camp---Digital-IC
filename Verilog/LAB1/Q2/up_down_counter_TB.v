module up_down_counter_TB();

//define signals and parameters

	localparam width_TB = 8;
	
	reg clock_TB,mode_TB,reset_TB;
	wire [width_TB-1:0] q_TB;
	
//clock generator

	always #5 clock_TB = ~clock_TB;         //period 10
	
//instantiation

	up_down_counter #(.width(width_TB)) DUT
	(
	.clock(clock_TB),
	.mode(mode_TB),
	.reset(reset_TB),
	.q(q_TB)
	);
	
	
//test cases

	initial 
	begin
		
		//initial values
		clock_TB = 1'b0;
		reset_TB = 1'b0;
		 
		//reset the counter 
		reset_TB = 1'b1;
		#5
		reset_TB = 1'b0;
		#5
		
		//counting up
		
		#10
		mode_TB = 1'b1;        
		
		//counting down
		
		#160
		mode_TB = 1'b0;        
		
		#50
		
		$stop;
	end
	
endmodule
	
	