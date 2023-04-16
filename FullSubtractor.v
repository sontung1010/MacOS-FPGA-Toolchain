`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 02:04:17 PM
// Design Name: 
// Module Name: FullSubtractor
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


module FullSubtractor(Diff, Bout, Xin, Yin, Bin);
    input Xin;
    input Yin;
    input Bin;
    output Diff;
    output Bout;
    
    wire D1; // intermediate diff between the two half subtractor
    wire B1; // internally generated borrow from the two half subtractor
    wire B2; // internally generated borrow from the two half subtractor
    
    HalfSubtractor HS1(D1, B1, Xin, Yin);
    HalfSubtractor HS2(Diff, B2, D1, Bin);
    
    or H1(Bout, B2, B1);
    
endmodule
