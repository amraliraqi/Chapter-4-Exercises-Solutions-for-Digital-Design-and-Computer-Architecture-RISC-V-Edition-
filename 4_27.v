module ex4_27 (
	input clk, J, K, rst,
	output reg Q
	);

      always @(posedge clk or posedge rst) begin
            	if (rst)
            		Q <= 1'b0;
            
            	else if ((J==1'b0) && (K==1'b0)) 
            	    Q <= Q;

            	else if ((J==1'b1)) 
            	    Q <= 1'b1;

            	else if ((K==1'b1)) 
            	    Q <= 1'b0;

            	else if ((J==1'b1) && (K==1'b1)) 
            	    Q <= ~Q; 

            	else  
            	    Q <= Q;             
          
            end      
endmodule            