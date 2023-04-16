`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2023 09:09:28 AM
// Design Name: 
// Module Name: muxAN
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


module muxAN(out, in, btn);
    input [8:0] in;
    output [7:0] out;
    input btn;
    
    reg [7:0] out;
    always @ (in or btn)
        begin
            if (!btn)
                out <= 8'b11111101; // digit 1
            else
                out <= 8'b11111110; // digit 2
        end
endmodule
