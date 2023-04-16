`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2023 09:36:45 AM
// Design Name: 
// Module Name: EightBitAdder
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


module EightBitAdder(RCOSum, RCOCarryOut, RCOAddX, RCOAddY, RCOCarryIn);
    output [7:0]    RCOSum;
    output          RCOCarryOut;
    input [7:0]     RCOAddX;
    input [7:0]     RCOAddY;
    input           RCOCarryIn;
    
    reg [7:0] RCOSum;
    reg RCOCarryOut;
    
    always @(RCOAddX or RCOAddY or RCOCarryIn)
    begin
        {RCOCarryOut, RCOSum} = RCOAddX + RCOAddY + RCOCarryIn;
    end
    
                              
endmodule
