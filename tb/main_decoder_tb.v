`include "main_decoder.v"

module main_decoder_tb;
    reg[5:0] opcode;
    wire werf;
    wire branch;
    wire rfwasrc;
    wire memToRf;
    wire aluSrc;
    wire[1:0] aluop;
    wire j;
    
    
    main_decoder md(.opcode(opcode), .wemem(wemem), .werf(werf), .branch(branch), .rfwasrc(rfwasrc), .memToRf(memToRf), .aluSrc(aluSrc), .aluop(aluop), .j(j));
    initial begin
    opcode = 6'b100_011; //lw
    #10
    opcode = 6'b101_011; //sw
    #10
    opcode = 6'b000_100; //beq
    #10
    opcode = 6'b000_010; //j
    #10
    opcode = 6'b001_000; //addi
    #10
    opcode = 6'd0;
    #10
    $stop;
    end
endmodule