module ex_16 (
	input A,B,C,D,E,
	output Y);

       wire K,L,M;
       assign K = ~(A&B) ;
       assign L = ~(C&D) ;
       assign M = ~(K&L) ;
       assign Y = ~(M&E) ;

endmodule       