module FullAdder
(
	input wire A,B,
	input wire c_in,
	output wire C_out,S
);

	wire c1,c2;
	wire s1;
	
	HalfAdder ADDER_1
	(
	.A(A),
	.B(B),
	.SUM(s1),
	.CARRY(c1)
	);
	
	HalfAdder ADDER_2
	(
	.A(s1),
	.B(c_in),
	.SUM(S),
	.CARRY(c2)
	);
	
	assign C_out = c1 | c2;
	
endmodule
