module mux4x1 (
	input d0,d1,d2,d3,
	input [1:0] s,
	output reg y );

        always @(*) 
        	case(s)
        		0: y=d0; 
        		1: y=d1;
        		2: y=d2;
        		3: y=d3;
        		default: y=d0;
        	
        	endcase
        
endmodule

module ex4_10 (
	input a, b, c,
	output y
	);

      mux4x1 DU (~c,c,1'b1,1'b0,{a,b},y);
endmodule      