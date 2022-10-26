`include "alu_decoder.v"

module alu_decoder_tb;
    reg[5:0] f;
    reg[1:0] op;
    wire[3:0] actrl;
    alu_decoder adcd(.funct(f), .aluop(op), .aluControl(actrl));
    initial begin
    
        op = 2'b00;
        f = 6'd36;
        //ctrl must be eq ADD cmd (4'b0010)
        #10
        op = 2'b01;
        //ctrl must be eq SUB cmd (4'b0110)
        #10
        op = 2'b10;
        //ctrl must be eq cmd decoded by funct value (for funct eq to 6'd36 ctrl signal is eq AND cmd 4'b0000)
        #10
        $stop;
        end
endmodule