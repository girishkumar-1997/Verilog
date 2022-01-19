`timescale 1ns / 1ps

//D Flip flop with Aynchronous SET and RESET


module DFF_Asynchronous(
     input D,SET,RST,CLK,
     output reg Q, output QN
     );
     
     assign QN = ~Q;
     
     always @( negedge CLK ,negedge SET ,negedge RST)
        begin
            if(RST == 1) Q <= 0;
            else if (SET == 1) Q <= 1;
            else Q <= D ;
        end
endmodule
