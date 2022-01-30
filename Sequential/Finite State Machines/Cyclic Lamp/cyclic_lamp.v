`timescale 1ns / 1ps

module cyclic_lamp(
    input clk,
    output reg [0:2] light
    );
    
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10;
    
    parameter RED    = 3'b100,
              GREEN  = 3'b010,
              YELLOW = 3'b001;
              
   reg [0:1] state;
   always @(posedge clk)
    case(state)
        S0: begin               //S0 means RED
            light <= GREEN;
            state <= S1;
            end
        
        S1: begin               //S1 means GREEN
            light <= YELLOW;
            state <= S2;
            end
                        
        S2: begin               //S2 means YELLOW
            light <= RED;
            state <= S0;
            end
            
        default  : begin
                    light <= RED;
                    state <= S0;
                   end
        endcase 
endmodule
