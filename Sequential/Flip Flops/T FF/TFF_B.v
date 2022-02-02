`timescale 1ns / 1ps

module TFF_B(
    input T,CLK,RST,
    output reg Q,QN
    );
    
    always @(posedge CLK)
        begin
            if (RST == 1)
                begin
                    Q <= 0;
                    QN <= 1;
                end
            else
//                begin
//                    Q <= T ^ Q;
//                    QN <= ~Q ;
//                end
                if(T == 1)
                    begin
                        Q <= ~Q;
                        QN <= Q ;
                    end
                 else
                    begin
                        Q <= Q ;
                        QN <= ~Q;
                    end
            end
endmodule
