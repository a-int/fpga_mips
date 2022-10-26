`include "alu.v"

module alu_tb;
	reg[31:0] data1;
	reg[31:0] data2;
	reg[4:0] aluControl;
	wire zero;
	wire overflow;
	wire [31:0] out;
	alu a(.data1(data1), .data2(data2), .aluControl(aluControl), .zero(zero), .overflow(overflow), .out(out));
	initial begin
		data1 = 32'd240;
		data2 = 32'd60;
		aluControl = 4'b0010; //ADD
		#10;
		aluControl = 4'b0110; //SUB
		#10
		data1 = 32'd3;
		data2 = 32'd4;
		aluControl = 4'b0000; //AND
		#10
		aluControl = 4'b0001; //OR
		#10
		$stop;
	end
endmodule