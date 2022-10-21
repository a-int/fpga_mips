# MIPS FPGA Processor

# Description 

A small 32-bit MIPS CPU written in Verilog. Core based on Sarah L. Harris MIPS CPU ("Digital Design and Computer Arhitecture" by David Money Harris and Sarah L Harris). 

# TODO

1. Design basic blocks:
    - [ ] program counter
    - [ ] instruction memory
    - [ ] data memory
    - [ ] register file
    - [ ] ALU
    - [ ] main decoder
    - [ ] ALU decoder
2. Add testbenches for blocks
3. Add commands
    - R-type
      - [ ] add
      - [ ] sub
    - L-type
      - [ ] addi
      - [ ] lw
      - [ ] sw
      - [ ] beq
    - J-type
      - [ ] j