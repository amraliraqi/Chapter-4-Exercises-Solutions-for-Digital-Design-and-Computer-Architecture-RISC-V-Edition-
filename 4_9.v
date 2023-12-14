module ex4_9 (
	input a, b, c,
	output y
	);
      wire [2:0] s;
      wire [7:0] d;
      assign s = {a,b,c};
      assign d = 8'b10011100 ;
      ex4_8 DU (d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],s,y);
endmodule

