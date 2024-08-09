module memory_TB #(parameter WIDTH = 8, DEPTH = 8);

// define signals of TB

	reg clk,reset_n;
	reg en_w,en_r;
	reg [WIDTH-1:0] data_in;
	reg [2:0] address;
	wire Full_Flag,Empty_Flag;
	wire [WIDTH-1:0] data_out;

	reg [WIDTH-1:0] memory [0:DEPTH-1];	
	
	
//clock generator 

	always #5 clk = ~clk;
	
	
//instatiation
	
	memory_buffer #(.WIDTH(WIDTH), .DEPTH(DEPTH)) DUT
	(
	.clk(clk),
	.reset_n(reset_n),
	.en_w(en_w),
	.en_r(en_r),
	.data_in(data_in),
	.address(address),
	.Full_Flag(Full_Flag),
	.Empty_Flag(Empty_Flag),
	.data_out(data_out)
	);
	
	
//test cases

	initial
	begin
	
		//intialization
		clk = 1'b0;
		reset_n = 1'b1;
		en_w = 1'b0;
		en_r = 1'b0;
		
		//reset
		#5 reset_n = 1'b0;
		#5 reset_n = 1'b1;
		
		data_in = 8'h24;
		
		#5 
		en_w = 1'b1;
		address = 3'b0;
		
		#10
		en_w = 1'b0;
		en_r = 1'b1;
		address = 3'b0;
		
		#10
		data_in = 8'h25;
		en_w = 1'b1;
		en_r = 1'b0;
		address = 3'b1;
		
		#10
		data_in = 8'h26;
		address = 3'd2;
		
		
		#10
		data_in = 8'h27;
		address = 3'd3;
		
		
		#10
		data_in = 8'h28;
		address = 3'd4;
		
		
		#10
		data_in = 8'h29;
		address = 3'd5;
		
		
		#10
		data_in = 8'h30;
		address = 3'd6;
		
		
		#10
		data_in = 8'h31;
		address = 3'd7;
		
		#20
		$stop;
	end

endmodule
	
