`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 01:54:11
// Design Name: 
// Module Name: Priority_Encoder_4x2_tb
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


module Priority_Encoder_4x2_tb;

    reg [3:0]data_in;
    reg enable;
    wire [1:0]data_out;
    
    Priority_Encoder_4x2 uut(
        .data_in(data_in),
        .enable(enable),
        .data_out(data_out)
    );
    
    initial
    begin
        enable = 0;
         #5 data_in = 4'b0101;
         #5 data_in = 4'b1111;
         #5 enable = 1;
         for(data_in=4'b0000; data_in<=4'b1111; data_in = data_in +1'b1)
         begin
            #5;
         end
         
         $stop;
    end
endmodule
