`timescale 1ns / 1ps

module seq_detector(
    input clk,x,rst,
    output reg z
    );
    
    parameter S0 = 0,
              S1 = 1,
              S2 = 2,
              S3 = 3;
    
    reg [1:0] ps , ns;
    
    always @(posedge clk, posedge rst)
        if(rst) 
            ps <= S0;
        else 
            ps <= ns;
    
    always @(ps,x)
        case(ps)
            S0 : begin
                    z  = 0;
                    ns = x ? S0 : S1;
                 end
            
            S1 : begin
                    z  = 0;
                    ns = x ? S2 : S1;
                 end
                 
            S2 : begin
                    z  = 0;
                    ns = x ? S3 : S1;
                 end
                             
            S3 : begin
                    z  = x ? 0 : 1;
                    ns = x ? S0 : S1;
                 end
         endcase             
endmodule
