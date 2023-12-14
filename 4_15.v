module ex_15_0 (
	input A, B, C,
	output Y
	); 

       assign Y = (A & C) | (~A & ~B & C) ;
endmodule

module ex_15_1 (
	input A, B, C,
	output Y
	); 

       assign Y = (~A & ~B) | (~A & B & ~C) + ~(A | ~C) ;
endmodule


module ex_15_2 (
	input A, B, C, D,
	output Y
	); 

       assign Y = (~A & ~B & ~C & ~D) | (A & ~B & ~C) | (A & ~B & C & ~D) | (A & B  & D) | (~A & ~B & C & ~D) | (B & ~C  & D) | ~A;
endmodule