module alu_decoder(
	input wire [5:0] funct,
	input wire [1:0] aluop,
	output reg [3:0] aluControl
);
	always @* begin
		if (aluop == 2'b00) 		aluControl <= 4'b0010;	//add
		else if (aluop == 2'b01) 	aluControl <= 4'b0110;	//sub
		else if(aluop == 2'b10) begin
			case(funct)
				//add
				6'b100_000: begin
					aluControl <= 4'b0010;
				end//add

				//sub
				6'b100_010: begin
					aluControl <= 4'b0110;
				end//sub

				//and
				6'b100_100: begin
					aluControl <= 4'b0000;
				end//and

				//or
				6'b100_000: begin
					aluControl <= 4'b0001;
				end//or
			endcase
		end
	end
endmodule