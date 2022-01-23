`timescale 1ns / 1ps

module mux2to1_b(inb,selb,outb);
    input [1:0] inb ; input selb;
    output outb;
    reg outb;
    
    always @(inb or selb)
    case(selb)
        0:outb = inb[0];
        1:outb = inb[1];
        default : outb = 1'bx;
     endcase
endmodule
