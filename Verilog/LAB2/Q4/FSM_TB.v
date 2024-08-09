module FSM_TB;


	reg clk;
	reg reset;
	reg taken;
	wire predict;
	
	
	always #5 clk = ~clk;
	
	FSM DUT 
	(
	.clk(clk),
	.reset(reset),
	.taken(taken),
	.predict(predict)
	);
	
	initial 
	begin
		clk = 1'b0;
		reset = 1'b0;
		
		#5
		reset = 1'b1;
		#5
		reset = 1'b0;
		
		#5
		taken = 1'b0;      //goes from state_0 to state_1
		
		#10
		taken = 1'b0;      //goes from state_1 to state_2
		
		#10
		taken = 1'b1;      //goes from state_2 to state_3
		
		#10
		taken = 1'b0;      //goes from state_3 to state_2
		
		#10
		$stop;
	end
	
endmodule
