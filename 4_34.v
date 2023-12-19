module ex4_34 (
	input clk, rst, TA, TB,
	output reg [1:0] LA, LB); // 00 for green, 01 for yellow, 10 for red.

       parameter S0 = 3'b000;
       parameter S1 = 3'b001;
       parameter S2 = 3'b010;
       parameter S3 = 3'b011;
       parameter S4 = 3'b100;
       parameter S5 = 3'b101;

       reg [2:0] next_state, current_state;

       always @(posedge clk or posedge rst) begin
       	if (rst)
       		current_state <= S0;
       		
       	else 
       		current_state <= next_state;
       end

       always @ (*) begin
       	case(current_state)
       		S0: if(TA)
       		       next_state = S0;
       		    else 
       		       next_state = S1;  
       		S1: next_state = S2;
       		S2: next_state = S3;
       		S3: if(TB)
       		       next_state = S3;
       		    else 
       		       next_state = S4;
       		S4: next_state = S5;
       		S5: next_state = S0;       
       	endcase
       end

       always @ (*) begin
       	case(current_state)
       		S0: {LA,LB}=4'b00_10;  
       		S1: {LA,LB}=4'b01_10;
       		S2: {LA,LB}=4'b10_10;
       		S3: {LA,LB}=4'b10_00;
       		S4: {LA,LB}=4'b10_01;
       		S5: {LA,LB}=4'b10_10;      
       	endcase
       end
 endmodule
 