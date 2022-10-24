`include "mem.tb"

module mem_tb;
	reg clk;
	reg[31:0] addr;
	reg we;
	reg[31:0] data;
	wire[31:0] out;
	mem m(.clk(clk), .addr(addr), .we(we), .data(data), .out(out));
	initial begin
		clk = 0;
		addr = 32'd10;
		data = 32'd1337;
		we = 1;
		#10
		clk = 1;
		#10
		we = 0;
		#10
		$stop;
	end
endmodule