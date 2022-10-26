`include "decoder.v"

module decoder_tb;
    reg[5:0] opcode;
    wire wemem;
    wire werf;
    wire branch;
    wire rfwasrc;
    wire memToRf;
    wire aluSrc;
    wire[1:0] aluop;
    wire j;
   
    reg[5:0] funct;
    wire[3:0] aluControl;
    
    decoder d(.opcode(opcode), .funct(funct), .wemem(wemem), .werf(werf), .branch(branch), .rfwasrc(rfwasrc), .memToRf(memToRf), .aluSrc(aluSrc), .aluop(aluop), .j(j), .aluControl(aluControl));
    
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
    opcode = 6'd0;      //R-cmd
    funct = 6'd36;      //ADD function
    #10
    $stop;
    end
endmodule