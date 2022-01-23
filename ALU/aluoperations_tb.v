`timescale 1ns / 1ps

module aluoperations_tb;
    reg [7:0] a,b;
    reg [3:0] op;
    wire [7:0] f;
    
    alu_operations UUT(.a(a),.b(b),.op(op),.alu_op(f));
    
    initial
        begin
            repeat(1000)
                begin
                    op = $random ;
                    a = $random ;
                    b = $random ;
                    #20 ;
                end
        end
endmodule