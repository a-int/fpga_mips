module main_decoder(
	input wire [5:0] opcode,
	
	output reg wemem,
	output reg werf,
	output reg branch,
	output reg rfwasrc,
	output reg memToRf,
	output reg aluSrc,
	output reg[1:0] aluop,
	output reg j
);
	always @* begin
		case(opcode)
			//lw
			6'b100_011: begin
				werf 	<= 1;
				rfwasrc <= 0;
				aluSrc <= 1;
				branch 	<= 0;
				wemem 	<= 0;
				memToRf <= 1;
				aluop 	<= 2'b00;
				j 		<= 0;
			end //lw
			
			//sw
			6'b101_011: begin
				werf 	<= 0;
				rfwasrc <= 0;
				aluSrc <= 1;
				branch 	<= 0;
				wemem 	<= 1;
				memToRf <= 0;
				aluop 	<= 2'b00;
				j 		<= 0;
			end //sw

			//beq
			6'b000_100: begin
				werf 	<= 0;
				rfwasrc <= 0;
				aluSrc <= 0;
				branch 	<= 1;
				wemem 	<= 0;
				memToRf <= 0;
				aluop 	<= 2'b01;
				j 		<= 0;
			end //beq

			//j
			6'b000_010: begin
				werf 	<= 0;
				rfwasrc <= 0;
				aluSrc <= 0;
				branch 	<= 0;
				wemem 	<= 0;
				memToRf <= 0;
				aluop 	<= 2'b00;
				j 		<= 1;
			end //j

			//addi
			6'b001_000: begin
				werf 	<= 1;
				rfwasrc <= 0;
				aluSrc <= 1;
				branch 	<= 0;
				wemem 	<= 0;
				memToRf <= 0;
				aluop 	<= 2'b00;
				j 		<= 0;
			end //addi

			//R-type
			6'b000_000: begin
				werf 	<= 1;
				rfwasrc <= 1;
				aluSrc <= 0;
				branch 	<= 0;
				wemem 	<= 0;
				memToRf <= 0;
				aluop 	<= 2'b10;
				j 		<= 0;
			end //R-type
		endcase
	end
endmodule