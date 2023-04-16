`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 01:15:59 PM
// Design Name: 
// Module Name: HalfSubtractor
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


module HalfSubtractor(DiffHalf, BorrowHalf, Xhalf, Yhalf);
    output DiffHalf;
    output BorrowHalf;
    input Xhalf;
    input Yhalf;
    
    xor (DiffHalf, Xhalf, Yhalf);
    and (BorrowHalf, ~Xhalf, Yhalf);
    
endmodule
