`timescale 1ns / 1ps

module rom(addr, data, rd_en, cs);
    input [2:0] addr;
    input rd_en,cs;
    output reg [7:0] data;
    
    always @(addr or rd_en or cs)
        case(addr)
            0 : data = 22;
            1 : data = 45;
            2 : data = 60;
            3 : data = 89;
            4 : data = 13;
            5 : data = 109;
            6 : data = 112;
            7 : data = 22;
         endcase
endmodule
