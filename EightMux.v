`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2023 11:41:01 PM
// Design Name: 
// Module Name: EightMux
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


module EightMux(out, in, sel);
    output [3:0] out;
    input [8:0] in;
    input sel;
    
    reg [3:0] out;
    always @ (sel or in)
        begin
            case (sel)
                1'b0: out <= in[8:4];
                1'b1: out <= in[3:0];
            endcase
        end
endmodule
