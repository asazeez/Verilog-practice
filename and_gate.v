module and_gate (
	input_1,
	input_2,
	result);
	
input input_1;
input input_2;
output result;

wire and_temp;
assign and_temp = input_1 & input_2;
assign result = and_temp;
endmodule




