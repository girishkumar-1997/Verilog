`timescale 1ns / 1ps

module xor_bitwise_tb;

    reg [15:0] x,y ;
    wire [15:0] out,op ;
    
    xor_bitwise G (.f(out),.a(x),.b(y),.g(op));
    
    initial
        begin
            $monitor("%b,%b,%b",x,y,out);
            x = 16'haaaa ;
            y = 16'h00ff;
            #10
            x = 16'h0f0f ;
            y = 16'h3333;
            #20 $finish ;
        end
endmodule
