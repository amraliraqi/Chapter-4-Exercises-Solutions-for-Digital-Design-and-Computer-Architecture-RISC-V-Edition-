module ex_13 (
	input [1:0] x,
	output reg [3:0] y);

     always @(*)
     	case(x)
     	0: y=4'b0001;
     	1: y=4'b0010;
     	2: y=4'b0100;
     	3: y=4'b1000;
     	default: y=4'b000;
     	endcase
endmodule