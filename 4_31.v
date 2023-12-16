module ex4_31 (
	input clk, A, B, C, D,
	output reg X, Y);
            
         wire n1, X_int, Y_int ;
         reg A_int, B_int, C_int, D_int;

         always @(posedge clk) begin
         	A_int <= A;
         	B_int <= B;
         	C_int <= C;
         	D_int <= D;
         	X <= X_int;
         	Y <= Y_int;
         end

         assign n1 = A_int & B_int ;
         assign X_int = n1 | C_int ;
         assign Y_int = ~(X_int | D_int )  ;

endmodule