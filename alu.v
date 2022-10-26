module alu(
	input wire [31:0] data1,
	input wire [31:0] data2,
	input wire [4:0] aluControl,
	output wire zero,
	output wire overflow,
	output reg [31:0] out
	);
	assign zero = (out == 0);
	
	always @* begin
		case(aluControl)
			//AND
			4'b0000: begin
				out <= data1&data2;
			end
			//OR
			4'b0001: begin
				out <= data1|data2;
			end
			//ADD
			4'b0010: begin
				out <= data1+data2;
			end
			4'b0110: begin
				out <= data1-data2;
			end
		endcase	
	end
endmodule