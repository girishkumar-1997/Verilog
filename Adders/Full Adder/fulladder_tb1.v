`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 13:43:13
// Design Name: 
// Module Name: fulladder_tb1
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


module fulladder_tb1;

    reg a,b,cin ; wire sout,cout ;
    //fulladder_d M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
    //fulladder_b M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
    //fulladder_s M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
    //fulladder_c M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
    fulladder_HA M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
        reg i;
           initial 
           begin
             // Inser the inputs
            a = 1'b0; b=1'b0; cin=1'b0;
            #100;
            for (i= 0; i < 8; i=+1)
                begin
                    {a,b,cin} = {a,b,cin} + 3'b1;
                    #20;
                end
            end     
endmodule
