`include "rf.v"

module rf_tb;
	reg clk;
	reg [4:0] ra1;
	reg [4:0] ra2;
	reg we;
	reg [4:0] wa;
	reg [31:0] wd;
	wire [31:0] rd1;
	wire [31:0] rd2;

	rf r(.clk(clk), .raddr1(ra1), .raddr2(ra2), .we(we), .waddr(wa), .wdata(wd), .rdata1(rd1), .rdata2(rd2));
	initial begin
		clk = 0;
		
		we = 1;
		wa = 5'd16;
		wd = 32'd1337;

		ra1 = 5'd16;
        ra2 = 5'd9;
		
		#10
		clk = 1;
		#10
		clk = 0;
		wa = 5'd9;
		wd = 32'd69;
		#10
		clk = 1; //data has been written to regs[16] and regs[9]
        #10
		$stop;
	end
endmodule