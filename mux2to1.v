module mux2to1 (
	i_a,
	i_b,
	i_s,
	o_f);

input i_a;
input i_b;
input i_s;

output o_f;

assign o_f = i_s ? i_a : i_b;

endmodule
	