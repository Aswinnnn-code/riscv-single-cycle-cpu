`timescale 1ns/1ps 

module tb_cpu_top ;
    reg clk;
    reg reset ;

    wire[31:0] pc_out;
    wire[31:0] instruction;

    cpu_top uut (
        .clk(clk) ,
        .reset(reset) ,
        .instruction(instruction) ,
        .pc_out(pc_out)
    ) ;

    always #5 clk = ~clk; 

    initial begin
        $dumpfile("tb_cpu_top.vcd");
        $dumpvars(0, tb_cpu_top);

        clk = 0;
        reset = 1;
        #10;
        reset = 0; 
        #50;

        $finish;
    end

endmodule