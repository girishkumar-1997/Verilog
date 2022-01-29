`timescale 1ns / 1ps

module nbit_rca_tb;
    reg [7:0] a,b ; reg cin ;
    wire [7:0] s;
    wire cout;
    //wire [8:0] c;
    
    nbit_RCA UUT (.a(a),.b(b),.cin(cin),.cout(cout),.s(s));
    
    initial
        begin
            cin = 1;
            a = 8'h23;
            b = 8'h32;
            #20
            a = 8'hab;
            b = 8'h00;
            #20
            a = 8'hab;
            b = 8'hba;
            #20 $finish ;
        end
endmodule
