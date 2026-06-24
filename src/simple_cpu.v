module simple_cpu(

    input clk,
    input reset,

    output [31:0] pc_out,
    output [31:0] instruction,
    output [2:0] alu_op,
    output [31:0] result

);

wire [31:0] instruction_wire;
wire [2:0] alu_op_wire;

cpu_top CPU(
    .clk(clk),
    .reset(reset),
    .pc_out(pc_out),
    .instruction(instruction_wire)
);

control_unit CU(
    .instruction(instruction_wire),
    .alu_op(alu_op_wire)
);

datapath DP(
    .clk(clk),
    .alu_op(alu_op_wire),
    .instruction(instruction_wire),
    .result(result)
);

assign instruction = instruction_wire;
assign alu_op = alu_op_wire;

endmodule
