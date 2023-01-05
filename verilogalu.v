module (A, B, OP, Neg, R);

input A;
input B;
input OP;

output Neg;
output reg R;


always @(*)
	begin
		case (OP)
			2'b00: R<=A&B;
			2'b10: R<=A|B;
			2'b01: R<=A+B;
			2'b11:
				begin 
				R<=A+(~B)+1;
				if (B>A)
					Neg <= 1'b1;
				else 
					Neg <= 1'b0;
				end
			endcase		
	end
endmodule
