`timescale 1ns / 1ps


module encoder4to2_tb;
    reg [3:0] in;
    wire [1:0] out;
    integer i;
    
    encoder_4to2 UUT(.in(in),.out(out));
    
    initial
        begin
        in = 0;
         for(i=0;i<15;i=i+1)
            begin
                in = in + 1;
                #10;
            end
          $finish;
        end
endmodule
