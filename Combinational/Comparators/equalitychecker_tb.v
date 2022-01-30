`timescale 1ns / 1ps

module equalitychecker_tb;
    reg [1:0] x,y ; wire z;
    equalitychecker_2bit uut (.x(x),.y(y),.z(z));
    
    initial
        begin
            x = 2'b01;
            y = 2'b10;
            #10
            x = 2'b10;
            y = 2'b10;
            #10
            x = 2'b01;
            y = 2'b11;
        end
endmodule
