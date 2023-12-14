module ex4_6 (
	input [3:0] x,
	output reg [6:0] y
	);

      always @(*) 
      	case(x)
      	      //abc_defg
      	4'h0: y=8'b111_1110;
      	4'h1: y=8'b011_0000;
      	4'h2: y=8'b110_1101;
      	4'h3: y=8'b111_1001;
      	4'h4: y=8'b011_0011;
      	4'h5: y=8'b101_1011;
      	4'h6: y=8'b101_1111;
      	4'h7: y=8'b111_0000;
      	4'h8: y=8'b111_1111;
      	4'h9: y=8'b111_0011;
      	default: y=8'b000_0000;
      	
      endcase 

endmodule      
