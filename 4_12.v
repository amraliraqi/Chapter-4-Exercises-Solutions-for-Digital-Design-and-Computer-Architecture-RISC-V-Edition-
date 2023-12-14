module ex_12 (
	input [7:0] x,
	output reg [7:0] y
	);

      	always @(*) begin
      		casex (x)
      		8'b1xxx_xxxx: y= 8'b1000_0000;
      		8'b01xx_xxxx: y= 8'b0100_0000;
      		8'b001x_xxxx: y= 8'b0010_0000;
      		8'b0001_xxxx: y= 8'b0001_0000;
      		8'b0000_1xxx: y= 8'b0000_1000;
      		8'b0000_01xx: y= 8'b0000_0100;
      		8'b0000_001x: y= 8'b0000_0010;
      		8'b0000_0001: y= 8'b0000_0001;
      		default :     y= 8'b100_00000;
      	    endcase
      	end    
endmodule      	

