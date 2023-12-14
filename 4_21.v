module ex4_21_1 (
	input [7:0] A,
	output reg[2:0] Y, Z);

         integer i;
         always @(*)
         casex(A)
         8'b1xxx_xxxx: begin
         	Y=7;
         	Z=0;
          	for (i = 6; i >= 0; i = i - 1)
            begin: Loop1
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop1;
          	        end
          	        
          	end
          	if (i < 0)
                  Z = 1'b0;            	 		
         end
 
         8'b01xx_xxxx: begin
         	Y=6;
          	for (i = 5; i >= 0; i = i - 1)
          	begin: Loop2
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop2;
          	        end
          	        else
          	      	     Z=1'b0;
          	end            	 		
         end

         8'b001x_xxxx: begin
         	Y=5;
          	for (i = 4; i >= 0; i = i - 1)
          	begin: Loop3
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop3;
          	        end
          	        else
          	      	     Z=1'b0;
          	end            	 		
         end
         8'b0001_xxxx: begin
         	Y=4;
          	for (i = 3; i >= 0; i = i - 1)
          	begin: Loop4
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop4;
          	        end
          	        else
          	      	     Z=1'b0;
          	end            	 		
         end
         8'b0000_1xxx: begin
         	Y=3;
          	for (i = 2; i >= 0; i = i - 1)
          	begin: Loop5
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop5;
          	        end
          	        else
          	      	     Z=1'b0;
          	end            	 		
         end
         8'b0000_01xx: begin
         	Y=2;
          	for (i = 1; i >= 0; i = i - 1)
          	begin: Loop6
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop6;
          	        end
          	        else
          	      	     Z=1'b0;
          	end            	 		
         end
         8'b0000_001x: begin
         	Y=1;
          	for (i = 0; i >= 0; i = i - 1)
          	begin: Loop7
          	        if(A[i]==1'b1) begin
          	             Z=i;
          	             disable Loop7;
          	        end
          	        else
          	      	     Z=1'b0;
          	end            	 		
         end
         8'b0000_0001: begin
         	Y=0; Z=0;end
         8'b0000_0000: begin
         	Y=0; Z=3'bxxx;end
         default: begin
            Y=3'bxxx; Z=3'bxxx;end
         	
         endcase						
         	
endmodule


module ex4_21_2 (
   input [7:0] A,
   output reg[2:0] Y,z,
   output reg NONE);

         always @(*)
         casex(A)
         8'b1xxx_xxxx: begin
            Y=7; NONE=0; end
         8'b01xx_xxxx: begin
            Y=6; NONE=0;end
         8'b001x_xxxx: begin
            Y=5; NONE=0;end
         8'b0001_xxxx: begin
            Y=4; NONE=0;end   
         8'b0000_1xxx: begin
            Y=3; NONE=0;end
         8'b0000_01xx: begin
            Y=2; NONE=0;end
         8'b0000_001x: begin
            Y=1; NONE=0;end
         8'b0000_0001: begin
            Y=0; NONE=0;end
         8'b0000_0000: begin
            Y=0; NONE=1;end
         default: begin
            Y=0; NONE=1;end
            
         endcase


always @(*)
 casex (A)
8'b00000011: z = 3'b000;
8'b00000101: z = 3'b000;
8'b00001001: z = 3'b000;
8'b00010001: z = 3'b000;
8'b00100001: z = 3'b000;
8'b01000001: z = 3'b000;
8'b10000001: z = 3'b000;
8'b0000011x: z = 3'b001;
8'b0000101x: z = 3'b001;
8'b0001001x: z = 3'b001;
8'b0010001x: z = 3'b001;
8'b0100001x: z = 3'b001;
8'b1000001x: z = 3'b001;
8'b000011xx: z = 3'b010;
8'b000101xx: z = 3'b010;
8'b001001xx: z = 3'b010;
8'b010001xx: z = 3'b010;
8'b100001xx: z = 3'b010;
8'b00011xxx: z = 3'b011;
8'b00101xxx: z = 3'b011;
8'b01001xxx: z = 3'b011;
8'b10001xxx: z = 3'b011;
8'b0011xxxx: z = 3'b100;
8'b0101xxxx: z = 3'b100;
8'b1001xxxx: z = 3'b100;
8'b011xxxxx: z = 3'b101;
8'b101xxxxx: z = 3'b101;
8'b11xxxxxx: z = 3'b110;
default: z = 3'b000;
endcase

                                
            
endmodule