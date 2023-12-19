module ex4_39 (
	input clk, rst, A, B,
	output reg Z
	);

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
       	    S0: if({B,A}==2'b00)
                  next_state=S0;
                else if ({B,A}==2'b10)
                  next_state=S2; 
                else if ({B,A}==2'b11)
                  next_state=S3;
                else if ({B,A}==2'b01)
                  next_state=S1;  

       	    S1: if({B,A}==2'b00)
                  next_state=S0;
                else if ({B,A}==2'b10)
                  next_state=S2; 
                else if ({B,A}==2'b11)
                  next_state=S3;
                else if ({B,A}==2'b01)
                  next_state=S1;  
 
       	    S2: if({B,A}==2'b00)
                  next_state=S0;
                else if ({B,A}==2'b10)
                  next_state=S2; 
                else if ({B,A}==2'b11)
                  next_state=S3;
                else if ({B,A}==2'b01)
                  next_state=S1;  
 
       	    S3: if({B,A}==2'b00)
                  next_state=S0;
                else if ({B,A}==2'b10)
                  next_state=S2; 
                else if ({B,A}==2'b11)
                  next_state=S3;
                else if ({B,A}==2'b01)
                  next_state=S1;  
    		
            default: next_state=S0; 
       	endcase
       end

             always @(*) begin
        case(current_state)
            S0: if({B,A}==2'b00)
                  Z=1'b0;
                else if ({B,A}==2'b10)
                  Z=1'b0; 
                else if ({B,A}==2'b11)
                  Z=1'b1;
                else if ({B,A}==2'b01)
                  Z=1'b0;  

            S1: if({B,A}==2'b00)
                  Z=1'b0;
                else if ({B,A}==2'b10)
                  Z=1'b1; 
                else if ({B,A}==2'b11)
                  Z=1'b1;
                else if ({B,A}==2'b01)
                  Z=1'b1;  
 
            S2: if({B,A}==2'b00)
                  Z=1'b0;
                else if ({B,A}==2'b10)
                  Z=1'b0; 
                else if ({B,A}==2'b11)
                  Z=1'b1;
                else if ({B,A}==2'b01)
                  Z=1'b0;  
 
            S3: if({B,A}==2'b00)
                  Z=1'b0;
                else if ({B,A}==2'b10)
                  Z=1'b1; 
                else if ({B,A}==2'b11)
                  Z=1'b1;
                else if ({B,A}==2'b01)
                  Z=1'b1;  
             
        endcase
       end
endmodule

