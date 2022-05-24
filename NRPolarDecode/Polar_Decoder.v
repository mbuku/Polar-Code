`timescale 1 ns / 1 ns

module Polar_Decoder
          (clk,
           reset,
           clk_enable,
           In1,
           In2_start,
           In2_end,
           In2_valid,
           In3,
           In4,
           ce_out,
           Out1,
           Out2_start,
           Out2_end,
           Out2_valid,
           Out3,
           Out4);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [5:0] In1;  
  input   In2_start;
  input   In2_end;
  input   In2_valid;
  input   [9:0] In3;  
  input   [13:0] In4;  
  output  ce_out;
  output  Out1;
  output  Out2_start;
  output  Out2_end;
  output  Out2_valid;
  output  Out3;
  output  Out4;


  wire NR_Polar_Decoder_out1;
  wire NR_Polar_Decoder_out2_start;
  wire NR_Polar_Decoder_out2_end;
  wire NR_Polar_Decoder_out2_valid;
  wire NR_Polar_Decoder_out3;
  wire NR_Polar_Decoder_out4;


  Polar_Decoder_Bloc my_Polar_Decoder_Bloc (.clk(clk),
                                       .reset(reset),
                                       .enb(clk_enable),
                                       .in0(In1),  // sfix6
                                       .in1_start(In2_start),
                                       .in1_end(In2_end),
                                       .in1_valid(In2_valid),
                                       .in2(In3),  // ufix10
                                       .in3(In4),  // ufix14
                                       .out0(NR_Polar_Decoder_out1),
                                       .out1_start(NR_Polar_Decoder_out2_start),
                                       .out1_end(NR_Polar_Decoder_out2_end),
                                       .out1_valid(NR_Polar_Decoder_out2_valid),
                                       .out2(NR_Polar_Decoder_out3),
                                       .out3(NR_Polar_Decoder_out4)
                                       );

  assign Out1 = NR_Polar_Decoder_out1;

  assign Out2_start = NR_Polar_Decoder_out2_start;

  assign Out2_end = NR_Polar_Decoder_out2_end;

  assign Out2_valid = NR_Polar_Decoder_out2_valid;

  assign Out3 = NR_Polar_Decoder_out3;

  assign Out4 = NR_Polar_Decoder_out4;

  assign ce_out = clk_enable;

endmodule  

