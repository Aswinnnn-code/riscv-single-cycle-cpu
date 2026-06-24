module control_unit (
    input [31:0] instruction,
    output reg [2:0] alu_op
) ;

always @(*) begin

    if(instruction[6:0] == 7'b0110011) begin

        if(instruction[14:12] == 3'b000 &&
           instruction[31:25] == 7'b0000000)

            alu_op = 3'b000; // ADD

        else if(instruction[14:12] == 3'b000 &&
                instruction[31:25] == 7'b0100000)

            alu_op = 3'b001; // SUB

        else if(instruction[14:12] == 3'b111)

            alu_op = 3'b010; // AND

        else if(instruction[14:12] == 3'b110)

            alu_op = 3'b011; // OR

        else if(instruction[14:12] == 3'b100)

            alu_op = 3'b100; // XOR

        else

            alu_op = 3'b000;

    end

    else

        alu_op = 3'b000;

end
endmodule
