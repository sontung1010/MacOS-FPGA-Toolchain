`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 09:39:08 AM
// Design Name: 
// Module Name: InputRead
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


module InputRead(Sw, Btn, InputX, InputY, Cin, sel, ss_sel);
    input [15:0] Sw;
    input [2:0] Btn;
    output [7:0] InputX;
    output [7:0] InputY;
    output Cin;
    output sel;
    output ss_sel;
    
    
    assign InputX[7:0] = Sw[15:8];
           
    assign InputY[7:0] = Sw[7:0];
           
    not(Cin, Btn[0]);
    not(sel, Btn[1]);
    not(ss_sel, Btn[2]);
    
endmodule
