`timescale 1ns/1ps 
module tb_pc; 
    reg clk, reset ;
    wire [31:0] pc_out;
    pc uut (
        .clk(clk),
        .reset(reset),
        .pc_out(pc_out)
    );
    always #5 clk = ~clk;

    initial begin 
        $dumpfile("tb_pc.vcd");
        $dumpvars(0, tb_pc);
        clk =0;
        reset = 1 ;
        #10;
        reset = 0 ;
      #100;
        $finish;
    end
endmodule

