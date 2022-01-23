`timescale 1ns / 1ps

module encoder8to3_tb;
    reg [7:0] in; wire [2:0] out;
    integer  f;
    
    encoder8to3 M1 (.in(in),.out(out));
    priorityencoder_8to3 M2 (.i(in),.o(out));
    
    initial
        begin
            in = 8'b00000000;
            for(f=0;f < 255; f= f+1)
                begin 
                    in = in + 8'b00000001;
                    #5;
                end
             $finish;
         end           
endmodule

