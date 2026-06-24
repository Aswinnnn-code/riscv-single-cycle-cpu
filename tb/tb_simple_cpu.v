`timescale 1ns/1ps

module tb_simple_cpu;

reg clk;
reg reset;

wire [31:0] pc_out;
wire [31:0] instruction;
wire [2:0] alu_op;
wire [31:0] result;

simple_cpu uut(
    .clk(clk),
    .reset(reset),
    .pc_out(pc_out),
    .instruction(instruction),
    .alu_op(alu_op),
    .result(result)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("simple_cpu.vcd");
    $dumpvars(0,tb_simple_cpu);

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #100;

    $finish;

end

endmodule