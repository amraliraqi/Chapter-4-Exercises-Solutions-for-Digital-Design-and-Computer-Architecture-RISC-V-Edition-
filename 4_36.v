module ex4_36(
	input clk, rst, Nickel, Dime, Quarter,
	output reg Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes
	);
       
       parameter S0 = 3'b000;
       parameter S1 = 3'b001;
       parameter S2 = 3'b010;
       parameter S3 = 3'b011;
       parameter S4 = 3'b100;

       reg [2:0] current_state, next_state;

       always @(posedge clk or posedge rst) begin
       	if (rst) 
       		current_state <= S0;
       	
       	else 
       		current_state <= next_state;
       end
      
      always @(*) begin
      	case(current_state)
      		S0: if({Quarter,Dime,Nickel} == 3'b001 )
      		          next_state=S1;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		          next_state=S2;
      		    else if({Quarter,Dime,Nickel} == 3'b100 || {Quarter,Dime,Nickel} == 3'b000)
      		          next_state=S0;

      		S1: if({Quarter,Dime,Nickel} == 3'b001 )
      		          next_state=S2;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		          next_state=S3;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		          next_state=S0;          
      		    else 
      		          next_state=S1;

      		S2: if({Quarter,Dime,Nickel} == 3'b001 )
      		          next_state=S3;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		          next_state=S4;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		          next_state=S0;          
      		    else 
      		          next_state=S2;

      		S3: if({Quarter,Dime,Nickel} == 3'b001 )
      		          next_state=S4;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		          next_state=S0;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		          next_state=S0;          
      		    else 
      		          next_state=S3;

      		S4: if({Quarter,Dime,Nickel} == 3'b001 || {Quarter,Dime,Nickel} == 3'b010 || {Quarter,Dime,Nickel} == 3'b100)
      		          next_state=S0;          
      		    else 
      		          next_state=S4;                                    

      		
      	endcase
      	
      end

        always @(*) begin
      	case(current_state)
      		S0: if({Quarter,Dime,Nickel} == 3'b001 )
      		          {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		          {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		          {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1000;
      		    else 
      		          {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;      

      		S1: if({Quarter,Dime,Nickel} == 3'b001 )
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1100;          
      		    else 
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;

      		S2: if({Quarter,Dime,Nickel} == 3'b001 )
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1010;          
      		    else 
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;

      		S3: if({Quarter,Dime,Nickel} == 3'b001 )
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1000;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		          {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1110;         
      		    else 
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;

      		S4: if({Quarter,Dime,Nickel} == 3'b001 )
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1000;
      		    else if({Quarter,Dime,Nickel} == 3'b010)
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1100;
      		    else if({Quarter,Dime,Nickel} == 3'b100)
      		          {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b1001;         
      		    else 
      		           {Dispense, ReturnNickel, ReturnDime, ReturnTwoDimes} = 4'b0000;                                    

      		
      	endcase
      	
      end
endmodule