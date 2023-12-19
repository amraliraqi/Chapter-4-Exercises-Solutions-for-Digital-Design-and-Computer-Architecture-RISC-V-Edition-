module ex4_33(
	input clk, rst, A, B,
	output reg Q
	);

      parameter S0=2'b00;
      parameter S1=2'b01;
      parameter S2=2'b10;

      reg [1:0] next_state, current_state;

      always @(posedge clk or posedge rst) begin
      	if (rst) 
      		current_state <= S0;
      	else
      		current_state <= next_state;
      end

      always @(*) begin
      	case(current_state)
      		S0: if(A)
      		      next_state = S1;
      		    else 
      		      next_state = S0;
      		S1: if(B)
      		      next_state = S2;       
      		    else 
      		      next_state = S0;

      		S2: if(A&&B)
      		      next_state = S2;
      		    else 
      		      next_state = S0;      
      	endcase
   
      end

      always @(*) begin
      	case(current_state)
      		S0: Q = 1'b0;
 
       		S1: Q = 1'b0;
 
      		S2: if(A&&B)
      		      Q = 1'b1;
      		    else 
      		      Q = 1'b0;      
      	endcase
   
      end
endmodule