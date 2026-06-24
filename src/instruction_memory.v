module instruction_memory (
    input [31:0] address,
    output  [31:0] instruction
); 
    reg [31:0] memory [0:15]; 
    initial begin

    

    memory[0] =
    32'b0000000_00010_00001_000_00011_0110011; // ADD x3,x1,x2

    memory[1] =
    32'b0100000_00010_00001_000_00100_0110011; // SUB x4,x1,x2

    memory[2] =
    32'b0000000_00010_00001_111_00101_0110011; // AND x5,x1,x2

    memory[3] =
    32'b0000000_00010_00001_110_00110_0110011; // OR x6,x1,x2

    memory[4] =
    32'b0000000_00010_00001_100_00111_0110011; // XOR x7,x1,x2


    end
    assign instruction = memory[address >> 2];
endmodule 

        