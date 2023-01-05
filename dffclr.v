module dff (Q,D, clr, clk);

input D;
input clk;
input clr;


output reg Q;

always @(posedge clk)
	begin
		if (clr)
			begin
				Q<=D;
			end
		else
			begin
				Q=1'b0;
			end
	end

endmodule