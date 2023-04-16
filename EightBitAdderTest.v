`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 09:32:38 AM
// Design Name: 
// Module Name: EightBitAdderTest
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


module EightBitAdderTest();

//Wired UUT out_8puts
wire [8:0] out_8;

//Registered UUT Inputs
reg  [8:0] A = 0;
reg  [8:0] B = 0;
reg  sel = 0;

//UUT Instantiation
//module EightBitAdder(RCOSum, RCOCarryout_8, RCOAddX, RCOAddY, RCOCarryIn);
mux2to1_8 UUT (
    .out_8(out_8),
    .A(A),
    .B(B),
    .sel(sel)
    );
    
initial
    begin
        #1000;
        sel =  0;
    
        #1000;  //wait 1000 ns
        A = 9'd50;
        #1000;
        B = 9'd90;
        
//        #1000;
//        RCOAddX = 8'd255;
//        #1000;
//        RCOAddY = 8'd255; 
        
    end

   
endmodule
