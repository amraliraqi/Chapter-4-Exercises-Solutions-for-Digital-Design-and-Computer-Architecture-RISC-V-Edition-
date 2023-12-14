module ex4_22 (
	input [2:0] K,
   output reg[2:0] M
	);

      always @(*) 
        case(K)
        1: M=7'b000_001;
        2: M=7'b000_011;
        3: M=7'b000_111;
        4: M=7'b001_111;
        5: M=7'b011_111;
        6: M=7'b011_111;
        7: M=7'b111_111;
        default: M=7'b000_000;
        endcase

endmodule        


      
