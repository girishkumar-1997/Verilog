`timescale 1ns / 1ps


module counter_4basync(
    input CLK,RST,
    output reg [3:0] Q
    );
    
    always @(posedge CLK,posedge RST)
        begin
            if(RST==1)
                Q <= 0;
            else
                Q <= Q + 1;
         end
endmodule
