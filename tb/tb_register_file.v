`timescale 1ns/1ps

module tb_register_file;

reg [4:0] rs1;
reg [4:0] rs2;

wire [31:0] read_data1;
wire [31:0] read_data2;

register_file uut(
    .rs1(rs1),
    .rs2(rs2),
    .read_data1(read_data1),
    .read_data2(read_data2)
);

initial begin

    $dumpfile("register_file.vcd");
    $dumpvars(0,tb_register_file);

    rs1 = 1;
    rs2 = 2;

    #20;

    $finish;

end

endmodule