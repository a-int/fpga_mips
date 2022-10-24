module rf(
	input clk,
	input [4:0] raddr1,
	input [4:0] raddr2,

	input [4:0] waddr,
	input we,
	input [31:0] wdata,
	
	output [31:0] rdata1,
	output [31:0] rdata2
	);
	
	reg [31:0] regs[31:0];
	
	always @(posedge clk) begin
		if(we) begin
			regs[waddr] <= wdata;
		end
	end
	
	assign rdata1 = raddr1? regs[raddr1]:0;
	assign rdata2 = raddr2? regs[raddr2]:0;
endmodule