`timescale 1ns / 1ps

module JKFF_B(
    input J,K,CLK,RST,
    output reg Q,QN
    );
    
    always  @(posedge CLK)
        begin
            if (RST == 1)
                begin
                    Q <= 0 ;
                    QN <= 1 ;
                end
            else
                begin
                    Q <= ((J & ~Q) | (~K & Q));
                    QN <= ~Q ;
                end
                
//              begin
//                    if(J != K)
//                        begin
//                            Q <= J;
//                            QN <= K ;
//                        end
//                     else if ( J==1 && K == 1)
//                        begin
//                            Q<= ~Q;
//                            QN <= Q ;
//                        end 
//                 end       
        end                       
endmodule
