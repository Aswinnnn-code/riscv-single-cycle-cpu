module register_file(

    input clk,

    input [4:0] rs1,
    input [4:0] rs2,

    input [4:0] rd,
    input reg_write,

    input [31:0] write_data,

    output [31:0] read_data1,
    output [31:0] read_data2

);

reg [31:0] registers [0:31];

initial begin
    registers[1] = 10;
    registers[2] = 5;
end

assign read_data1 = registers[rs1];
assign read_data2 = registers[rs2];

always @(posedge clk)
begin
    if(reg_write) begin
        registers[rd] <= write_data;

        $display(
        "x1=%d x2=%d rd=%d write_data=%d",
        registers[1],
        registers[2],
        rd,
        write_data
        );
    end
end

endmodule