module dflipflop (D,Q, Clock);

input D;
input Clock;
output reg Q;


always@(posedge Clock)
	begin
		Q<=D;
	end
	
endmodule