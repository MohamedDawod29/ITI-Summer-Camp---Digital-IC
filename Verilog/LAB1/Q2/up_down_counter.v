module up_down_counter #(parameter width = 4) 
(
	input wire clock,mode,reset,
	output reg [width-1:0] q
);

	always @(posedge clock, posedge reset)
	begin
		if (reset)
			q <= 0;
		else if (mode)             // if mode signal = 1 count up
		begin
			if (q  == {width{1'b1}})
			q <= 0;
			else
			q <= q + 1;
		end
		else if (!mode)                     // if mode signal = 0 count down
		begin
			if (q == 0)
			q <= {width{1'b1}};
			else
			q <= q - 1;
		end
	end
	
endmodule

	