module or_gate (
	input_1,
	input_2,
	result);
	
input input_1;
input input_2;
output result;

wire or_temp;
assign or_temp = input_1 | input_2;
assign result = or_temp;
endmodule