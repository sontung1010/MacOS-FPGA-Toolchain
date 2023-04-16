`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 09:45:16 AM
// Design Name: 
// Module Name: AdderTop
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


module AdderTop(Output, Sw0, Sw1, Sw2, Sw3, Sw4, Sw5, Sw6, Sw7, Btn0);
    output [4:0] Output;
    input Sw0;
    input Sw1;
    input Sw2;
    input Sw3;
    input Sw4;
    input Sw5; 
    input Sw6;
    input Sw7;
    input Btn0;

    
    wire [3:0] OpX; // 4 bits from the 8 discrete inputs to apply to 4-bit adder
    wire [3:0] OpY; // 4 bits from the 8 discrete inputs to apply to 4-bit adder
    
    wire [3:0] Sum; // four sum bits from the RCO Adder
    
    wire Cout; // adder carry out
    wire Cin; // adder carry in

    wire [4:0] DispData;

    
    assign DispData[4] = Cout;
    assign DispData[3:0] = Sum;
    
    
    InputRead In0(Sw0, Sw1, Sw2, Sw3, Sw4, Sw5, Sw6, Sw7, Btn0, Btn1, OpX, OpY, Cin, Bin);
    
    FourBitAdder Add1(Sum, Cout, OpX, OpY, Cin); 
    
    DispOut DO(Output, DispData);
   
    
   // DispOut DO(Output, DispData); // construct output bit vector
    
endmodule
