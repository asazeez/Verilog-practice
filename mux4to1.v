module mux4to1 (
	i_w0,
	i_w1,
	i_w2,
	i_w3,
	i_s0,
	i_s1,
	o_f);

input i_w0;
input i_w1;
input i_w2;
input i_w3;
input i_s0;
input i_s1;

output o_f;

reg temp_f;

always @(*)
	begin
		case (i_s0 | i_s1)
		2'b00: temp_f <= i_w0;
		2'b01: temp_f <= i_w1;
		2'b10: temp_f <= i_w2;
		2'b11: temp_f <= i_w3;
		endcase
		
	end

assign o_f = temp_f;

endmodule
	
	