module ex4_40_11(
	input clk, rst, A,
	output reg Y
	);

        parameter S0=2'b00;
        parameter S1=2'b01;
        parameter S2=2'b10;

        reg [1:0] next_state, current_state;

        always @(posedge clk or posedge rst) begin
        	if (rst)
        		current_state<= S0;
        	else 
        		current_state<= next_state;
        end

        always @(*) begin
        	case(current_state)
        		S0: if(A)
        		     next_state=S1;
        		    else 
        		     next_state=S0;

        		S1:if(A)
        		     next_state=S2;
        		    else 
        		     next_state=S0;
        
        		S2: next_state=S2;
        		
        	endcase
        end


        always @(*) begin
        	case(current_state)
        		S0: Y=1'b0;
        		S1: Y=1'b0;       
        		S2: Y=1'b1;
        		
        	endcase
        end
endmodule



module ex4_40_111(
	input clk, rst, A,
	output reg X
	);

        parameter S0=2'b00;
        parameter S1=2'b01;
        parameter S2=2'b10;
        parameter S3=2'b11;

        reg [1:0] next_state, current_state;

        always @(posedge clk or posedge rst) begin
        	if (rst)
        		current_state<= S0;
        	else 
        		current_state<= next_state;
        end

        always @(*) begin
        	case(current_state)
        		S0: if(A)
        		     next_state=S1;
        		    else 
        		     next_state=S0;

        		S1:if(A)
        		     next_state=S2;
        		    else 
        		     next_state=S1;
        
        		S2:if(A)
        		     next_state=S3;
        		    else 
        		     next_state=S2;

        		S3: next_state=S3;     
        		
        	endcase
        end


        always @(*) begin
        	case(current_state)
        		S0: X=1'b0;
        		S1: X=1'b0;       
        		S2: X=1'b0;
        		S3: X=1'b1;
        		
        	endcase
        end
endmodule        