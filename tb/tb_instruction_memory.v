`timescale 1ns/1ps
module tb_instruction_memory;
    reg [31:0] address;
    wire [31:0] instruction;
    
    instruction_memory uut (
        .address(address),
        .instruction(instruction)
    );
    
    initial begin
        $dumpfile("tb_instruction_memory.vcd");
        $dumpvars(0, tb_instruction_memory);
        
        address = 0; #10;
        address = 4; #10;
        address = 8; #10;
        address = 12; #10;
        
        $finish;
    end
endmodule