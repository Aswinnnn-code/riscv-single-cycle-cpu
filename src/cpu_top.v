module cpu_top 
    (
    input clk ,
    input reset ,
    output [31:0] instruction ,
    output [31:0] pc_out
    ) ;
    wire [31:0] pc_address ;
    pc PC (
        .clk(clk) ,
        .reset(reset) ,
        .pc_out(pc_address)
    ) ;
    instruction_memory IM (
        .address(pc_address) ,
        .instruction(instruction)
    ) ;
    assign pc_out = pc_address ;
endmodule
