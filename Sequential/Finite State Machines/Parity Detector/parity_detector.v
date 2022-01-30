`timescale 1ns / 1ps

module parity_detector(
    input x,clk,
    output reg z
    );
    
    reg state;
    parameter S0 = 0 ,     //S0 means Even state
              S1 = 1 ;      //S1 means Odd state
              
    always @(posedge clk)
        case(state)
            S0 : state <= x ? S1 : S0 ;
            S1 : state <= x ? S0 : S1 ;
            default : state <= S0 ;
        endcase
        
    always @(state)
        case(state)
            S0 : z = 0;
            S1 : z = 1;
        endcase
endmodule
