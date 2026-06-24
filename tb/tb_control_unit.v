`timescale 1ns/1ps

module tb_control_unit;

reg [31:0] instruction;
wire [1:0] alu_op;

control_unit uut(
    .instruction(instruction),
    .alu_op(alu_op)
);

initial begin

    $dumpfile("control_unit.vcd");
    $dumpvars(0, tb_control_unit);

    instruction = 32'hAAAAAAAA;
    #10;

    instruction = 32'hBBBBBBBB;
    #10;

    instruction = 32'hCCCCCCCC;
    #10;

    instruction = 32'hDDDDDDDD;
    #10;

    $finish;

end

endmodule