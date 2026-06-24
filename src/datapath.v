module datapath(

    input clk,
    input [2:0] alu_op,
    input [31:0] instruction,

    output [31:0] result

);

wire [31:0] read_data1;
wire [31:0] read_data2;
wire [31:0] alu_result;

register_file RF(

    .clk(clk),

    .rs1(instruction[19:15]),
    .rs2(instruction[24:20]),

    .rd(instruction[11:7]),

    .reg_write(1'b1),

    .write_data(alu_result),

    .read_data1(read_data1),
    .read_data2(read_data2)

);

alu ALU(

    .a(read_data1),
    .b(read_data2),

    .alu_op(alu_op),

    .result(alu_result)

);

assign result = alu_result;

endmodule