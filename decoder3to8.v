module decoder3to8(en,in,out);

input [2:0] in;
input en;

output [7:0] out;

decoder2to4 (en,in[1:0],out[3:0]);

endmodule


module decoder2to4(i_e, i_w,o_y);

input i_e;
input [1:0] i_w;

output [3:0] o_y;

reg [3:0] temp_y;

always@(i_w,i_e)
	begin	
		if(i_e)
			case (i_w)
			2'b00: temp_y <= 4'b1000;
			2'b01: temp_y <= 4'b0100;
			2'b10: temp_y <= 4'b0010;
			2'b11: temp_y <= 4'b0001;
			endcase
		else
			temp_y<=4'b0000;
	end
assign o_y = temp_y;

endmodule
