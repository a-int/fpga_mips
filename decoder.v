`include "main_decoder.v"
`include "alu_decoder.v"

module decoder(
	input wire [5:0] opcode,
	input wire [5:0] funct,

	output wire wemem,
	output wire werf,
	output wire branch,
	output wire rfwasrc,
	output wire memToRf,
	output wire aluSrc,
	inout wire[1:0] aluop,
	output wire j,

	output wire [3:0] aluControl
);
	main_decoder md(.opcode(opcode), .wemem(wemem), .werf(werf), .branch(branch), .rfwasrc(rfwasrc), .memToRf(memToRf), .aluSrc(aluSrc), .aluop(aluop), .j(j));
	alu_decoder ad(.funct(funct), .aluop(aluop), .aluControl(aluControl));
endmodule