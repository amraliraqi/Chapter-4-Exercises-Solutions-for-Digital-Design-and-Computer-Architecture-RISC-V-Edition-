module ex4_20 (
	input [7:0] A,
	output reg[2:0] Y,
	output reg NONE);

         always @(*)
         casex(A)
         8'b1xxx_xxxx: begin
         	Y=7; NONE=0; end
         8'b01xx_xxxx: begin
         	Y=6; NONE=0;end
         8'b001x_xxxx: begin
         	Y=5; NONE=0;end
         8'b0001_xxxx: begin
         	Y=4; NONE=0;end	
         8'b0000_1xxx: begin
         	Y=3; NONE=0;end
         8'b0000_01xx: begin
         	Y=2; NONE=0;end
         8'b0000_001x: begin
         	Y=1; NONE=0;end
         8'b0000_0001: begin
         	Y=0; NONE=0;end
         8'b0000_0000: begin
         	Y=0; NONE=1;end
         default: begin
            Y=0; NONE=1;end
         	
         endcase						
         	
endmodule