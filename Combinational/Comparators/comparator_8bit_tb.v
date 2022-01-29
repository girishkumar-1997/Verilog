`timescale 1ns / 1ps

module comparator_8bit_tb ;
    reg [7:0] a,b;
    wire lt,gt,eq;
    
    comparator_8bit UUT(.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));
    
    initial
        begin
            repeat (100)
            begin
                a = $random ;
                b = $random ;
            #5;
            end
         end
endmodule
