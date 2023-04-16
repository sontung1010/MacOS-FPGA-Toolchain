`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 12:07:48 AM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1_8(out_8, A, B, sel);
    output [8:0] out_8;
    input [8:0] A;
    input [8:0] B;
    input sel;
    
    reg [8:0] out_8 = 0;
    always @ (sel or A or B)
        begin
            if (sel)
                out_8 = B;
            else 
                out_8 = A;
        end
         
endmodule


module mux2to1_1(out, A, B, sel);
    output out;
    input A;
    input B;
    input sel;
    
    reg out;
    always @ (sel or A or B)
        begin
            if (sel)
                out <= B;
            else 
                out <= A;
        end
         
endmodule
