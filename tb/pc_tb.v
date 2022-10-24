`include "pc.v"
module pc_tb;
	reg[31:0] pc_next;
	reg clk;
	wire[31:0] pc;

	pc PC(pc_next, clk, pc);

	initial begin
		clk = 0;
		pc_next = 0;
		#10;
		clk = 1;
		#10
		clk = 0;
		#10
		pc_next = 32'd1337;
		clk = 1;
		#10
		$stop;
	end
endmodule