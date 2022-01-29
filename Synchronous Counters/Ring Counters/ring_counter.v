`timescale 1ns / 1ps

module ring_counter(
    input clk,init,
    output reg [3:0] Q
    );
    
    always @(negedge clk)
        begin
            if(init) Q = 4'b1000;
            else  
                begin
                   // Q    <= Q << 1;
                   // Q[0] <= Q[3];
                      Q    =  {Q[2:0],Q[3]};
                end
        end       
endmodule
