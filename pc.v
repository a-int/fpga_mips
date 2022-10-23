module pc(
	input wire [31:0] pc_next,
	input wire clk,
	output reg [31:0] pc
	);

	always @(posedge clk ) begin
		pc <= pc_next;
	end

endmodule