module ALU_test;
  reg [15:0] Sw;
  reg [2:0] Btn;

  wire [3:0] LEDOut;
  wire [6:0] hexdisp;
  wire [7:0] AN;

  ALU_Design uut(
    .LEDOut(LEDOut),
    .hexdisp(hexdisp),
    .AN(AN),
    .Sw(Sw),
    .Btn(Btn)
  );

  initial begin
    $dumpfile("sim.vcd");
    $dumpvars;

    Sw[0] = 0;
    Sw[1] = 0;
    Sw[2] = 0;
    Sw[3] = 0;
    Sw[4] = 0;
    Sw[5] = 0;
    Sw[6] = 0;
    Sw[7] = 0;
    Sw[8] = 0;
    Sw[9] = 0;
    Sw[10] = 0;
    Sw[11] = 0;
    Sw[12] = 0;
    Sw[13] = 0;
    Sw[14] = 0;
    Sw[15] = 0;

    #100;

    #1000;
    Sw[0] = 0;
    #1000;
    Sw[1] = 0;
    #1000;
    Sw[2] = 1;
    #1000;
    Sw[3] = 1;
    #1000;
    Sw[4] = 0;
    #1000;
    Sw[5] = 1;
    #1000;
    Sw[6] = 0;
    #1000;
    Sw[7] = 1;
    #1000;
    Sw[8] = 0;
    #1000;
    Sw[9] = 1;
    #1000;
    Sw[10] = 0;
    #1000;
    Sw[11] = 0;
    #1000;
    Sw[12] = 1;
    #1000;
    Sw[13] = 1;
    #1000;
    Sw[14] = 1;
    #1000;
    Sw[15] = 0;
    #1000;
    Btn[0] = 1;
    #1000;
    Btn[1] = 1;
    #1000;
    Btn[2] = 1;
    #1000;
  end
endmodule



