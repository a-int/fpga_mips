`include "im.v"

module testbench;
	reg[31:0] a;
	wire[31:0] c;
	im mem(a, c);

	initial begin
		a = 0;
		#10;
		a = 4;
		#10
		a = 8;
		#10
		a = 12;
		#10
		$stop;
	end
endmodule