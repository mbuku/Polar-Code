`timescale 1 ns / 1 ns

module Polar_Encoder_5G
          (clk,
           reset,
           clk_enable,
           data,
           ctrl_start,
           ctrl_end,
           ctrl_valid,
           K,
           E,
           ce_out,
           dataOut,
           ctrlOut_start,
           ctrlOut_end,
           ctrlOut_valid,
           nextFrame);


  input   clk;
  input   reset;
  input   clk_enable;
  input   data;
  input   ctrl_start;
  input   ctrl_end;
  input   ctrl_valid;
  input   [9:0] K;  // ufix10
  input   [13:0] E;  // ufix14
  output  ce_out;
  output  dataOut;
  output  ctrlOut_start;
  output  ctrlOut_end;
  output  ctrlOut_valid;
  output  nextFrame;


  wire NR_Polar_Encoder_out1;
  wire NR_Polar_Encoder_out2_start;
  wire NR_Polar_Encoder_out2_end;
  wire NR_Polar_Encoder_out2_valid;


  Polar_Encoder_Bloc my_Polar_Encoder_Bloc (.clk(clk),
                                       .reset(reset),
                                       .enb(clk_enable),
                                       .dataIn(data),
                                       .ctrlIn_start(ctrl_start),
                                       .ctrlIn_end(ctrl_end),
                                       .ctrlIn_valid(ctrl_valid),
                                       .K(K),  // ufix10
                                       .E(E),  // ufix14
                                       .dataOut(NR_Polar_Encoder_out1),
                                       .CtrlOut_start(NR_Polar_Encoder_out2_start),
                                       .CtrlOut_end(NR_Polar_Encoder_out2_end),
                                       .CtrlOut_valid(NR_Polar_Encoder_out2_valid),
                                       .nextFrame(nextFrame)
                                       );

  assign dataOut = NR_Polar_Encoder_out1;

  assign ctrlOut_start = NR_Polar_Encoder_out2_start;

  assign ctrlOut_end = NR_Polar_Encoder_out2_end;

  assign ctrlOut_valid = NR_Polar_Encoder_out2_valid;

  assign ce_out = clk_enable;

endmodule 
