module asu (
	i_cin,
	i_x,
	i_y,
	o_s,
	o_count,
	o_overflow,
	o_neg);
	
input i_cin;
input [3:0] i_x;
input [3:0] i_y;

output [3:0] o_s;
output o_count;
output o_overflow;
output o_neg;

reg [4:0] sum;
reg oneg_temp;

always @(i_cin or i_y or i_x)
	begin 
	if (i_cin) 
			begin
				sum = i_x + (~i_y) + i_cin;
				oneg_temp = sum [3];
			end
		else 
			begin
				sum = i_x + i_y + i_cin;
				oneg_temp = 1'b0;
			
			end
	end
assign o_neg = oneg_temp;
assign o_s = sum[3:0] ;	
assign o_count = sum[4];
assign o_overflow = sum[4] ^ i_x[3] ^ i_y[3] ^ sum[3];


endmodule
