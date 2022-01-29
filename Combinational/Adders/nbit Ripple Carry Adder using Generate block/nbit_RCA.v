`timescale 1ns / 1ps

module nbit_RCA(cout,s,a,b,cin);
    parameter N = 8 ;
    input [N-1:0] a,b ;
    input cin ;
    output [N-1:0] s;
    output cout;
    wire [N:0] c;
    
    assign c[0] = cin ;
    assign cout = c[N];
    
    generate
        genvar i ;
        for (i=0;i<N;i=i+1)
            begin :FA_LOOP
                //assign {c[i+1],s[i]} = a[i]+b[i]+c[i];
                fulladder_HA UUT (.a(a[i]),.b(b[i]),.cin(c[i]),.cout(c[i+1]),.sout(s[i]));
            end
    endgenerate       
endmodule
