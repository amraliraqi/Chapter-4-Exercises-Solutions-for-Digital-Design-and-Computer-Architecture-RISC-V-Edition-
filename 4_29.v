module ex4_29 (
	input clk,TA, TB, rst,
	output [1:0] LA, LB ); // 00 for green, 01 for yellow , 10 for red.

       parameter S0 = 2'b00; 
       parameter S1 = 2'b01;
       parameter S2 = 2'b10;
       parameter S3 = 2'b11;
       reg [1:0] current_state, next_state;

       always @(posedge clk or posedge rst) begin
       	if (rst)
       		current_state <= S0;
    
       	else 
       		current_state <= next_state;
       end

       always @(*) begin
       	case(current_state)
       	S0: begin
       		  if(TA)
       		     next_state=S0;
       		  else
       		     next_state=S1;
       	    end
       	S1: next_state=S2;
       	S2: begin
       		  if(TB)
       		     next_state=S2;
       		  else
       		     next_state=S3;
       	    end    
       	S3: next_state=S0;    
       	endcase

       end

       assign LA = current_state == S0 ? 2'b00 :
                   current_state == S1 ? 2'b01 :
                   current_state == S2 |current_state == S3 ? 2'b10: 2'bxx ;
       
       assign LB = current_state == S0 | current_state == S1 ? 2'b10 :
                   current_state == S2 ? 2'b00:
                   current_state == S3 ? 2'b01:2'bxx ;
       
endmodule       
       
