module mem #(
		SIZE = 1024
	)(
		input wire clk,
		input wire [31:0] addr,
		input wire we,
		input wire [31:0] data,
		output wire[31:0] out
	);
	
	reg[31:0] memory [SIZE-1: 0];

	always@(posedge clk) begin
		if(we) begin
			memory[addr] <= data;
		end
	end

	assign out = memory[addr];
endmodule