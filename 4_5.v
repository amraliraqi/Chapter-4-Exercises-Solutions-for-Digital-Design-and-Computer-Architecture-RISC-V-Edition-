module ex4_5 (
	input a, b, c,
	output y
	);
        assign y = ((a==1'b0 & b==1'b0) | (a==1'b0 & c==1'b0) | (c==1'b0 & b==1'b0));

endmodule        
