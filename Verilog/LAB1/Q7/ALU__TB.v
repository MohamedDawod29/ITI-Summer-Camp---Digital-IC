module ALU_TB;

//define signals of Tb

	reg clk;
	reg [2:0] A,B;
	wire [5:0] Result;
	reg [3:0] Opcode;

//clock generator

	always #5 clk = ~clk;

//instantiation

	ALU_ DUT
	(
	.clk(clk),
	.A(A),
	.B(B),
	.Result(Result),
	.Opcode(Opcode)
	);


//test cases

//intialize data
	initial 
	begin
	 
		clk = 1'b0;
		A = 3'b0;
		B = 3'b0;
		Opcode = 4'b0;

		#5
		A = 3'b010;            // A = 2
		B = 3'b001;            // B = 1
		Opcode = 4'b0001;           //Addition
		#10
		Opcode = 4'b0010;        //Subtraction
		#10
		Opcode = 4'b0011;          //Multiplication
		#10
		Opcode = 4'b0100;           //Anding
		#10
		Opcode = 4'b0101;           //Oring
		#10
		Opcode = 4'b0110;          //Xoring
		#10
		Opcode = 4'b0111;        //NAND
		#10
		Opcode = 4'b1000;        //NOR
		#10
		Opcode = 4'b1001;         //XNOR
		#10
		Opcode = 4'b1010;           //shift left
		#10
		Opcode = 4'b1011;           //shift right
		#10
		Opcode = 4'b1100;            //concatenation
		#40
		$stop;

	end

endmodule
