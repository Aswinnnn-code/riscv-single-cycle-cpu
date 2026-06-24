`timescale 1ns/1ps

module tb_alu;

reg [31:0] a;
reg [31:0] b;
reg [1:0] alu_op;

wire [31:0] result;

alu uut(
    .a(a),
    .b(b),
    .alu_op(alu_op),
    .result(result)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);

    a = 10;
    b = 5;

    alu_op = 2'b00;
    #10;

    alu_op = 2'b01;
    #10;

    alu_op = 2'b10;
    #10;

    alu_op = 2'b11;
    #10;

    $finish;

end

endmodule