`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 11:31:20 PM
// Design Name: 
// Module Name: SubtractorTop
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


module SubtractorTop(Output, Sw0, Sw1, Sw2, Sw3, Sw4, Sw5, Sw6, Sw7, Btn1);
    output [4:0] Output;
    input Sw0;
    input Sw1;
    input Sw2;
    input Sw3;
    input Sw4;
    input Sw5; 
    input Sw6;
    input Sw7;
    input Btn1;
    
    wire [3:0] OpX; // 4 bits from the 8 discrete inputs to apply to 4-bit subtractor
    wire [3:0] OpY; // 4 bits from the 8 discrete inputs to apply to 4-bit subtractor
    
    wire [3:0] Diff;
    
    wire Bout;
    wire Bin;
    
    wire [4:0] DispData;
    
    assign DispData[4] = Bout;
    assign DispData[3:0] = Diff;
    
    InputRead In0(Sw0, Sw1, Sw2, Sw3, Sw4, Sw5, Sw6, Sw7, Btn0, Btn1, OpX, OpY, Cin);
    
    FourBitSubtractor Sub1(Diff, Bout, OpX, OpY, Bin);
    
    DispOut DO(Output, DispData);
endmodule
