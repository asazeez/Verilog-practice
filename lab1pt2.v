module lab1pt2 (
	i_w1,
	i_w2,
	i_w3,
	i_w4,
	o_g,
	o_h);

input i_w1;
input i_w2;
input i_w3;
input i_w4;

output o_g;
output o_h;

wire g_temp;
wire h_temp;

assign g_temp = (i_w1 & i_w2) | (i_w3 & i_w4);
assign h_temp = (i_w1 & i_w3) | (i_w2 & i_w4);

assign o_g = g_temp;
assign o_h = h_temp;

endmodule