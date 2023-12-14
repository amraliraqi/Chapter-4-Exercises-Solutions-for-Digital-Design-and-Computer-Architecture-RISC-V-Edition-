module ex4_19 (
	input [3:0] X,
	output P, D);
       wire a,b,c,d;
       assign a = X[3];
       assign b = X[2];
       assign c = X[1];
       assign d = X[0];

       assign P = (~a&~b&c) | (~a&b&d) | (b&~c&d) | (~b&c&d);
       assign D = (~a&~b&~c&~d) | (~a&~b&c&d) | (a&b&~c&~d) | (~a&b&c&~d) | (a&~b&~c&d) | (a&b&c&d) ;
endmodule