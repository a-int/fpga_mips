# MIPS FPGA Processor

# Description 

A small 32-bit MIPS CPU written in Verilog. Core based on Sarah L. Harris MIPS CPU ("Digital Design and Computer Arhitecture" by David Money Harris and Sarah L Harris). 

# TODO

1. Design basic blocks:
    - [x] program counter
    - [x] instruction memory
    - [x] data memory
    - [x] register file
    - [x] ALU
    - [x] main decoder
    - [x] ALU decoder
    - [x] Add testbenches for blocks
2. Add commands
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