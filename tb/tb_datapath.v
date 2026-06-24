`timescale 1ns/1ps

module tb_datapath;

reg [1:0] alu_op;

wire [31:0] result;

datapath uut(
    .alu_op(alu_op),
    .result(result)
);

initial begin

    $dumpfile("datapath.vcd");
    $dumpvars(0,tb_datapath);

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