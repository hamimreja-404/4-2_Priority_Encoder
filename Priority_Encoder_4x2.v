`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 01:50:07
// Design Name: 
// Module Name: Priority_Encoder_4x2
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


module Priority_Encoder_4x2(
    input [3:0]data_in,
    input enable,
    output [1:0]data_out
    );
    
    assign data_out[0] = enable & (data_in[3] | data_in[1] & ~data_in[2]);
    assign data_out[1] = enable & (data_in[3] | data_in[2]);
endmodule
