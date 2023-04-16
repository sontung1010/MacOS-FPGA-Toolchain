`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 10:41:45 AM
// Design Name: 
// Module Name: comparator
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


module comparator(A_lt_B, A_gt_B, A_eq_B, A, B);
    output A_lt_B;
    output A_gt_B;
    output A_eq_B;
    input [7:0] A;
    input [7:0] B;
    
    reg A_lt_B;
    reg A_gt_B;
    reg A_eq_B;
    
    always @ (A or B)
        begin
            A_lt_B = (A < B);
            A_gt_B = (A > B);
            A_eq_B = (A == B);
        end
endmodule
