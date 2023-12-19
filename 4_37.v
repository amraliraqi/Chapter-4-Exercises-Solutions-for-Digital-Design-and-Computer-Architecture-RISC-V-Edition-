module ex4_37(
	input clk, rst,
	output reg [2:0] G
	);

      parameter S0 = 3'b000;
      parameter S1 = 3'b001;
      parameter S2 = 3'b011;
      parameter S3 = 3'b010;
      parameter S4 = 3'b110;
      parameter S5 = 3'b111;
      parameter S6 = 3'b101;
      parameter S7 = 3'b100;

      reg [2:0] next_state, current_state;

      always @(posedge clk or posedge rst) begin
      	if (rst)
      		current_state <= S0;
      		
      	else 
      		current_state <= next_state;
      end

      always @(*) begin
      	case(current_state)
      		S0: next_state=S1;
      		S1: next_state=S2;
      		S2: next_state=S3;
      		S3: next_state=S4;
      		S4: next_state=S5;
      		S5: next_state=S6;
      		S6: next_state=S7;
      		S7: next_state=S0;
      		
      	endcase
      	
      end

      always @(*) begin
      	case(current_state)
      		S0: G=3'b000;
      		S1: G=3'b001;
      		S2: G=3'b011;
      		S3: G=3'b010;
      		S4: G=3'b110;
      		S5: G=3'b111;
      		S6: G=3'b101;
      		S7: G=3'b100;
      		
      	endcase
      	
      end
endmodule