module ex4_30_Mode (
	input clk, rst, P, R,
	output M);

       parameter S0 = 1'b0;
       parameter S1 = 1'b1;
       reg next_state, current_state;

       always @(posedge clk or posedge rst) begin
       	if (rst) 
       		current_state <= S0;
       		
       	else
       		current_state <= next_state;
       end

       always @(*) begin
       	case(current_state)
       		S0: if (P) 
       			    next_state=S1;
       			else 
       				next_state=S0;
       		S1: if (R) 
       			    next_state=S0;
       			else 
       				next_state=S1;       			
        endcase
       		
     
       end

       assign M = current_state==S0 ? 1'b0 : 1'b1;

endmodule       


module ex4_30_Lights (
	input clk, rst, M, TA, TB,
	output reg [1:0] LA, LB);  // 00 for green, 01 for yellow , 10 for red.

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
         		S0: if (TA) 
       			    next_state=S0;
       			else 
       				next_state=S1;

       		    S1: next_state=S2;

         		S2: if (TB|M) 
       			    next_state=S2;
       			else 
       				next_state=S3;

       		    S3: next_state=S0;
         	endcase
         	
         end

         always @(*) begin
         	case(current_state)
         		S0: {LA,LB}=4'b00_10;
         		S1: {LA,LB}=4'b01_10;
         		S2: {LA,LB}=4'b10_00;
         		S3: {LA,LB}=4'b10_01;
         		
         	endcase
         end
endmodule         


module ex4_30_controller (
	input clk, rst, TA, TB, P, R,
	output  [1:0] LA, LB); 

           wire M;
           ex4_30_Mode ex4_30_Mode(clk, rst, P, R, M);
           ex4_30_Lights ex4_30_Lights(clk, rst, M, TA, TB, LA, LB);
endmodule            