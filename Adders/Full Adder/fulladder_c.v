`timescale 1ns / 1ps

module fulladder_c(
    input a,b,cin,
    output sout,cout
    );
    
    assign sout = a?(b?( cin?cin:cin):(cin?~cin:~cin)):(b?(cin?~cin:~cin):(cin?cin:cin)); 
    assign cout = a?(b?( cin?1:1):(cin?cin:cin)):(b?(cin?cin:cin):(cin?0:0)); 
    
endmodule
