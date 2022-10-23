module im
	#(
		parameter SIZE = 128
	)

	(
	input wire [31:0] addr,
	output reg [31:0] cmd
	);

	//reg [31:0] mem[SIZE-1:0];
	//assign cmd = mem[addr];

	always@(addr) begin
		//$readmemh("program.hex", mem);

		//test with predefined instructions
    	case (addr)
	        // addi $s0, $0, 96
	        32'h00000000: cmd <= 32'b001000_00000_10000_00000000_1001_0110;
	                                // op(6 бит), rs(5 бит), rt(5 бит), imm(16 бит)
	                                //            rs=$0,     rt=$s0,    imm=96
	        // sw $s0, 0xff ($0)
	        32'h00000004: cmd <= 32'b101011_00000_10000_0000_0000_1111_1111;
	                                // op(6 бит), rs(5 бит), rt(5 бит), imm(16 бит)
	                                //            rs=$0,     rt=$s0,    imm=0xff
	        // addi $s1, $0, 255
	        32'h00000008: cmd <= 32'b001000_00000_10001_00000000_1111_1111;
	                                // op(6 бит), rs(5 бит), rt(5 бит), imm(16 бит)
	                                //            rs=$0,     rt=$s1,    imm=255
	        // sw $s1, 0xff ($0)
	        32'h0000000C: cmd <= 32'b101011_00000_10001_0000_0000_1111_1111;
	                        // op(6 бит), rs(5 бит), rt(5 бит), imm(16 бит)
	                        //            rs=$0,     rt=$s1,    imm=0xff
	        default: cmd <= 0;
	    endcase // case (cmd)
	end
endmodule