module ex_17 (
	input A,B,C,D,E,F,G,
	output Y);
  
         wire K,L,M,N,S;
         assign K = ~(A&B&C);
         assign L = ~(K&D);
         assign M = F&G;
         assign N = ~(M|E);
         assign S = ~(L|N);
         assign Y = ~(S&S);

endmodule         