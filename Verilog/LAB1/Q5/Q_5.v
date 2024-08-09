module Q_5
(
	output wire [7:0] result
);
	localparam seq1 = 4'b1011,seq2 = 4'b0011,seq3 = 4'b1010;

	wire [1:0] and_result;
	
	assign and_result = seq1[3:2] & seq2[3:2];   
	
	wire [5:0] conc_result; 
	
	assign conc_result = {seq3,and_result};

	assign result = {{2{conc_result[5]}},conc_result};

endmodule

	
