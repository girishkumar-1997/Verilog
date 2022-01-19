`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 21:54:09
// Design Name: 
// Module Name: bcd_to7seg_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcd_to7seg_tb;
    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
    
    bcd_to_7seg UUT(.bcd(bcd),.seg(seg));
    
    initial
    begin
        bcd=4'b0;
        #20;
        for (i=0 ; i<10 ; i=+1)
            begin
                bcd = bcd+1;
                #20;
            end  
    end                 
endmodule
