module lab1(
	i_x1,
	i_x2,
	i_x3,
	o_f);

input i_x1;
input i_x2;
input i_x3;
output o_f;

wire f_temp;

assign f_temp= (i_x1 & i_x2) | (~i_x2 & i_x3);
assign o_f = f_temp;
endmodule