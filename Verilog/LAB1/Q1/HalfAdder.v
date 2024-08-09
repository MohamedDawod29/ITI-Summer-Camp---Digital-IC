module HalfAdder 
(
	input wire A,B,
	output wire SUM,CARRY
);

	assign SUM = A ^ B;
	assign CARRY = A & B;
	
endmodule
