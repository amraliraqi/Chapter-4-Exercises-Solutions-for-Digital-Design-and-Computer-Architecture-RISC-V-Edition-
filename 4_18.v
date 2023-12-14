module ex4_18 (
	input A, B, C, D,
	output Y
	);

        assign Y = (D&B) | (~D&A) | (C&A) ;

endmodule        
