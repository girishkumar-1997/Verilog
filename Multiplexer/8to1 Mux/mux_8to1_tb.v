`timescale 1ns / 1ps

module mux_8to1_tb;
    reg [7:0] i; reg [2:0] s; wire o ; integer j;
    
    mux_8to1 UUT (.in(i),.out(o),.sel(s));

    initial
        begin
            i=8'b10101011; s=3'b000;
            for(j=-1;j<7;j=j+1) 
                begin
                    s=s+3'd1;
                    #10;
                end
            $finish;
         end          
endmodule
