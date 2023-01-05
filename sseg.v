module sseg (
	i_bcd,
	i_neg,
	o_leds,
	o_ledss);

input i_neg;
input [3:0] i_bcd;

output [0:6] o_leds;
output [0:6] o_ledss; 

reg [0:6] temp_leds;
reg [0:6] temp_ledss;

always@(i_bcd)
	begin
		if (i_neg)
			begin
				temp_ledss = 7'b0000001;
				case(i_bcd)
				4'b0000: temp_leds = 7'b1111110; //0
				4'b0001: temp_leds = 7'b0110000; //1
				4'b0010: temp_leds = 7'b1101101; //2
				4'b0011: temp_leds = 7'b1111001; //3
				4'b0100: temp_leds = 7'b1011011; //4
				4'b0101: temp_leds = 7'b1011011; //5
				4'b0110: temp_leds = 7'b1011111; //6
				4'b0111: temp_leds = 7'b1110000; //7
				4'b1000: temp_leds = 7'b1111111; //8
				4'b1001: temp_leds = 7'b1110011; //9
				endcase
			end

		else 
			begin 
				temp_ledss =7'b0000000;
				case (i_bcd)           /* abcdefg*/
				4'b0000: temp_leds = 7'b1111110; //0
				4'b0001: temp_leds = 7'b0110000; //1
				4'b0010: temp_leds = 7'b1101101; //2
				4'b0011: temp_leds = 7'b1111001; //3
				4'b0100: temp_leds = 7'b1011011; //4
				4'b0101: temp_leds = 7'b1011011; //5
				4'b0110: temp_leds = 7'b1011111; //6
				4'b0111: temp_leds = 7'b1110000; //7
				4'b1000: temp_leds = 7'b1111111; //8
				4'b1001: temp_leds = 7'b1110011; //9
				4'b1010: temp_leds = 7'b1110111; //A
				4'b1011: temp_leds = 7'b0011111; //B
				4'b1100: temp_leds = 7'b1001110; //C
				4'b1101: temp_leds = 7'b0111101; //D
				4'b1110: temp_leds = 7'b1001111; //E
				4'b1111: temp_leds = 7'b1000111; //F
				endcase
			end
	end
assign o_leds = temp_leds;
assign o_ledss = temp_ledss;	
endmodule
			

