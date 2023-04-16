`timescale 1ns / 1ps


module ALU_Design(Sw, Btn, LEDOut, hexdisp, AN);
    output [3:0] LEDOut;
    output [6:0] hexdisp;
    output [7:0] AN;
    //output [4:0] Result;
    input [15:0] Sw;
    input [2:0] Btn;

    wire [7:0] OpX; // 4 bits from the 8 discrete inputs to apply to 4-bit adder
    wire [7:0] OpY; // 4 bits from the 8 discrete inputs to apply to 4-bit adder
    wire [7:0] Sum;
    wire [7:0] Diff;
    wire [8:0] Out;
    wire Cin;
    wire Cout;
    wire Bout;
    wire [8:0] adder;
    wire [8:0] subtractor;
    wire sel;
    wire Output;
    wire [3:0]eightmuxOut;
    wire ss_sel;

    //wire [8:0] DispData;

    assign adder[7:0] = Sum;
    assign adder[8] = Cout;
    assign subtractor[7:0] = Diff;
    assign subtractor[8] = Bout;

//    assign AN[0] = 0;
//    assign AN[1] = 0;
//    assign AN[2] = 1;
//    assign AN[3] = 1;
//    assign AN[4] = 1;
//    assign AN[5] = 1;
//    assign AN[6] = 1;
//    assign AN[7] = 1;


    InputRead           In0(Sw, Btn, OpX, OpY, Cin, sel, ss_sel);

    EightBitAdder       Add1(Sum, Cout, OpX, OpY, Cin);
    EightBitSubtractor  Sub1(Diff, Bout, OpX, OpY, Cin);
    comparator          comp(LEDOut[0], LEDOut[1], LEDOut[2], OpX, OpY);

    mux2to1_8           muxAdderSubtractor(Out, subtractor, adder, sel);
    mux2to1_1           muxCarryinBorrowin(Output, Bout, Cout, sel);
    DispOut             DO(LEDOut[3], Output);
    muxAN               muxan(AN, Out, ss_sel);

    EightMux            eightmux(eightmuxOut, Out, ss_sel);
    SevenSegments       SS(hexdisp, eightmuxOut);

endmodule
