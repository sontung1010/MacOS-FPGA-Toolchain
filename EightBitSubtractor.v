`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2023 09:37:47 AM
// Design Name: 
// Module Name: EightBitSubtractor
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


module EightBitSubtractor(RCODiff, RCOBorrowOut, RCOSubX, RCOSubY, RCOBorrowIn);
    output [7:0] RCODiff;
    output RCOBorrowOut;
    input [7:0] RCOSubX;
    input [7:0] RCOSubY;
    input RCOBorrowIn;
    
    wire B1;
    wire B2;
    wire B3;
    wire B4;
    wire B5;
    wire B6;
    wire B7;
    
    FullSubtractor RCO_FS0(RCODiff[0], B1, RCOSubX[0], RCOSubY[0], RCOBorrowIn),
                   RCO_FS1(RCODiff[1], B2, RCOSubX[1], RCOSubY[1], B1),
                   RCO_FS2(RCODiff[2], B3, RCOSubX[2], RCOSubY[2], B2),
                   RCO_FS3(RCODiff[3], B4, RCOSubX[3], RCOSubY[3], B3),
                   RCO_FS4(RCODiff[4], B5, RCOSubX[4], RCOSubY[4], B4),
                   RCO_FS5(RCODiff[5], B6, RCOSubX[5], RCOSubY[5], B5),
                   RCO_FS6(RCODiff[6], B7, RCOSubX[6], RCOSubY[6], B6),
                   RCO_FS7(RCODiff[7], RCOBorrowOut, RCOSubX[7], RCOSubY[7], B7);
                   
endmodule
