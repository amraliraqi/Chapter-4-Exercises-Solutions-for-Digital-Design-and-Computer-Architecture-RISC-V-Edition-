module ex4_26 (
	input S, R,
	output reg Q, Q_Bar
	);
       wire [1:0] in;
       assign in = {S,R};
       always @(*) 
       	case(in)
       	2'b00: Q <= Q;
       	2'b01: Q <= 1'b0;
       	2'b10: Q <= 1'b1;
       	2'b11: Q <= 1'b0;
       endcase
       assign Q_Bar = ~Q;

endmodule       