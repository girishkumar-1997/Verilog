`timescale 1ns / 1ps

//D Flip flop with Synchronous Set and Reset

module DFF_Synchronous(
    input D,SET,RST,CLK,
    output reg Q, output QN
    );
       
    assign QN = ~Q;
    
    always @( negedge CLK)
        begin
            if(RST == 1) Q <= 0;
            else if (SET == 1) Q <= 1;
            else Q <= D ;
         end
endmodule
