`timescale 1 ns / 1 ns

module Decoder_Core
          (clk,
           reset,
           enb,
           llrLowerIn_0,
           llrLowerIn_1,
           llrLowerIn_2,
           llrLowerIn_3,
           llrLowerIn_4,
           llrLowerIn_5,
           llrLowerIn_6,
           llrLowerIn_7,
           llrLowerIn_8,
           llrLowerIn_9,
           llrLowerIn_10,
           llrLowerIn_11,
           llrLowerIn_12,
           llrLowerIn_13,
           llrLowerIn_14,
           llrLowerIn_15,
           llrUpperIn_0,
           llrUpperIn_1,
           llrUpperIn_2,
           llrUpperIn_3,
           llrUpperIn_4,
           llrUpperIn_5,
           llrUpperIn_6,
           llrUpperIn_7,
           llrUpperIn_8,
           llrUpperIn_9,
           llrUpperIn_10,
           llrUpperIn_11,
           llrUpperIn_12,
           llrUpperIn_13,
           llrUpperIn_14,
           llrUpperIn_15,
           llrSrc,
           beta_0,
           beta_1,
           beta_2,
           beta_3,
           beta_4,
           beta_5,
           beta_6,
           beta_7,
           beta_8,
           beta_9,
           beta_10,
           beta_11,
           beta_12,
           beta_13,
           beta_14,
           beta_15,
           betaSrc,
           mode,
           llrLowerOut_0,
           llrLowerOut_1,
           llrLowerOut_2,
           llrLowerOut_3,
           llrLowerOut_4,
           llrLowerOut_5,
           llrLowerOut_6,
           llrLowerOut_7,
           llrLowerOut_8,
           llrLowerOut_9,
           llrLowerOut_10,
           llrLowerOut_11,
           llrLowerOut_12,
           llrLowerOut_13,
           llrLowerOut_14,
           llrLowerOut_15,
           llrUpperOut_0,
           llrUpperOut_1,
           llrUpperOut_2,
           llrUpperOut_3,
           llrUpperOut_4,
           llrUpperOut_5,
           llrUpperOut_6,
           llrUpperOut_7,
           llrUpperOut_8,
           llrUpperOut_9,
           llrUpperOut_10,
           llrUpperOut_11,
           llrUpperOut_12,
           llrUpperOut_13,
           llrUpperOut_14,
           llrUpperOut_15,
           llrLeaf);


  input   clk;
  input   reset;
  input   enb;
  input   signed [7:0] llrLowerIn_0;  // sfix8_En5
  input   signed [7:0] llrLowerIn_1;  // sfix8_En5
  input   signed [7:0] llrLowerIn_2;  // sfix8_En5
  input   signed [7:0] llrLowerIn_3;  // sfix8_En5
  input   signed [7:0] llrLowerIn_4;  // sfix8_En5
  input   signed [7:0] llrLowerIn_5;  // sfix8_En5
  input   signed [7:0] llrLowerIn_6;  // sfix8_En5
  input   signed [7:0] llrLowerIn_7;  // sfix8_En5
  input   signed [7:0] llrLowerIn_8;  // sfix8_En5
  input   signed [7:0] llrLowerIn_9;  // sfix8_En5
  input   signed [7:0] llrLowerIn_10;  // sfix8_En5
  input   signed [7:0] llrLowerIn_11;  // sfix8_En5
  input   signed [7:0] llrLowerIn_12;  // sfix8_En5
  input   signed [7:0] llrLowerIn_13;  // sfix8_En5
  input   signed [7:0] llrLowerIn_14;  // sfix8_En5
  input   signed [7:0] llrLowerIn_15;  // sfix8_En5
  input   signed [7:0] llrUpperIn_0;  // sfix8_En5
  input   signed [7:0] llrUpperIn_1;  // sfix8_En5
  input   signed [7:0] llrUpperIn_2;  // sfix8_En5
  input   signed [7:0] llrUpperIn_3;  // sfix8_En5
  input   signed [7:0] llrUpperIn_4;  // sfix8_En5
  input   signed [7:0] llrUpperIn_5;  // sfix8_En5
  input   signed [7:0] llrUpperIn_6;  // sfix8_En5
  input   signed [7:0] llrUpperIn_7;  // sfix8_En5
  input   signed [7:0] llrUpperIn_8;  // sfix8_En5
  input   signed [7:0] llrUpperIn_9;  // sfix8_En5
  input   signed [7:0] llrUpperIn_10;  // sfix8_En5
  input   signed [7:0] llrUpperIn_11;  // sfix8_En5
  input   signed [7:0] llrUpperIn_12;  // sfix8_En5
  input   signed [7:0] llrUpperIn_13;  // sfix8_En5
  input   signed [7:0] llrUpperIn_14;  // sfix8_En5
  input   signed [7:0] llrUpperIn_15;  // sfix8_En5
  input   llrSrc;  // ufix1
  input   beta_0;  // ufix1
  input   beta_1;  // ufix1
  input   beta_2;  // ufix1
  input   beta_3;  // ufix1
  input   beta_4;  // ufix1
  input   beta_5;  // ufix1
  input   beta_6;  // ufix1
  input   beta_7;  // ufix1
  input   beta_8;  // ufix1
  input   beta_9;  // ufix1
  input   beta_10;  // ufix1
  input   beta_11;  // ufix1
  input   beta_12;  // ufix1
  input   beta_13;  // ufix1
  input   beta_14;  // ufix1
  input   beta_15;  // ufix1
  input   betaSrc;
  input   mode;
  output  signed [7:0] llrLowerOut_0;  // sfix8_En5
  output  signed [7:0] llrLowerOut_1;  // sfix8_En5
  output  signed [7:0] llrLowerOut_2;  // sfix8_En5
  output  signed [7:0] llrLowerOut_3;  // sfix8_En5
  output  signed [7:0] llrLowerOut_4;  // sfix8_En5
  output  signed [7:0] llrLowerOut_5;  // sfix8_En5
  output  signed [7:0] llrLowerOut_6;  // sfix8_En5
  output  signed [7:0] llrLowerOut_7;  // sfix8_En5
  output  signed [7:0] llrLowerOut_8;  // sfix8_En5
  output  signed [7:0] llrLowerOut_9;  // sfix8_En5
  output  signed [7:0] llrLowerOut_10;  // sfix8_En5
  output  signed [7:0] llrLowerOut_11;  // sfix8_En5
  output  signed [7:0] llrLowerOut_12;  // sfix8_En5
  output  signed [7:0] llrLowerOut_13;  // sfix8_En5
  output  signed [7:0] llrLowerOut_14;  // sfix8_En5
  output  signed [7:0] llrLowerOut_15;  // sfix8_En5
  output  signed [7:0] llrUpperOut_0;  // sfix8_En5
  output  signed [7:0] llrUpperOut_1;  // sfix8_En5
  output  signed [7:0] llrUpperOut_2;  // sfix8_En5
  output  signed [7:0] llrUpperOut_3;  // sfix8_En5
  output  signed [7:0] llrUpperOut_4;  // sfix8_En5
  output  signed [7:0] llrUpperOut_5;  // sfix8_En5
  output  signed [7:0] llrUpperOut_6;  // sfix8_En5
  output  signed [7:0] llrUpperOut_7;  // sfix8_En5
  output  signed [7:0] llrUpperOut_8;  // sfix8_En5
  output  signed [7:0] llrUpperOut_9;  // sfix8_En5
  output  signed [7:0] llrUpperOut_10;  // sfix8_En5
  output  signed [7:0] llrUpperOut_11;  // sfix8_En5
  output  signed [7:0] llrUpperOut_12;  // sfix8_En5
  output  signed [7:0] llrUpperOut_13;  // sfix8_En5
  output  signed [7:0] llrUpperOut_14;  // sfix8_En5
  output  signed [7:0] llrUpperOut_15;  // sfix8_En5
  output  signed [7:0] llrLeaf;  // sfix8_En5


  wire signed [7:0] llrLowerIn [0:15];  // sfix8_En5 [16]
  reg signed [7:0] llrLowerIn_reg [0:15];  // sfix8_En5 [16]
  wire [0:15] lowerSgn;  // ufix1 [16]
  wire lowerSgn_0;  // ufix1
  wire signed [7:0] llrUpperIn [0:15];  // sfix8_En5 [16]
  reg signed [7:0] llrUpperIn_reg [0:15];  // sfix8_En5 [16]
  wire [0:15] upperSign;  // ufix1 [16]
  wire upperSign_0;  // ufix1
  wire lowerSgn_0_1;  // ufix1
  wire signed [8:0] abs_y [0:15];  // sfix9_En5 [16]
  wire signed [8:0] abs_cast;  // sfix9_En5
  wire signed [8:0] abs_cast_1;  // sfix9_En5
  wire signed [8:0] abs_cast_2;  // sfix9_En5
  wire signed [8:0] abs_cast_3;  // sfix9_En5
  wire signed [8:0] abs_cast_4;  // sfix9_En5
  wire signed [8:0] abs_cast_5;  // sfix9_En5
  wire signed [8:0] abs_cast_6;  // sfix9_En5
  wire signed [8:0] abs_cast_7;  // sfix9_En5
  wire signed [8:0] abs_cast_8;  // sfix9_En5
  wire signed [8:0] abs_cast_9;  // sfix9_En5
  wire signed [8:0] abs_cast_10;  // sfix9_En5
  wire signed [8:0] abs_cast_11;  // sfix9_En5
  wire signed [8:0] abs_cast_12;  // sfix9_En5
  wire signed [8:0] abs_cast_13;  // sfix9_En5
  wire signed [8:0] abs_cast_14;  // sfix9_En5
  wire signed [8:0] abs_cast_15;  // sfix9_En5
  wire signed [7:0] lowerAbs [0:15];  // sfix8_En5 [16]
  wire signed [7:0] lowerAbs_0;  // sfix8_En5
  wire signed [8:0] abs_y_1 [0:15];  // sfix9_En5 [16]
  wire signed [8:0] abs_cast_16;  // sfix9_En5
  wire signed [8:0] abs_cast_17;  // sfix9_En5
  wire signed [8:0] abs_cast_18;  // sfix9_En5
  wire signed [8:0] abs_cast_19;  // sfix9_En5
  wire signed [8:0] abs_cast_20;  // sfix9_En5
  wire signed [8:0] abs_cast_21;  // sfix9_En5
  wire signed [8:0] abs_cast_22;  // sfix9_En5
  wire signed [8:0] abs_cast_23;  // sfix9_En5
  wire signed [8:0] abs_cast_24;  // sfix9_En5
  wire signed [8:0] abs_cast_25;  // sfix9_En5
  wire signed [8:0] abs_cast_26;  // sfix9_En5
  wire signed [8:0] abs_cast_27;  // sfix9_En5
  wire signed [8:0] abs_cast_28;  // sfix9_En5
  wire signed [8:0] abs_cast_29;  // sfix9_En5
  wire signed [8:0] abs_cast_30;  // sfix9_En5
  wire signed [8:0] abs_cast_31;  // sfix9_En5
  wire signed [7:0] upperAbs [0:15];  // sfix8_En5 [16]
  wire signed [7:0] upperAbs_0;  // sfix8_En5
  wire signed [7:0] tempMinAbs_0;  // sfix8_En5
  wire signed [7:0] lowerAbs_1;  // sfix8_En5
  wire signed [7:0] upperAbs_1;  // sfix8_En5
  wire signed [7:0] tempMinAbs_1;  // sfix8_En5
  wire signed [7:0] lowerAbs_2;  // sfix8_En5
  wire signed [7:0] upperAbs_2;  // sfix8_En5
  wire signed [7:0] tempMinAbs_2;  // sfix8_En5
  wire signed [7:0] lowerAbs_3;  // sfix8_En5
  wire signed [7:0] upperAbs_3;  // sfix8_En5
  wire signed [7:0] tempMinAbs_3;  // sfix8_En5
  wire signed [7:0] lowerAbs_4;  // sfix8_En5
  wire signed [7:0] upperAbs_4;  // sfix8_En5
  wire signed [7:0] tempMinAbs_4;  // sfix8_En5
  wire signed [7:0] lowerAbs_5;  // sfix8_En5
  wire signed [7:0] upperAbs_5;  // sfix8_En5
  wire signed [7:0] tempMinAbs_5;  // sfix8_En5
  wire signed [7:0] lowerAbs_6;  // sfix8_En5
  wire signed [7:0] upperAbs_6;  // sfix8_En5
  wire signed [7:0] tempMinAbs_6;  // sfix8_En5
  wire signed [7:0] lowerAbs_7;  // sfix8_En5
  wire signed [7:0] upperAbs_7;  // sfix8_En5
  wire signed [7:0] tempMinAbs_7;  // sfix8_En5
  wire signed [7:0] lowerAbs_8;  // sfix8_En5
  wire signed [7:0] upperAbs_8;  // sfix8_En5
  wire signed [7:0] tempMinAbs_8;  // sfix8_En5
  wire signed [7:0] lowerAbs_9;  // sfix8_En5
  wire signed [7:0] upperAbs_9;  // sfix8_En5
  wire signed [7:0] tempMinAbs_9;  // sfix8_En5
  wire signed [7:0] lowerAbs_10;  // sfix8_En5
  wire signed [7:0] upperAbs_10;  // sfix8_En5
  wire signed [7:0] tempMinAbs_10;  // sfix8_En5
  wire signed [7:0] lowerAbs_11;  // sfix8_En5
  wire signed [7:0] upperAbs_11;  // sfix8_En5
  wire signed [7:0] tempMinAbs_11;  // sfix8_En5
  wire signed [7:0] lowerAbs_12;  // sfix8_En5
  wire signed [7:0] upperAbs_12;  // sfix8_En5
  wire signed [7:0] tempMinAbs_12;  // sfix8_En5
  wire signed [7:0] lowerAbs_13;  // sfix8_En5
  wire signed [7:0] upperAbs_13;  // sfix8_En5
  wire signed [7:0] tempMinAbs_13;  // sfix8_En5
  wire signed [7:0] lowerAbs_14;  // sfix8_En5
  wire signed [7:0] upperAbs_14;  // sfix8_En5
  wire signed [7:0] tempMinAbs_14;  // sfix8_En5
  wire signed [7:0] lowerAbs_15;  // sfix8_En5
  wire signed [7:0] upperAbs_15;  // sfix8_En5
  wire signed [7:0] tempMinAbs_15;  // sfix8_En5
  wire signed [7:0] minAbs [0:15];  // sfix8_En5 [16]
  wire signed [8:0] uminus_cast;  // sfix9_En5
  wire signed [8:0] uminus_cast_1;  // sfix9_En5
  wire signed [8:0] uminus_cast_2;  // sfix9_En5
  wire signed [8:0] uminus_cast_3;  // sfix9_En5
  wire signed [8:0] uminus_cast_4;  // sfix9_En5
  wire signed [8:0] uminus_cast_5;  // sfix9_En5
  wire signed [8:0] uminus_cast_6;  // sfix9_En5
  wire signed [8:0] uminus_cast_7;  // sfix9_En5
  wire signed [8:0] uminus_cast_8;  // sfix9_En5
  wire signed [8:0] uminus_cast_9;  // sfix9_En5
  wire signed [8:0] uminus_cast_10;  // sfix9_En5
  wire signed [8:0] uminus_cast_11;  // sfix9_En5
  wire signed [8:0] uminus_cast_12;  // sfix9_En5
  wire signed [8:0] uminus_cast_13;  // sfix9_En5
  wire signed [8:0] uminus_cast_14;  // sfix9_En5
  wire signed [8:0] uminus_cast_15;  // sfix9_En5
  wire signed [8:0] uminus_cast_16;  // sfix9_En5
  wire signed [8:0] uminus_cast_17;  // sfix9_En5
  wire signed [8:0] uminus_cast_18;  // sfix9_En5
  wire signed [8:0] uminus_cast_19;  // sfix9_En5
  wire signed [8:0] uminus_cast_20;  // sfix9_En5
  wire signed [8:0] uminus_cast_21;  // sfix9_En5
  wire signed [8:0] uminus_cast_22;  // sfix9_En5
  wire signed [8:0] uminus_cast_23;  // sfix9_En5
  wire signed [8:0] uminus_cast_24;  // sfix9_En5
  wire signed [8:0] uminus_cast_25;  // sfix9_En5
  wire signed [8:0] uminus_cast_26;  // sfix9_En5
  wire signed [8:0] uminus_cast_27;  // sfix9_En5
  wire signed [8:0] uminus_cast_28;  // sfix9_En5
  wire signed [8:0] uminus_cast_29;  // sfix9_En5
  wire signed [8:0] uminus_cast_30;  // sfix9_En5
  wire signed [8:0] uminus_cast_31;  // sfix9_En5
  wire signed [7:0] negMinAbs [0:15];  // sfix8_En5 [16]
  wire signed [7:0] negMinAbs_0;  // sfix8_En5
  wire signed [7:0] leftOut_0;  // sfix8_En5
  wire lowerSgn_1;  // ufix1
  wire upperSign_1;  // ufix1
  wire lowerSgn_1_1;  // ufix1
  wire signed [7:0] negMinAbs_1;  // sfix8_En5
  wire signed [7:0] leftOut_1;  // sfix8_En5
  wire lowerSgn_2;  // ufix1
  wire upperSign_2;  // ufix1
  wire lowerSgn_2_1;  // ufix1
  wire signed [7:0] negMinAbs_2;  // sfix8_En5
  wire signed [7:0] leftOut_2;  // sfix8_En5
  wire lowerSgn_3;  // ufix1
  wire upperSign_3;  // ufix1
  wire lowerSgn_3_1;  // ufix1
  wire signed [7:0] negMinAbs_3;  // sfix8_En5
  wire signed [7:0] leftOut_3;  // sfix8_En5
  wire lowerSgn_4;  // ufix1
  wire upperSign_4;  // ufix1
  wire lowerSgn_4_1;  // ufix1
  wire signed [7:0] negMinAbs_4;  // sfix8_En5
  wire signed [7:0] leftOut_4;  // sfix8_En5
  wire lowerSgn_5;  // ufix1
  wire upperSign_5;  // ufix1
  wire lowerSgn_5_1;  // ufix1
  wire signed [7:0] negMinAbs_5;  // sfix8_En5
  wire signed [7:0] leftOut_5;  // sfix8_En5
  wire lowerSgn_6;  // ufix1
  wire upperSign_6;  // ufix1
  wire lowerSgn_6_1;  // ufix1
  wire signed [7:0] negMinAbs_6;  // sfix8_En5
  wire signed [7:0] leftOut_6;  // sfix8_En5
  wire lowerSgn_7;  // ufix1
  wire upperSign_7;  // ufix1
  wire lowerSgn_7_1;  // ufix1
  wire signed [7:0] negMinAbs_7;  // sfix8_En5
  wire signed [7:0] leftOut_7;  // sfix8_En5
  wire lowerSgn_8;  // ufix1
  wire upperSign_8;  // ufix1
  wire lowerSgn_8_1;  // ufix1
  wire signed [7:0] negMinAbs_8;  // sfix8_En5
  wire signed [7:0] leftOut_8;  // sfix8_En5
  wire lowerSgn_9;  // ufix1
  wire upperSign_9;  // ufix1
  wire lowerSgn_9_1;  // ufix1
  wire signed [7:0] negMinAbs_9;  // sfix8_En5
  wire signed [7:0] leftOut_9;  // sfix8_En5
  wire lowerSgn_10;  // ufix1
  wire upperSign_10;  // ufix1
  wire lowerSgn_10_1;  // ufix1
  wire signed [7:0] negMinAbs_10;  // sfix8_En5
  wire signed [7:0] leftOut_10;  // sfix8_En5
  wire lowerSgn_11;  // ufix1
  wire upperSign_11;  // ufix1
  wire lowerSgn_11_1;  // ufix1
  wire signed [7:0] negMinAbs_11;  // sfix8_En5
  wire signed [7:0] leftOut_11;  // sfix8_En5
  wire lowerSgn_12;  // ufix1
  wire upperSign_12;  // ufix1
  wire lowerSgn_12_1;  // ufix1
  wire signed [7:0] negMinAbs_12;  // sfix8_En5
  wire signed [7:0] leftOut_12;  // sfix8_En5
  wire lowerSgn_13;  // ufix1
  wire upperSign_13;  // ufix1
  wire lowerSgn_13_1;  // ufix1
  wire signed [7:0] negMinAbs_13;  // sfix8_En5
  wire signed [7:0] leftOut_13;  // sfix8_En5
  wire lowerSgn_14;  // ufix1
  wire upperSign_14;  // ufix1
  wire lowerSgn_14_1;  // ufix1
  wire signed [7:0] negMinAbs_14;  // sfix8_En5
  wire signed [7:0] leftOut_14;  // sfix8_En5
  wire lowerSgn_15;  // ufix1
  wire upperSign_15;  // ufix1
  wire lowerSgn_15_1;  // ufix1
  wire signed [7:0] negMinAbs_15;  // sfix8_En5
  wire betaCatConst;  // ufix1
  wire [0:15] betaReordCat;  // ufix1 [16]
  wire [0:15] beta;  // ufix1 [16]
  wire [0:15] betaSel;  // ufix1 [16]
  reg  [0:15] betaSel_reg;  // ufix1 [16]
  wire betaSel_reg_0;  // ufix1
  wire signed [7:0] llrLowerIn_reg_0;  // sfix8_En5
  wire signed [8:0] uminus_cast_32;  // sfix9_En5
  wire signed [8:0] uminus_cast_33;  // sfix9_En5
  wire signed [8:0] uminus_cast_34;  // sfix9_En5
  wire signed [8:0] uminus_cast_35;  // sfix9_En5
  wire signed [8:0] uminus_cast_36;  // sfix9_En5
  wire signed [8:0] uminus_cast_37;  // sfix9_En5
  wire signed [8:0] uminus_cast_38;  // sfix9_En5
  wire signed [8:0] uminus_cast_39;  // sfix9_En5
  wire signed [8:0] uminus_cast_40;  // sfix9_En5
  wire signed [8:0] uminus_cast_41;  // sfix9_En5
  wire signed [8:0] uminus_cast_42;  // sfix9_En5
  wire signed [8:0] uminus_cast_43;  // sfix9_En5
  wire signed [8:0] uminus_cast_44;  // sfix9_En5
  wire signed [8:0] uminus_cast_45;  // sfix9_En5
  wire signed [8:0] uminus_cast_46;  // sfix9_En5
  wire signed [8:0] uminus_cast_47;  // sfix9_En5
  wire signed [8:0] uminus_cast_48;  // sfix9_En5
  wire signed [8:0] uminus_cast_49;  // sfix9_En5
  wire signed [8:0] uminus_cast_50;  // sfix9_En5
  wire signed [8:0] uminus_cast_51;  // sfix9_En5
  wire signed [8:0] uminus_cast_52;  // sfix9_En5
  wire signed [8:0] uminus_cast_53;  // sfix9_En5
  wire signed [8:0] uminus_cast_54;  // sfix9_En5
  wire signed [8:0] uminus_cast_55;  // sfix9_En5
  wire signed [8:0] uminus_cast_56;  // sfix9_En5
  wire signed [8:0] uminus_cast_57;  // sfix9_En5
  wire signed [8:0] uminus_cast_58;  // sfix9_En5
  wire signed [8:0] uminus_cast_59;  // sfix9_En5
  wire signed [8:0] uminus_cast_60;  // sfix9_En5
  wire signed [8:0] uminus_cast_61;  // sfix9_En5
  wire signed [8:0] uminus_cast_62;  // sfix9_En5
  wire signed [8:0] uminus_cast_63;  // sfix9_En5
  wire signed [7:0] negLlrLowerIn [0:15];  // sfix8_En5 [16]
  wire betaSel_reg_1;  // ufix1
  wire signed [7:0] llrLowerIn_reg_1;  // sfix8_En5
  wire betaSel_reg_2;  // ufix1
  wire signed [7:0] llrLowerIn_reg_2;  // sfix8_En5
  wire betaSel_reg_3;  // ufix1
  wire signed [7:0] llrLowerIn_reg_3;  // sfix8_En5
  wire betaSel_reg_4;  // ufix1
  wire signed [7:0] llrLowerIn_reg_4;  // sfix8_En5
  wire betaSel_reg_5;  // ufix1
  wire signed [7:0] llrLowerIn_reg_5;  // sfix8_En5
  wire betaSel_reg_6;  // ufix1
  wire signed [7:0] llrLowerIn_reg_6;  // sfix8_En5
  wire betaSel_reg_7;  // ufix1
  wire signed [7:0] llrLowerIn_reg_7;  // sfix8_En5
  wire betaSel_reg_8;  // ufix1
  wire signed [7:0] llrLowerIn_reg_8;  // sfix8_En5
  wire betaSel_reg_9;  // ufix1
  wire signed [7:0] llrLowerIn_reg_9;  // sfix8_En5
  wire betaSel_reg_10;  // ufix1
  wire signed [7:0] llrLowerIn_reg_10;  // sfix8_En5
  wire betaSel_reg_11;  // ufix1
  wire signed [7:0] llrLowerIn_reg_11;  // sfix8_En5
  wire betaSel_reg_12;  // ufix1
  wire signed [7:0] llrLowerIn_reg_12;  // sfix8_En5
  wire betaSel_reg_13;  // ufix1
  wire signed [7:0] llrLowerIn_reg_13;  // sfix8_En5
  wire betaSel_reg_14;  // ufix1
  wire signed [7:0] llrLowerIn_reg_14;  // sfix8_En5
  wire betaSel_reg_15;  // ufix1
  wire signed [7:0] llrLowerIn_reg_15;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_0;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_0;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_1;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_1;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_2;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_2;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_3;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_3;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_4;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_4;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_5;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_5;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_6;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_6;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_7;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_7;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_8;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_8;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_9;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_9;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_10;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_10;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_11;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_11;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_12;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_12;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_13;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_13;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_14;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_14;  // sfix8_En5
  wire signed [7:0] negLlrLowerIn_15;  // sfix8_En5
  wire signed [7:0] llrLowerInSel_15;  // sfix8_En5
  wire signed [7:0] llrLowerInSel [0:15];  // sfix8_En5 [16]
  reg  mode_reg;
  wire signed [7:0] leftOut_15;  // sfix8_En5
  wire signed [7:0] leftOut [0:15];  // sfix8_En5 [16]
  wire signed [8:0] adder_add_cast;  // sfix9_En5
  wire signed [8:0] adder_add_cast_1;  // sfix9_En5
  wire signed [8:0] adder_add_temp;  // sfix9_En5
  wire signed [8:0] adder_add_cast_2;  // sfix9_En5
  wire signed [8:0] adder_add_cast_3;  // sfix9_En5
  wire signed [8:0] adder_add_temp_1;  // sfix9_En5
  wire signed [8:0] adder_add_cast_4;  // sfix9_En5
  wire signed [8:0] adder_add_cast_5;  // sfix9_En5
  wire signed [8:0] adder_add_temp_2;  // sfix9_En5
  wire signed [8:0] adder_add_cast_6;  // sfix9_En5
  wire signed [8:0] adder_add_cast_7;  // sfix9_En5
  wire signed [8:0] adder_add_temp_3;  // sfix9_En5
  wire signed [8:0] adder_add_cast_8;  // sfix9_En5
  wire signed [8:0] adder_add_cast_9;  // sfix9_En5
  wire signed [8:0] adder_add_temp_4;  // sfix9_En5
  wire signed [8:0] adder_add_cast_10;  // sfix9_En5
  wire signed [8:0] adder_add_cast_11;  // sfix9_En5
  wire signed [8:0] adder_add_temp_5;  // sfix9_En5
  wire signed [8:0] adder_add_cast_12;  // sfix9_En5
  wire signed [8:0] adder_add_cast_13;  // sfix9_En5
  wire signed [8:0] adder_add_temp_6;  // sfix9_En5
  wire signed [8:0] adder_add_cast_14;  // sfix9_En5
  wire signed [8:0] adder_add_cast_15;  // sfix9_En5
  wire signed [8:0] adder_add_temp_7;  // sfix9_En5
  wire signed [8:0] adder_add_cast_16;  // sfix9_En5
  wire signed [8:0] adder_add_cast_17;  // sfix9_En5
  wire signed [8:0] adder_add_temp_8;  // sfix9_En5
  wire signed [8:0] adder_add_cast_18;  // sfix9_En5
  wire signed [8:0] adder_add_cast_19;  // sfix9_En5
  wire signed [8:0] adder_add_temp_9;  // sfix9_En5
  wire signed [8:0] adder_add_cast_20;  // sfix9_En5
  wire signed [8:0] adder_add_cast_21;  // sfix9_En5
  wire signed [8:0] adder_add_temp_10;  // sfix9_En5
  wire signed [8:0] adder_add_cast_22;  // sfix9_En5
  wire signed [8:0] adder_add_cast_23;  // sfix9_En5
  wire signed [8:0] adder_add_temp_11;  // sfix9_En5
  wire signed [8:0] adder_add_cast_24;  // sfix9_En5
  wire signed [8:0] adder_add_cast_25;  // sfix9_En5
  wire signed [8:0] adder_add_temp_12;  // sfix9_En5
  wire signed [8:0] adder_add_cast_26;  // sfix9_En5
  wire signed [8:0] adder_add_cast_27;  // sfix9_En5
  wire signed [8:0] adder_add_temp_13;  // sfix9_En5
  wire signed [8:0] adder_add_cast_28;  // sfix9_En5
  wire signed [8:0] adder_add_cast_29;  // sfix9_En5
  wire signed [8:0] adder_add_temp_14;  // sfix9_En5
  wire signed [8:0] adder_add_cast_30;  // sfix9_En5
  wire signed [8:0] adder_add_cast_31;  // sfix9_En5
  wire signed [8:0] adder_add_temp_15;  // sfix9_En5
  wire signed [7:0] llrSum [0:15];  // sfix8_En5 [16]
  wire signed [7:0] rightOut [0:15];  // sfix8_En5 [16]
  wire signed [7:0] leftRightSel [0:15];  // sfix8_En5 [16]
  reg signed [7:0] leftRightSel_reg [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrCatConst;  // sfix8_En5
  wire signed [7:0] llrLowerReordCat [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrLowerOut [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrUpperReordCat [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrUpperOut [0:15];  // sfix8_En5 [16]


  assign llrLowerIn[0] = llrLowerIn_0;
  assign llrLowerIn[1] = llrLowerIn_1;
  assign llrLowerIn[2] = llrLowerIn_2;
  assign llrLowerIn[3] = llrLowerIn_3;
  assign llrLowerIn[4] = llrLowerIn_4;
  assign llrLowerIn[5] = llrLowerIn_5;
  assign llrLowerIn[6] = llrLowerIn_6;
  assign llrLowerIn[7] = llrLowerIn_7;
  assign llrLowerIn[8] = llrLowerIn_8;
  assign llrLowerIn[9] = llrLowerIn_9;
  assign llrLowerIn[10] = llrLowerIn_10;
  assign llrLowerIn[11] = llrLowerIn_11;
  assign llrLowerIn[12] = llrLowerIn_12;
  assign llrLowerIn[13] = llrLowerIn_13;
  assign llrLowerIn[14] = llrLowerIn_14;
  assign llrLowerIn[15] = llrLowerIn_15;

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_process
      if (reset == 1'b1) begin
        llrLowerIn_reg[0] <= 8'sb00000000;
        llrLowerIn_reg[1] <= 8'sb00000000;
        llrLowerIn_reg[2] <= 8'sb00000000;
        llrLowerIn_reg[3] <= 8'sb00000000;
        llrLowerIn_reg[4] <= 8'sb00000000;
        llrLowerIn_reg[5] <= 8'sb00000000;
        llrLowerIn_reg[6] <= 8'sb00000000;
        llrLowerIn_reg[7] <= 8'sb00000000;
        llrLowerIn_reg[8] <= 8'sb00000000;
        llrLowerIn_reg[9] <= 8'sb00000000;
        llrLowerIn_reg[10] <= 8'sb00000000;
        llrLowerIn_reg[11] <= 8'sb00000000;
        llrLowerIn_reg[12] <= 8'sb00000000;
        llrLowerIn_reg[13] <= 8'sb00000000;
        llrLowerIn_reg[14] <= 8'sb00000000;
        llrLowerIn_reg[15] <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          llrLowerIn_reg[0] <= llrLowerIn[0];
          llrLowerIn_reg[1] <= llrLowerIn[1];
          llrLowerIn_reg[2] <= llrLowerIn[2];
          llrLowerIn_reg[3] <= llrLowerIn[3];
          llrLowerIn_reg[4] <= llrLowerIn[4];
          llrLowerIn_reg[5] <= llrLowerIn[5];
          llrLowerIn_reg[6] <= llrLowerIn[6];
          llrLowerIn_reg[7] <= llrLowerIn[7];
          llrLowerIn_reg[8] <= llrLowerIn[8];
          llrLowerIn_reg[9] <= llrLowerIn[9];
          llrLowerIn_reg[10] <= llrLowerIn[10];
          llrLowerIn_reg[11] <= llrLowerIn[11];
          llrLowerIn_reg[12] <= llrLowerIn[12];
          llrLowerIn_reg[13] <= llrLowerIn[13];
          llrLowerIn_reg[14] <= llrLowerIn[14];
          llrLowerIn_reg[15] <= llrLowerIn[15];
        end
      end
    end



  assign lowerSgn[0] = llrLowerIn_reg[0][7];
  assign lowerSgn[1] = llrLowerIn_reg[1][7];
  assign lowerSgn[2] = llrLowerIn_reg[2][7];
  assign lowerSgn[3] = llrLowerIn_reg[3][7];
  assign lowerSgn[4] = llrLowerIn_reg[4][7];
  assign lowerSgn[5] = llrLowerIn_reg[5][7];
  assign lowerSgn[6] = llrLowerIn_reg[6][7];
  assign lowerSgn[7] = llrLowerIn_reg[7][7];
  assign lowerSgn[8] = llrLowerIn_reg[8][7];
  assign lowerSgn[9] = llrLowerIn_reg[9][7];
  assign lowerSgn[10] = llrLowerIn_reg[10][7];
  assign lowerSgn[11] = llrLowerIn_reg[11][7];
  assign lowerSgn[12] = llrLowerIn_reg[12][7];
  assign lowerSgn[13] = llrLowerIn_reg[13][7];
  assign lowerSgn[14] = llrLowerIn_reg[14][7];
  assign lowerSgn[15] = llrLowerIn_reg[15][7];



  assign lowerSgn_0 = lowerSgn[0];

  assign llrUpperIn[0] = llrUpperIn_0;
  assign llrUpperIn[1] = llrUpperIn_1;
  assign llrUpperIn[2] = llrUpperIn_2;
  assign llrUpperIn[3] = llrUpperIn_3;
  assign llrUpperIn[4] = llrUpperIn_4;
  assign llrUpperIn[5] = llrUpperIn_5;
  assign llrUpperIn[6] = llrUpperIn_6;
  assign llrUpperIn[7] = llrUpperIn_7;
  assign llrUpperIn[8] = llrUpperIn_8;
  assign llrUpperIn[9] = llrUpperIn_9;
  assign llrUpperIn[10] = llrUpperIn_10;
  assign llrUpperIn[11] = llrUpperIn_11;
  assign llrUpperIn[12] = llrUpperIn_12;
  assign llrUpperIn[13] = llrUpperIn_13;
  assign llrUpperIn[14] = llrUpperIn_14;
  assign llrUpperIn[15] = llrUpperIn_15;

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_1_process
      if (reset == 1'b1) begin
        llrUpperIn_reg[0] <= 8'sb00000000;
        llrUpperIn_reg[1] <= 8'sb00000000;
        llrUpperIn_reg[2] <= 8'sb00000000;
        llrUpperIn_reg[3] <= 8'sb00000000;
        llrUpperIn_reg[4] <= 8'sb00000000;
        llrUpperIn_reg[5] <= 8'sb00000000;
        llrUpperIn_reg[6] <= 8'sb00000000;
        llrUpperIn_reg[7] <= 8'sb00000000;
        llrUpperIn_reg[8] <= 8'sb00000000;
        llrUpperIn_reg[9] <= 8'sb00000000;
        llrUpperIn_reg[10] <= 8'sb00000000;
        llrUpperIn_reg[11] <= 8'sb00000000;
        llrUpperIn_reg[12] <= 8'sb00000000;
        llrUpperIn_reg[13] <= 8'sb00000000;
        llrUpperIn_reg[14] <= 8'sb00000000;
        llrUpperIn_reg[15] <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          llrUpperIn_reg[0] <= llrUpperIn[0];
          llrUpperIn_reg[1] <= llrUpperIn[1];
          llrUpperIn_reg[2] <= llrUpperIn[2];
          llrUpperIn_reg[3] <= llrUpperIn[3];
          llrUpperIn_reg[4] <= llrUpperIn[4];
          llrUpperIn_reg[5] <= llrUpperIn[5];
          llrUpperIn_reg[6] <= llrUpperIn[6];
          llrUpperIn_reg[7] <= llrUpperIn[7];
          llrUpperIn_reg[8] <= llrUpperIn[8];
          llrUpperIn_reg[9] <= llrUpperIn[9];
          llrUpperIn_reg[10] <= llrUpperIn[10];
          llrUpperIn_reg[11] <= llrUpperIn[11];
          llrUpperIn_reg[12] <= llrUpperIn[12];
          llrUpperIn_reg[13] <= llrUpperIn[13];
          llrUpperIn_reg[14] <= llrUpperIn[14];
          llrUpperIn_reg[15] <= llrUpperIn[15];
        end
      end
    end



  assign upperSign[0] = llrUpperIn_reg[0][7];
  assign upperSign[1] = llrUpperIn_reg[1][7];
  assign upperSign[2] = llrUpperIn_reg[2][7];
  assign upperSign[3] = llrUpperIn_reg[3][7];
  assign upperSign[4] = llrUpperIn_reg[4][7];
  assign upperSign[5] = llrUpperIn_reg[5][7];
  assign upperSign[6] = llrUpperIn_reg[6][7];
  assign upperSign[7] = llrUpperIn_reg[7][7];
  assign upperSign[8] = llrUpperIn_reg[8][7];
  assign upperSign[9] = llrUpperIn_reg[9][7];
  assign upperSign[10] = llrUpperIn_reg[10][7];
  assign upperSign[11] = llrUpperIn_reg[11][7];
  assign upperSign[12] = llrUpperIn_reg[12][7];
  assign upperSign[13] = llrUpperIn_reg[13][7];
  assign upperSign[14] = llrUpperIn_reg[14][7];
  assign upperSign[15] = llrUpperIn_reg[15][7];



  assign upperSign_0 = upperSign[0];

  assign lowerSgn_0_1 = lowerSgn_0 ^ upperSign_0;



  assign abs_cast = {llrLowerIn_reg[0][7], llrLowerIn_reg[0]};
  assign abs_y[0] = (llrLowerIn_reg[0] < 8'sb00000000 ?  - (abs_cast) :
              {llrLowerIn_reg[0][7], llrLowerIn_reg[0]});
  assign abs_cast_1 = {llrLowerIn_reg[1][7], llrLowerIn_reg[1]};
  assign abs_y[1] = (llrLowerIn_reg[1] < 8'sb00000000 ?  - (abs_cast_1) :
              {llrLowerIn_reg[1][7], llrLowerIn_reg[1]});
  assign abs_cast_2 = {llrLowerIn_reg[2][7], llrLowerIn_reg[2]};
  assign abs_y[2] = (llrLowerIn_reg[2] < 8'sb00000000 ?  - (abs_cast_2) :
              {llrLowerIn_reg[2][7], llrLowerIn_reg[2]});
  assign abs_cast_3 = {llrLowerIn_reg[3][7], llrLowerIn_reg[3]};
  assign abs_y[3] = (llrLowerIn_reg[3] < 8'sb00000000 ?  - (abs_cast_3) :
              {llrLowerIn_reg[3][7], llrLowerIn_reg[3]});
  assign abs_cast_4 = {llrLowerIn_reg[4][7], llrLowerIn_reg[4]};
  assign abs_y[4] = (llrLowerIn_reg[4] < 8'sb00000000 ?  - (abs_cast_4) :
              {llrLowerIn_reg[4][7], llrLowerIn_reg[4]});
  assign abs_cast_5 = {llrLowerIn_reg[5][7], llrLowerIn_reg[5]};
  assign abs_y[5] = (llrLowerIn_reg[5] < 8'sb00000000 ?  - (abs_cast_5) :
              {llrLowerIn_reg[5][7], llrLowerIn_reg[5]});
  assign abs_cast_6 = {llrLowerIn_reg[6][7], llrLowerIn_reg[6]};
  assign abs_y[6] = (llrLowerIn_reg[6] < 8'sb00000000 ?  - (abs_cast_6) :
              {llrLowerIn_reg[6][7], llrLowerIn_reg[6]});
  assign abs_cast_7 = {llrLowerIn_reg[7][7], llrLowerIn_reg[7]};
  assign abs_y[7] = (llrLowerIn_reg[7] < 8'sb00000000 ?  - (abs_cast_7) :
              {llrLowerIn_reg[7][7], llrLowerIn_reg[7]});
  assign abs_cast_8 = {llrLowerIn_reg[8][7], llrLowerIn_reg[8]};
  assign abs_y[8] = (llrLowerIn_reg[8] < 8'sb00000000 ?  - (abs_cast_8) :
              {llrLowerIn_reg[8][7], llrLowerIn_reg[8]});
  assign abs_cast_9 = {llrLowerIn_reg[9][7], llrLowerIn_reg[9]};
  assign abs_y[9] = (llrLowerIn_reg[9] < 8'sb00000000 ?  - (abs_cast_9) :
              {llrLowerIn_reg[9][7], llrLowerIn_reg[9]});
  assign abs_cast_10 = {llrLowerIn_reg[10][7], llrLowerIn_reg[10]};
  assign abs_y[10] = (llrLowerIn_reg[10] < 8'sb00000000 ?  - (abs_cast_10) :
              {llrLowerIn_reg[10][7], llrLowerIn_reg[10]});
  assign abs_cast_11 = {llrLowerIn_reg[11][7], llrLowerIn_reg[11]};
  assign abs_y[11] = (llrLowerIn_reg[11] < 8'sb00000000 ?  - (abs_cast_11) :
              {llrLowerIn_reg[11][7], llrLowerIn_reg[11]});
  assign abs_cast_12 = {llrLowerIn_reg[12][7], llrLowerIn_reg[12]};
  assign abs_y[12] = (llrLowerIn_reg[12] < 8'sb00000000 ?  - (abs_cast_12) :
              {llrLowerIn_reg[12][7], llrLowerIn_reg[12]});
  assign abs_cast_13 = {llrLowerIn_reg[13][7], llrLowerIn_reg[13]};
  assign abs_y[13] = (llrLowerIn_reg[13] < 8'sb00000000 ?  - (abs_cast_13) :
              {llrLowerIn_reg[13][7], llrLowerIn_reg[13]});
  assign abs_cast_14 = {llrLowerIn_reg[14][7], llrLowerIn_reg[14]};
  assign abs_y[14] = (llrLowerIn_reg[14] < 8'sb00000000 ?  - (abs_cast_14) :
              {llrLowerIn_reg[14][7], llrLowerIn_reg[14]});
  assign abs_cast_15 = {llrLowerIn_reg[15][7], llrLowerIn_reg[15]};
  assign abs_y[15] = (llrLowerIn_reg[15] < 8'sb00000000 ?  - (abs_cast_15) :
              {llrLowerIn_reg[15][7], llrLowerIn_reg[15]});
  assign lowerAbs[0] = abs_y[0][7:0];
  assign lowerAbs[1] = abs_y[1][7:0];
  assign lowerAbs[2] = abs_y[2][7:0];
  assign lowerAbs[3] = abs_y[3][7:0];
  assign lowerAbs[4] = abs_y[4][7:0];
  assign lowerAbs[5] = abs_y[5][7:0];
  assign lowerAbs[6] = abs_y[6][7:0];
  assign lowerAbs[7] = abs_y[7][7:0];
  assign lowerAbs[8] = abs_y[8][7:0];
  assign lowerAbs[9] = abs_y[9][7:0];
  assign lowerAbs[10] = abs_y[10][7:0];
  assign lowerAbs[11] = abs_y[11][7:0];
  assign lowerAbs[12] = abs_y[12][7:0];
  assign lowerAbs[13] = abs_y[13][7:0];
  assign lowerAbs[14] = abs_y[14][7:0];
  assign lowerAbs[15] = abs_y[15][7:0];



  assign lowerAbs_0 = lowerAbs[0];

  assign abs_cast_16 = {llrUpperIn_reg[0][7], llrUpperIn_reg[0]};
  assign abs_y_1[0] = (llrUpperIn_reg[0] < 8'sb00000000 ?  - (abs_cast_16) :
              {llrUpperIn_reg[0][7], llrUpperIn_reg[0]});
  assign abs_cast_17 = {llrUpperIn_reg[1][7], llrUpperIn_reg[1]};
  assign abs_y_1[1] = (llrUpperIn_reg[1] < 8'sb00000000 ?  - (abs_cast_17) :
              {llrUpperIn_reg[1][7], llrUpperIn_reg[1]});
  assign abs_cast_18 = {llrUpperIn_reg[2][7], llrUpperIn_reg[2]};
  assign abs_y_1[2] = (llrUpperIn_reg[2] < 8'sb00000000 ?  - (abs_cast_18) :
              {llrUpperIn_reg[2][7], llrUpperIn_reg[2]});
  assign abs_cast_19 = {llrUpperIn_reg[3][7], llrUpperIn_reg[3]};
  assign abs_y_1[3] = (llrUpperIn_reg[3] < 8'sb00000000 ?  - (abs_cast_19) :
              {llrUpperIn_reg[3][7], llrUpperIn_reg[3]});
  assign abs_cast_20 = {llrUpperIn_reg[4][7], llrUpperIn_reg[4]};
  assign abs_y_1[4] = (llrUpperIn_reg[4] < 8'sb00000000 ?  - (abs_cast_20) :
              {llrUpperIn_reg[4][7], llrUpperIn_reg[4]});
  assign abs_cast_21 = {llrUpperIn_reg[5][7], llrUpperIn_reg[5]};
  assign abs_y_1[5] = (llrUpperIn_reg[5] < 8'sb00000000 ?  - (abs_cast_21) :
              {llrUpperIn_reg[5][7], llrUpperIn_reg[5]});
  assign abs_cast_22 = {llrUpperIn_reg[6][7], llrUpperIn_reg[6]};
  assign abs_y_1[6] = (llrUpperIn_reg[6] < 8'sb00000000 ?  - (abs_cast_22) :
              {llrUpperIn_reg[6][7], llrUpperIn_reg[6]});
  assign abs_cast_23 = {llrUpperIn_reg[7][7], llrUpperIn_reg[7]};
  assign abs_y_1[7] = (llrUpperIn_reg[7] < 8'sb00000000 ?  - (abs_cast_23) :
              {llrUpperIn_reg[7][7], llrUpperIn_reg[7]});
  assign abs_cast_24 = {llrUpperIn_reg[8][7], llrUpperIn_reg[8]};
  assign abs_y_1[8] = (llrUpperIn_reg[8] < 8'sb00000000 ?  - (abs_cast_24) :
              {llrUpperIn_reg[8][7], llrUpperIn_reg[8]});
  assign abs_cast_25 = {llrUpperIn_reg[9][7], llrUpperIn_reg[9]};
  assign abs_y_1[9] = (llrUpperIn_reg[9] < 8'sb00000000 ?  - (abs_cast_25) :
              {llrUpperIn_reg[9][7], llrUpperIn_reg[9]});
  assign abs_cast_26 = {llrUpperIn_reg[10][7], llrUpperIn_reg[10]};
  assign abs_y_1[10] = (llrUpperIn_reg[10] < 8'sb00000000 ?  - (abs_cast_26) :
              {llrUpperIn_reg[10][7], llrUpperIn_reg[10]});
  assign abs_cast_27 = {llrUpperIn_reg[11][7], llrUpperIn_reg[11]};
  assign abs_y_1[11] = (llrUpperIn_reg[11] < 8'sb00000000 ?  - (abs_cast_27) :
              {llrUpperIn_reg[11][7], llrUpperIn_reg[11]});
  assign abs_cast_28 = {llrUpperIn_reg[12][7], llrUpperIn_reg[12]};
  assign abs_y_1[12] = (llrUpperIn_reg[12] < 8'sb00000000 ?  - (abs_cast_28) :
              {llrUpperIn_reg[12][7], llrUpperIn_reg[12]});
  assign abs_cast_29 = {llrUpperIn_reg[13][7], llrUpperIn_reg[13]};
  assign abs_y_1[13] = (llrUpperIn_reg[13] < 8'sb00000000 ?  - (abs_cast_29) :
              {llrUpperIn_reg[13][7], llrUpperIn_reg[13]});
  assign abs_cast_30 = {llrUpperIn_reg[14][7], llrUpperIn_reg[14]};
  assign abs_y_1[14] = (llrUpperIn_reg[14] < 8'sb00000000 ?  - (abs_cast_30) :
              {llrUpperIn_reg[14][7], llrUpperIn_reg[14]});
  assign abs_cast_31 = {llrUpperIn_reg[15][7], llrUpperIn_reg[15]};
  assign abs_y_1[15] = (llrUpperIn_reg[15] < 8'sb00000000 ?  - (abs_cast_31) :
              {llrUpperIn_reg[15][7], llrUpperIn_reg[15]});
  assign upperAbs[0] = abs_y_1[0][7:0];
  assign upperAbs[1] = abs_y_1[1][7:0];
  assign upperAbs[2] = abs_y_1[2][7:0];
  assign upperAbs[3] = abs_y_1[3][7:0];
  assign upperAbs[4] = abs_y_1[4][7:0];
  assign upperAbs[5] = abs_y_1[5][7:0];
  assign upperAbs[6] = abs_y_1[6][7:0];
  assign upperAbs[7] = abs_y_1[7][7:0];
  assign upperAbs[8] = abs_y_1[8][7:0];
  assign upperAbs[9] = abs_y_1[9][7:0];
  assign upperAbs[10] = abs_y_1[10][7:0];
  assign upperAbs[11] = abs_y_1[11][7:0];
  assign upperAbs[12] = abs_y_1[12][7:0];
  assign upperAbs[13] = abs_y_1[13][7:0];
  assign upperAbs[14] = abs_y_1[14][7:0];
  assign upperAbs[15] = abs_y_1[15][7:0];



  assign upperAbs_0 = upperAbs[0];

  assign tempMinAbs_0 = (lowerAbs_0 <= upperAbs_0 ? lowerAbs_0 :
              upperAbs_0);



  assign lowerAbs_1 = lowerAbs[1];

  assign upperAbs_1 = upperAbs[1];

  assign tempMinAbs_1 = (lowerAbs_1 <= upperAbs_1 ? lowerAbs_1 :
              upperAbs_1);



  assign lowerAbs_2 = lowerAbs[2];

  assign upperAbs_2 = upperAbs[2];

  assign tempMinAbs_2 = (lowerAbs_2 <= upperAbs_2 ? lowerAbs_2 :
              upperAbs_2);



  assign lowerAbs_3 = lowerAbs[3];

  assign upperAbs_3 = upperAbs[3];

  assign tempMinAbs_3 = (lowerAbs_3 <= upperAbs_3 ? lowerAbs_3 :
              upperAbs_3);



  assign lowerAbs_4 = lowerAbs[4];

  assign upperAbs_4 = upperAbs[4];

  assign tempMinAbs_4 = (lowerAbs_4 <= upperAbs_4 ? lowerAbs_4 :
              upperAbs_4);



  assign lowerAbs_5 = lowerAbs[5];

  assign upperAbs_5 = upperAbs[5];

  assign tempMinAbs_5 = (lowerAbs_5 <= upperAbs_5 ? lowerAbs_5 :
              upperAbs_5);



  assign lowerAbs_6 = lowerAbs[6];

  assign upperAbs_6 = upperAbs[6];

  assign tempMinAbs_6 = (lowerAbs_6 <= upperAbs_6 ? lowerAbs_6 :
              upperAbs_6);



  assign lowerAbs_7 = lowerAbs[7];

  assign upperAbs_7 = upperAbs[7];

  assign tempMinAbs_7 = (lowerAbs_7 <= upperAbs_7 ? lowerAbs_7 :
              upperAbs_7);



  assign lowerAbs_8 = lowerAbs[8];

  assign upperAbs_8 = upperAbs[8];

  assign tempMinAbs_8 = (lowerAbs_8 <= upperAbs_8 ? lowerAbs_8 :
              upperAbs_8);



  assign lowerAbs_9 = lowerAbs[9];

  assign upperAbs_9 = upperAbs[9];

  assign tempMinAbs_9 = (lowerAbs_9 <= upperAbs_9 ? lowerAbs_9 :
              upperAbs_9);



  assign lowerAbs_10 = lowerAbs[10];

  assign upperAbs_10 = upperAbs[10];

  assign tempMinAbs_10 = (lowerAbs_10 <= upperAbs_10 ? lowerAbs_10 :
              upperAbs_10);



  assign lowerAbs_11 = lowerAbs[11];

  assign upperAbs_11 = upperAbs[11];

  assign tempMinAbs_11 = (lowerAbs_11 <= upperAbs_11 ? lowerAbs_11 :
              upperAbs_11);



  assign lowerAbs_12 = lowerAbs[12];

  assign upperAbs_12 = upperAbs[12];

  assign tempMinAbs_12 = (lowerAbs_12 <= upperAbs_12 ? lowerAbs_12 :
              upperAbs_12);



  assign lowerAbs_13 = lowerAbs[13];

  assign upperAbs_13 = upperAbs[13];

  assign tempMinAbs_13 = (lowerAbs_13 <= upperAbs_13 ? lowerAbs_13 :
              upperAbs_13);



  assign lowerAbs_14 = lowerAbs[14];

  assign upperAbs_14 = upperAbs[14];

  assign tempMinAbs_14 = (lowerAbs_14 <= upperAbs_14 ? lowerAbs_14 :
              upperAbs_14);



  assign lowerAbs_15 = lowerAbs[15];

  assign upperAbs_15 = upperAbs[15];

  assign tempMinAbs_15 = (lowerAbs_15 <= upperAbs_15 ? lowerAbs_15 :
              upperAbs_15);



  assign minAbs[0] = tempMinAbs_0;
  assign minAbs[1] = tempMinAbs_1;
  assign minAbs[2] = tempMinAbs_2;
  assign minAbs[3] = tempMinAbs_3;
  assign minAbs[4] = tempMinAbs_4;
  assign minAbs[5] = tempMinAbs_5;
  assign minAbs[6] = tempMinAbs_6;
  assign minAbs[7] = tempMinAbs_7;
  assign minAbs[8] = tempMinAbs_8;
  assign minAbs[9] = tempMinAbs_9;
  assign minAbs[10] = tempMinAbs_10;
  assign minAbs[11] = tempMinAbs_11;
  assign minAbs[12] = tempMinAbs_12;
  assign minAbs[13] = tempMinAbs_13;
  assign minAbs[14] = tempMinAbs_14;
  assign minAbs[15] = tempMinAbs_15;

  assign uminus_cast = {minAbs[0][7], minAbs[0]};
  assign uminus_cast_1 =  - (uminus_cast);
  assign negMinAbs[0] = uminus_cast_1[7:0];
  assign uminus_cast_2 = {minAbs[1][7], minAbs[1]};
  assign uminus_cast_3 =  - (uminus_cast_2);
  assign negMinAbs[1] = uminus_cast_3[7:0];
  assign uminus_cast_4 = {minAbs[2][7], minAbs[2]};
  assign uminus_cast_5 =  - (uminus_cast_4);
  assign negMinAbs[2] = uminus_cast_5[7:0];
  assign uminus_cast_6 = {minAbs[3][7], minAbs[3]};
  assign uminus_cast_7 =  - (uminus_cast_6);
  assign negMinAbs[3] = uminus_cast_7[7:0];
  assign uminus_cast_8 = {minAbs[4][7], minAbs[4]};
  assign uminus_cast_9 =  - (uminus_cast_8);
  assign negMinAbs[4] = uminus_cast_9[7:0];
  assign uminus_cast_10 = {minAbs[5][7], minAbs[5]};
  assign uminus_cast_11 =  - (uminus_cast_10);
  assign negMinAbs[5] = uminus_cast_11[7:0];
  assign uminus_cast_12 = {minAbs[6][7], minAbs[6]};
  assign uminus_cast_13 =  - (uminus_cast_12);
  assign negMinAbs[6] = uminus_cast_13[7:0];
  assign uminus_cast_14 = {minAbs[7][7], minAbs[7]};
  assign uminus_cast_15 =  - (uminus_cast_14);
  assign negMinAbs[7] = uminus_cast_15[7:0];
  assign uminus_cast_16 = {minAbs[8][7], minAbs[8]};
  assign uminus_cast_17 =  - (uminus_cast_16);
  assign negMinAbs[8] = uminus_cast_17[7:0];
  assign uminus_cast_18 = {minAbs[9][7], minAbs[9]};
  assign uminus_cast_19 =  - (uminus_cast_18);
  assign negMinAbs[9] = uminus_cast_19[7:0];
  assign uminus_cast_20 = {minAbs[10][7], minAbs[10]};
  assign uminus_cast_21 =  - (uminus_cast_20);
  assign negMinAbs[10] = uminus_cast_21[7:0];
  assign uminus_cast_22 = {minAbs[11][7], minAbs[11]};
  assign uminus_cast_23 =  - (uminus_cast_22);
  assign negMinAbs[11] = uminus_cast_23[7:0];
  assign uminus_cast_24 = {minAbs[12][7], minAbs[12]};
  assign uminus_cast_25 =  - (uminus_cast_24);
  assign negMinAbs[12] = uminus_cast_25[7:0];
  assign uminus_cast_26 = {minAbs[13][7], minAbs[13]};
  assign uminus_cast_27 =  - (uminus_cast_26);
  assign negMinAbs[13] = uminus_cast_27[7:0];
  assign uminus_cast_28 = {minAbs[14][7], minAbs[14]};
  assign uminus_cast_29 =  - (uminus_cast_28);
  assign negMinAbs[14] = uminus_cast_29[7:0];
  assign uminus_cast_30 = {minAbs[15][7], minAbs[15]};
  assign uminus_cast_31 =  - (uminus_cast_30);
  assign negMinAbs[15] = uminus_cast_31[7:0];



  assign negMinAbs_0 = negMinAbs[0];

  assign leftOut_0 = (lowerSgn_0_1 == 1'b0 ? tempMinAbs_0 :
              negMinAbs_0);



  assign lowerSgn_1 = lowerSgn[1];

  assign upperSign_1 = upperSign[1];

  assign lowerSgn_1_1 = lowerSgn_1 ^ upperSign_1;



  assign negMinAbs_1 = negMinAbs[1];

  assign leftOut_1 = (lowerSgn_1_1 == 1'b0 ? tempMinAbs_1 :
              negMinAbs_1);



  assign lowerSgn_2 = lowerSgn[2];

  assign upperSign_2 = upperSign[2];

  assign lowerSgn_2_1 = lowerSgn_2 ^ upperSign_2;



  assign negMinAbs_2 = negMinAbs[2];

  assign leftOut_2 = (lowerSgn_2_1 == 1'b0 ? tempMinAbs_2 :
              negMinAbs_2);



  assign lowerSgn_3 = lowerSgn[3];

  assign upperSign_3 = upperSign[3];

  assign lowerSgn_3_1 = lowerSgn_3 ^ upperSign_3;



  assign negMinAbs_3 = negMinAbs[3];

  assign leftOut_3 = (lowerSgn_3_1 == 1'b0 ? tempMinAbs_3 :
              negMinAbs_3);



  assign lowerSgn_4 = lowerSgn[4];

  assign upperSign_4 = upperSign[4];

  assign lowerSgn_4_1 = lowerSgn_4 ^ upperSign_4;



  assign negMinAbs_4 = negMinAbs[4];

  assign leftOut_4 = (lowerSgn_4_1 == 1'b0 ? tempMinAbs_4 :
              negMinAbs_4);



  assign lowerSgn_5 = lowerSgn[5];

  assign upperSign_5 = upperSign[5];

  assign lowerSgn_5_1 = lowerSgn_5 ^ upperSign_5;



  assign negMinAbs_5 = negMinAbs[5];

  assign leftOut_5 = (lowerSgn_5_1 == 1'b0 ? tempMinAbs_5 :
              negMinAbs_5);



  assign lowerSgn_6 = lowerSgn[6];

  assign upperSign_6 = upperSign[6];

  assign lowerSgn_6_1 = lowerSgn_6 ^ upperSign_6;



  assign negMinAbs_6 = negMinAbs[6];

  assign leftOut_6 = (lowerSgn_6_1 == 1'b0 ? tempMinAbs_6 :
              negMinAbs_6);



  assign lowerSgn_7 = lowerSgn[7];

  assign upperSign_7 = upperSign[7];

  assign lowerSgn_7_1 = lowerSgn_7 ^ upperSign_7;



  assign negMinAbs_7 = negMinAbs[7];

  assign leftOut_7 = (lowerSgn_7_1 == 1'b0 ? tempMinAbs_7 :
              negMinAbs_7);



  assign lowerSgn_8 = lowerSgn[8];

  assign upperSign_8 = upperSign[8];

  assign lowerSgn_8_1 = lowerSgn_8 ^ upperSign_8;



  assign negMinAbs_8 = negMinAbs[8];

  assign leftOut_8 = (lowerSgn_8_1 == 1'b0 ? tempMinAbs_8 :
              negMinAbs_8);



  assign lowerSgn_9 = lowerSgn[9];

  assign upperSign_9 = upperSign[9];

  assign lowerSgn_9_1 = lowerSgn_9 ^ upperSign_9;



  assign negMinAbs_9 = negMinAbs[9];

  assign leftOut_9 = (lowerSgn_9_1 == 1'b0 ? tempMinAbs_9 :
              negMinAbs_9);



  assign lowerSgn_10 = lowerSgn[10];

  assign upperSign_10 = upperSign[10];

  assign lowerSgn_10_1 = lowerSgn_10 ^ upperSign_10;



  assign negMinAbs_10 = negMinAbs[10];

  assign leftOut_10 = (lowerSgn_10_1 == 1'b0 ? tempMinAbs_10 :
              negMinAbs_10);



  assign lowerSgn_11 = lowerSgn[11];

  assign upperSign_11 = upperSign[11];

  assign lowerSgn_11_1 = lowerSgn_11 ^ upperSign_11;



  assign negMinAbs_11 = negMinAbs[11];

  assign leftOut_11 = (lowerSgn_11_1 == 1'b0 ? tempMinAbs_11 :
              negMinAbs_11);



  assign lowerSgn_12 = lowerSgn[12];

  assign upperSign_12 = upperSign[12];

  assign lowerSgn_12_1 = lowerSgn_12 ^ upperSign_12;



  assign negMinAbs_12 = negMinAbs[12];

  assign leftOut_12 = (lowerSgn_12_1 == 1'b0 ? tempMinAbs_12 :
              negMinAbs_12);



  assign lowerSgn_13 = lowerSgn[13];

  assign upperSign_13 = upperSign[13];

  assign lowerSgn_13_1 = lowerSgn_13 ^ upperSign_13;



  assign negMinAbs_13 = negMinAbs[13];

  assign leftOut_13 = (lowerSgn_13_1 == 1'b0 ? tempMinAbs_13 :
              negMinAbs_13);



  assign lowerSgn_14 = lowerSgn[14];

  assign upperSign_14 = upperSign[14];

  assign lowerSgn_14_1 = lowerSgn_14 ^ upperSign_14;



  assign negMinAbs_14 = negMinAbs[14];

  assign leftOut_14 = (lowerSgn_14_1 == 1'b0 ? tempMinAbs_14 :
              negMinAbs_14);



  assign lowerSgn_15 = lowerSgn[15];

  assign upperSign_15 = upperSign[15];

  assign lowerSgn_15_1 = lowerSgn_15 ^ upperSign_15;



  assign negMinAbs_15 = negMinAbs[15];

  assign betaCatConst = 1'b0;



  assign betaReordCat[0] = beta_0;
  assign betaReordCat[1] = beta_0;
  assign betaReordCat[2] = beta_1;
  assign betaReordCat[3] = beta_0;
  assign betaReordCat[4] = beta_1;
  assign betaReordCat[5] = beta_2;
  assign betaReordCat[6] = beta_3;
  assign betaReordCat[7] = beta_0;
  assign betaReordCat[8] = beta_1;
  assign betaReordCat[9] = beta_2;
  assign betaReordCat[10] = beta_3;
  assign betaReordCat[11] = beta_4;
  assign betaReordCat[12] = beta_5;
  assign betaReordCat[13] = beta_6;
  assign betaReordCat[14] = beta_7;
  assign betaReordCat[15] = betaCatConst;

  assign beta[0] = beta_0;
  assign beta[1] = beta_1;
  assign beta[2] = beta_2;
  assign beta[3] = beta_3;
  assign beta[4] = beta_4;
  assign beta[5] = beta_5;
  assign beta[6] = beta_6;
  assign beta[7] = beta_7;
  assign beta[8] = beta_8;
  assign beta[9] = beta_9;
  assign beta[10] = beta_10;
  assign beta[11] = beta_11;
  assign beta[12] = beta_12;
  assign beta[13] = beta_13;
  assign beta[14] = beta_14;
  assign beta[15] = beta_15;

  assign betaSel[0] = (betaSrc == 1'b0 ? betaReordCat[0] :
              beta[0]);
  assign betaSel[1] = (betaSrc == 1'b0 ? betaReordCat[1] :
              beta[1]);
  assign betaSel[2] = (betaSrc == 1'b0 ? betaReordCat[2] :
              beta[2]);
  assign betaSel[3] = (betaSrc == 1'b0 ? betaReordCat[3] :
              beta[3]);
  assign betaSel[4] = (betaSrc == 1'b0 ? betaReordCat[4] :
              beta[4]);
  assign betaSel[5] = (betaSrc == 1'b0 ? betaReordCat[5] :
              beta[5]);
  assign betaSel[6] = (betaSrc == 1'b0 ? betaReordCat[6] :
              beta[6]);
  assign betaSel[7] = (betaSrc == 1'b0 ? betaReordCat[7] :
              beta[7]);
  assign betaSel[8] = (betaSrc == 1'b0 ? betaReordCat[8] :
              beta[8]);
  assign betaSel[9] = (betaSrc == 1'b0 ? betaReordCat[9] :
              beta[9]);
  assign betaSel[10] = (betaSrc == 1'b0 ? betaReordCat[10] :
              beta[10]);
  assign betaSel[11] = (betaSrc == 1'b0 ? betaReordCat[11] :
              beta[11]);
  assign betaSel[12] = (betaSrc == 1'b0 ? betaReordCat[12] :
              beta[12]);
  assign betaSel[13] = (betaSrc == 1'b0 ? betaReordCat[13] :
              beta[13]);
  assign betaSel[14] = (betaSrc == 1'b0 ? betaReordCat[14] :
              beta[14]);
  assign betaSel[15] = (betaSrc == 1'b0 ? betaReordCat[15] :
              beta[15]);



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_2_process
      if (reset == 1'b1) begin
        betaSel_reg[0] <= 1'b0;
        betaSel_reg[1] <= 1'b0;
        betaSel_reg[2] <= 1'b0;
        betaSel_reg[3] <= 1'b0;
        betaSel_reg[4] <= 1'b0;
        betaSel_reg[5] <= 1'b0;
        betaSel_reg[6] <= 1'b0;
        betaSel_reg[7] <= 1'b0;
        betaSel_reg[8] <= 1'b0;
        betaSel_reg[9] <= 1'b0;
        betaSel_reg[10] <= 1'b0;
        betaSel_reg[11] <= 1'b0;
        betaSel_reg[12] <= 1'b0;
        betaSel_reg[13] <= 1'b0;
        betaSel_reg[14] <= 1'b0;
        betaSel_reg[15] <= 1'b0;
      end
      else begin
        if (enb) begin
          betaSel_reg[0] <= betaSel[0];
          betaSel_reg[1] <= betaSel[1];
          betaSel_reg[2] <= betaSel[2];
          betaSel_reg[3] <= betaSel[3];
          betaSel_reg[4] <= betaSel[4];
          betaSel_reg[5] <= betaSel[5];
          betaSel_reg[6] <= betaSel[6];
          betaSel_reg[7] <= betaSel[7];
          betaSel_reg[8] <= betaSel[8];
          betaSel_reg[9] <= betaSel[9];
          betaSel_reg[10] <= betaSel[10];
          betaSel_reg[11] <= betaSel[11];
          betaSel_reg[12] <= betaSel[12];
          betaSel_reg[13] <= betaSel[13];
          betaSel_reg[14] <= betaSel[14];
          betaSel_reg[15] <= betaSel[15];
        end
      end
    end



  assign betaSel_reg_0 = betaSel_reg[0];

  assign llrLowerIn_reg_0 = llrLowerIn_reg[0];

  assign uminus_cast_32 = {llrLowerIn_reg[0][7], llrLowerIn_reg[0]};
  assign uminus_cast_33 =  - (uminus_cast_32);
  assign negLlrLowerIn[0] = uminus_cast_33[7:0];
  assign uminus_cast_34 = {llrLowerIn_reg[1][7], llrLowerIn_reg[1]};
  assign uminus_cast_35 =  - (uminus_cast_34);
  assign negLlrLowerIn[1] = uminus_cast_35[7:0];
  assign uminus_cast_36 = {llrLowerIn_reg[2][7], llrLowerIn_reg[2]};
  assign uminus_cast_37 =  - (uminus_cast_36);
  assign negLlrLowerIn[2] = uminus_cast_37[7:0];
  assign uminus_cast_38 = {llrLowerIn_reg[3][7], llrLowerIn_reg[3]};
  assign uminus_cast_39 =  - (uminus_cast_38);
  assign negLlrLowerIn[3] = uminus_cast_39[7:0];
  assign uminus_cast_40 = {llrLowerIn_reg[4][7], llrLowerIn_reg[4]};
  assign uminus_cast_41 =  - (uminus_cast_40);
  assign negLlrLowerIn[4] = uminus_cast_41[7:0];
  assign uminus_cast_42 = {llrLowerIn_reg[5][7], llrLowerIn_reg[5]};
  assign uminus_cast_43 =  - (uminus_cast_42);
  assign negLlrLowerIn[5] = uminus_cast_43[7:0];
  assign uminus_cast_44 = {llrLowerIn_reg[6][7], llrLowerIn_reg[6]};
  assign uminus_cast_45 =  - (uminus_cast_44);
  assign negLlrLowerIn[6] = uminus_cast_45[7:0];
  assign uminus_cast_46 = {llrLowerIn_reg[7][7], llrLowerIn_reg[7]};
  assign uminus_cast_47 =  - (uminus_cast_46);
  assign negLlrLowerIn[7] = uminus_cast_47[7:0];
  assign uminus_cast_48 = {llrLowerIn_reg[8][7], llrLowerIn_reg[8]};
  assign uminus_cast_49 =  - (uminus_cast_48);
  assign negLlrLowerIn[8] = uminus_cast_49[7:0];
  assign uminus_cast_50 = {llrLowerIn_reg[9][7], llrLowerIn_reg[9]};
  assign uminus_cast_51 =  - (uminus_cast_50);
  assign negLlrLowerIn[9] = uminus_cast_51[7:0];
  assign uminus_cast_52 = {llrLowerIn_reg[10][7], llrLowerIn_reg[10]};
  assign uminus_cast_53 =  - (uminus_cast_52);
  assign negLlrLowerIn[10] = uminus_cast_53[7:0];
  assign uminus_cast_54 = {llrLowerIn_reg[11][7], llrLowerIn_reg[11]};
  assign uminus_cast_55 =  - (uminus_cast_54);
  assign negLlrLowerIn[11] = uminus_cast_55[7:0];
  assign uminus_cast_56 = {llrLowerIn_reg[12][7], llrLowerIn_reg[12]};
  assign uminus_cast_57 =  - (uminus_cast_56);
  assign negLlrLowerIn[12] = uminus_cast_57[7:0];
  assign uminus_cast_58 = {llrLowerIn_reg[13][7], llrLowerIn_reg[13]};
  assign uminus_cast_59 =  - (uminus_cast_58);
  assign negLlrLowerIn[13] = uminus_cast_59[7:0];
  assign uminus_cast_60 = {llrLowerIn_reg[14][7], llrLowerIn_reg[14]};
  assign uminus_cast_61 =  - (uminus_cast_60);
  assign negLlrLowerIn[14] = uminus_cast_61[7:0];
  assign uminus_cast_62 = {llrLowerIn_reg[15][7], llrLowerIn_reg[15]};
  assign uminus_cast_63 =  - (uminus_cast_62);
  assign negLlrLowerIn[15] = uminus_cast_63[7:0];



  assign betaSel_reg_1 = betaSel_reg[1];

  assign llrLowerIn_reg_1 = llrLowerIn_reg[1];

  assign betaSel_reg_2 = betaSel_reg[2];

  assign llrLowerIn_reg_2 = llrLowerIn_reg[2];

  assign betaSel_reg_3 = betaSel_reg[3];

  assign llrLowerIn_reg_3 = llrLowerIn_reg[3];

  assign betaSel_reg_4 = betaSel_reg[4];

  assign llrLowerIn_reg_4 = llrLowerIn_reg[4];

  assign betaSel_reg_5 = betaSel_reg[5];

  assign llrLowerIn_reg_5 = llrLowerIn_reg[5];

  assign betaSel_reg_6 = betaSel_reg[6];

  assign llrLowerIn_reg_6 = llrLowerIn_reg[6];

  assign betaSel_reg_7 = betaSel_reg[7];

  assign llrLowerIn_reg_7 = llrLowerIn_reg[7];

  assign betaSel_reg_8 = betaSel_reg[8];

  assign llrLowerIn_reg_8 = llrLowerIn_reg[8];

  assign betaSel_reg_9 = betaSel_reg[9];

  assign llrLowerIn_reg_9 = llrLowerIn_reg[9];

  assign betaSel_reg_10 = betaSel_reg[10];

  assign llrLowerIn_reg_10 = llrLowerIn_reg[10];

  assign betaSel_reg_11 = betaSel_reg[11];

  assign llrLowerIn_reg_11 = llrLowerIn_reg[11];

  assign betaSel_reg_12 = betaSel_reg[12];

  assign llrLowerIn_reg_12 = llrLowerIn_reg[12];

  assign betaSel_reg_13 = betaSel_reg[13];

  assign llrLowerIn_reg_13 = llrLowerIn_reg[13];

  assign betaSel_reg_14 = betaSel_reg[14];

  assign llrLowerIn_reg_14 = llrLowerIn_reg[14];

  assign betaSel_reg_15 = betaSel_reg[15];

  assign llrLowerIn_reg_15 = llrLowerIn_reg[15];

  assign negLlrLowerIn_0 = negLlrLowerIn[0];

  assign llrLowerInSel_0 = (betaSel_reg_0 == 1'b0 ? llrLowerIn_reg_0 :
              negLlrLowerIn_0);



  assign negLlrLowerIn_1 = negLlrLowerIn[1];

  assign llrLowerInSel_1 = (betaSel_reg_1 == 1'b0 ? llrLowerIn_reg_1 :
              negLlrLowerIn_1);



  assign negLlrLowerIn_2 = negLlrLowerIn[2];

  assign llrLowerInSel_2 = (betaSel_reg_2 == 1'b0 ? llrLowerIn_reg_2 :
              negLlrLowerIn_2);



  assign negLlrLowerIn_3 = negLlrLowerIn[3];

  assign llrLowerInSel_3 = (betaSel_reg_3 == 1'b0 ? llrLowerIn_reg_3 :
              negLlrLowerIn_3);



  assign negLlrLowerIn_4 = negLlrLowerIn[4];

  assign llrLowerInSel_4 = (betaSel_reg_4 == 1'b0 ? llrLowerIn_reg_4 :
              negLlrLowerIn_4);



  assign negLlrLowerIn_5 = negLlrLowerIn[5];

  assign llrLowerInSel_5 = (betaSel_reg_5 == 1'b0 ? llrLowerIn_reg_5 :
              negLlrLowerIn_5);



  assign negLlrLowerIn_6 = negLlrLowerIn[6];

  assign llrLowerInSel_6 = (betaSel_reg_6 == 1'b0 ? llrLowerIn_reg_6 :
              negLlrLowerIn_6);



  assign negLlrLowerIn_7 = negLlrLowerIn[7];

  assign llrLowerInSel_7 = (betaSel_reg_7 == 1'b0 ? llrLowerIn_reg_7 :
              negLlrLowerIn_7);



  assign negLlrLowerIn_8 = negLlrLowerIn[8];

  assign llrLowerInSel_8 = (betaSel_reg_8 == 1'b0 ? llrLowerIn_reg_8 :
              negLlrLowerIn_8);



  assign negLlrLowerIn_9 = negLlrLowerIn[9];

  assign llrLowerInSel_9 = (betaSel_reg_9 == 1'b0 ? llrLowerIn_reg_9 :
              negLlrLowerIn_9);



  assign negLlrLowerIn_10 = negLlrLowerIn[10];

  assign llrLowerInSel_10 = (betaSel_reg_10 == 1'b0 ? llrLowerIn_reg_10 :
              negLlrLowerIn_10);



  assign negLlrLowerIn_11 = negLlrLowerIn[11];

  assign llrLowerInSel_11 = (betaSel_reg_11 == 1'b0 ? llrLowerIn_reg_11 :
              negLlrLowerIn_11);



  assign negLlrLowerIn_12 = negLlrLowerIn[12];

  assign llrLowerInSel_12 = (betaSel_reg_12 == 1'b0 ? llrLowerIn_reg_12 :
              negLlrLowerIn_12);



  assign negLlrLowerIn_13 = negLlrLowerIn[13];

  assign llrLowerInSel_13 = (betaSel_reg_13 == 1'b0 ? llrLowerIn_reg_13 :
              negLlrLowerIn_13);



  assign negLlrLowerIn_14 = negLlrLowerIn[14];

  assign llrLowerInSel_14 = (betaSel_reg_14 == 1'b0 ? llrLowerIn_reg_14 :
              negLlrLowerIn_14);



  assign negLlrLowerIn_15 = negLlrLowerIn[15];

  assign llrLowerInSel_15 = (betaSel_reg_15 == 1'b0 ? llrLowerIn_reg_15 :
              negLlrLowerIn_15);



  assign llrLowerInSel[0] = llrLowerInSel_0;
  assign llrLowerInSel[1] = llrLowerInSel_1;
  assign llrLowerInSel[2] = llrLowerInSel_2;
  assign llrLowerInSel[3] = llrLowerInSel_3;
  assign llrLowerInSel[4] = llrLowerInSel_4;
  assign llrLowerInSel[5] = llrLowerInSel_5;
  assign llrLowerInSel[6] = llrLowerInSel_6;
  assign llrLowerInSel[7] = llrLowerInSel_7;
  assign llrLowerInSel[8] = llrLowerInSel_8;
  assign llrLowerInSel[9] = llrLowerInSel_9;
  assign llrLowerInSel[10] = llrLowerInSel_10;
  assign llrLowerInSel[11] = llrLowerInSel_11;
  assign llrLowerInSel[12] = llrLowerInSel_12;
  assign llrLowerInSel[13] = llrLowerInSel_13;
  assign llrLowerInSel[14] = llrLowerInSel_14;
  assign llrLowerInSel[15] = llrLowerInSel_15;

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_3_process
      if (reset == 1'b1) begin
        mode_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          mode_reg <= mode;
        end
      end
    end



  assign leftOut_15 = (lowerSgn_15_1 == 1'b0 ? tempMinAbs_15 :
              negMinAbs_15);



  assign leftOut[0] = leftOut_0;
  assign leftOut[1] = leftOut_1;
  assign leftOut[2] = leftOut_2;
  assign leftOut[3] = leftOut_3;
  assign leftOut[4] = leftOut_4;
  assign leftOut[5] = leftOut_5;
  assign leftOut[6] = leftOut_6;
  assign leftOut[7] = leftOut_7;
  assign leftOut[8] = leftOut_8;
  assign leftOut[9] = leftOut_9;
  assign leftOut[10] = leftOut_10;
  assign leftOut[11] = leftOut_11;
  assign leftOut[12] = leftOut_12;
  assign leftOut[13] = leftOut_13;
  assign leftOut[14] = leftOut_14;
  assign leftOut[15] = leftOut_15;

  assign adder_add_cast = {llrLowerInSel[0][7], llrLowerInSel[0]};
  assign adder_add_cast_1 = {llrUpperIn_reg[0][7], llrUpperIn_reg[0]};
  assign adder_add_temp = adder_add_cast + adder_add_cast_1;
  assign llrSum[0] = ((adder_add_temp[8] == 1'b0) && (adder_add_temp[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp[8] == 1'b1) && (adder_add_temp[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp[7:0])));
  assign adder_add_cast_2 = {llrLowerInSel[1][7], llrLowerInSel[1]};
  assign adder_add_cast_3 = {llrUpperIn_reg[1][7], llrUpperIn_reg[1]};
  assign adder_add_temp_1 = adder_add_cast_2 + adder_add_cast_3;
  assign llrSum[1] = ((adder_add_temp_1[8] == 1'b0) && (adder_add_temp_1[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_1[8] == 1'b1) && (adder_add_temp_1[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_1[7:0])));
  assign adder_add_cast_4 = {llrLowerInSel[2][7], llrLowerInSel[2]};
  assign adder_add_cast_5 = {llrUpperIn_reg[2][7], llrUpperIn_reg[2]};
  assign adder_add_temp_2 = adder_add_cast_4 + adder_add_cast_5;
  assign llrSum[2] = ((adder_add_temp_2[8] == 1'b0) && (adder_add_temp_2[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_2[8] == 1'b1) && (adder_add_temp_2[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_2[7:0])));
  assign adder_add_cast_6 = {llrLowerInSel[3][7], llrLowerInSel[3]};
  assign adder_add_cast_7 = {llrUpperIn_reg[3][7], llrUpperIn_reg[3]};
  assign adder_add_temp_3 = adder_add_cast_6 + adder_add_cast_7;
  assign llrSum[3] = ((adder_add_temp_3[8] == 1'b0) && (adder_add_temp_3[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_3[8] == 1'b1) && (adder_add_temp_3[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_3[7:0])));
  assign adder_add_cast_8 = {llrLowerInSel[4][7], llrLowerInSel[4]};
  assign adder_add_cast_9 = {llrUpperIn_reg[4][7], llrUpperIn_reg[4]};
  assign adder_add_temp_4 = adder_add_cast_8 + adder_add_cast_9;
  assign llrSum[4] = ((adder_add_temp_4[8] == 1'b0) && (adder_add_temp_4[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_4[8] == 1'b1) && (adder_add_temp_4[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_4[7:0])));
  assign adder_add_cast_10 = {llrLowerInSel[5][7], llrLowerInSel[5]};
  assign adder_add_cast_11 = {llrUpperIn_reg[5][7], llrUpperIn_reg[5]};
  assign adder_add_temp_5 = adder_add_cast_10 + adder_add_cast_11;
  assign llrSum[5] = ((adder_add_temp_5[8] == 1'b0) && (adder_add_temp_5[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_5[8] == 1'b1) && (adder_add_temp_5[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_5[7:0])));
  assign adder_add_cast_12 = {llrLowerInSel[6][7], llrLowerInSel[6]};
  assign adder_add_cast_13 = {llrUpperIn_reg[6][7], llrUpperIn_reg[6]};
  assign adder_add_temp_6 = adder_add_cast_12 + adder_add_cast_13;
  assign llrSum[6] = ((adder_add_temp_6[8] == 1'b0) && (adder_add_temp_6[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_6[8] == 1'b1) && (adder_add_temp_6[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_6[7:0])));
  assign adder_add_cast_14 = {llrLowerInSel[7][7], llrLowerInSel[7]};
  assign adder_add_cast_15 = {llrUpperIn_reg[7][7], llrUpperIn_reg[7]};
  assign adder_add_temp_7 = adder_add_cast_14 + adder_add_cast_15;
  assign llrSum[7] = ((adder_add_temp_7[8] == 1'b0) && (adder_add_temp_7[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_7[8] == 1'b1) && (adder_add_temp_7[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_7[7:0])));
  assign adder_add_cast_16 = {llrLowerInSel[8][7], llrLowerInSel[8]};
  assign adder_add_cast_17 = {llrUpperIn_reg[8][7], llrUpperIn_reg[8]};
  assign adder_add_temp_8 = adder_add_cast_16 + adder_add_cast_17;
  assign llrSum[8] = ((adder_add_temp_8[8] == 1'b0) && (adder_add_temp_8[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_8[8] == 1'b1) && (adder_add_temp_8[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_8[7:0])));
  assign adder_add_cast_18 = {llrLowerInSel[9][7], llrLowerInSel[9]};
  assign adder_add_cast_19 = {llrUpperIn_reg[9][7], llrUpperIn_reg[9]};
  assign adder_add_temp_9 = adder_add_cast_18 + adder_add_cast_19;
  assign llrSum[9] = ((adder_add_temp_9[8] == 1'b0) && (adder_add_temp_9[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_9[8] == 1'b1) && (adder_add_temp_9[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_9[7:0])));
  assign adder_add_cast_20 = {llrLowerInSel[10][7], llrLowerInSel[10]};
  assign adder_add_cast_21 = {llrUpperIn_reg[10][7], llrUpperIn_reg[10]};
  assign adder_add_temp_10 = adder_add_cast_20 + adder_add_cast_21;
  assign llrSum[10] = ((adder_add_temp_10[8] == 1'b0) && (adder_add_temp_10[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_10[8] == 1'b1) && (adder_add_temp_10[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_10[7:0])));
  assign adder_add_cast_22 = {llrLowerInSel[11][7], llrLowerInSel[11]};
  assign adder_add_cast_23 = {llrUpperIn_reg[11][7], llrUpperIn_reg[11]};
  assign adder_add_temp_11 = adder_add_cast_22 + adder_add_cast_23;
  assign llrSum[11] = ((adder_add_temp_11[8] == 1'b0) && (adder_add_temp_11[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_11[8] == 1'b1) && (adder_add_temp_11[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_11[7:0])));
  assign adder_add_cast_24 = {llrLowerInSel[12][7], llrLowerInSel[12]};
  assign adder_add_cast_25 = {llrUpperIn_reg[12][7], llrUpperIn_reg[12]};
  assign adder_add_temp_12 = adder_add_cast_24 + adder_add_cast_25;
  assign llrSum[12] = ((adder_add_temp_12[8] == 1'b0) && (adder_add_temp_12[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_12[8] == 1'b1) && (adder_add_temp_12[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_12[7:0])));
  assign adder_add_cast_26 = {llrLowerInSel[13][7], llrLowerInSel[13]};
  assign adder_add_cast_27 = {llrUpperIn_reg[13][7], llrUpperIn_reg[13]};
  assign adder_add_temp_13 = adder_add_cast_26 + adder_add_cast_27;
  assign llrSum[13] = ((adder_add_temp_13[8] == 1'b0) && (adder_add_temp_13[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_13[8] == 1'b1) && (adder_add_temp_13[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_13[7:0])));
  assign adder_add_cast_28 = {llrLowerInSel[14][7], llrLowerInSel[14]};
  assign adder_add_cast_29 = {llrUpperIn_reg[14][7], llrUpperIn_reg[14]};
  assign adder_add_temp_14 = adder_add_cast_28 + adder_add_cast_29;
  assign llrSum[14] = ((adder_add_temp_14[8] == 1'b0) && (adder_add_temp_14[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_14[8] == 1'b1) && (adder_add_temp_14[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_14[7:0])));
  assign adder_add_cast_30 = {llrLowerInSel[15][7], llrLowerInSel[15]};
  assign adder_add_cast_31 = {llrUpperIn_reg[15][7], llrUpperIn_reg[15]};
  assign adder_add_temp_15 = adder_add_cast_30 + adder_add_cast_31;
  assign llrSum[15] = ((adder_add_temp_15[8] == 1'b0) && (adder_add_temp_15[7] != 1'b0) ? 8'sb01111111 :
              ((adder_add_temp_15[8] == 1'b1) && (adder_add_temp_15[7] != 1'b1) ? 8'sb10000000 :
              $signed(adder_add_temp_15[7:0])));



  assign rightOut[0] = (llrSum[0] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[0]);
  assign rightOut[1] = (llrSum[1] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[1]);
  assign rightOut[2] = (llrSum[2] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[2]);
  assign rightOut[3] = (llrSum[3] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[3]);
  assign rightOut[4] = (llrSum[4] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[4]);
  assign rightOut[5] = (llrSum[5] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[5]);
  assign rightOut[6] = (llrSum[6] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[6]);
  assign rightOut[7] = (llrSum[7] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[7]);
  assign rightOut[8] = (llrSum[8] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[8]);
  assign rightOut[9] = (llrSum[9] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[9]);
  assign rightOut[10] = (llrSum[10] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[10]);
  assign rightOut[11] = (llrSum[11] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[11]);
  assign rightOut[12] = (llrSum[12] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[12]);
  assign rightOut[13] = (llrSum[13] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[13]);
  assign rightOut[14] = (llrSum[14] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[14]);
  assign rightOut[15] = (llrSum[15] < 8'sb10000001 ? 8'sb10000001 :
              llrSum[15]);



  assign leftRightSel[0] = (mode_reg == 1'b0 ? leftOut[0] :
              rightOut[0]);
  assign leftRightSel[1] = (mode_reg == 1'b0 ? leftOut[1] :
              rightOut[1]);
  assign leftRightSel[2] = (mode_reg == 1'b0 ? leftOut[2] :
              rightOut[2]);
  assign leftRightSel[3] = (mode_reg == 1'b0 ? leftOut[3] :
              rightOut[3]);
  assign leftRightSel[4] = (mode_reg == 1'b0 ? leftOut[4] :
              rightOut[4]);
  assign leftRightSel[5] = (mode_reg == 1'b0 ? leftOut[5] :
              rightOut[5]);
  assign leftRightSel[6] = (mode_reg == 1'b0 ? leftOut[6] :
              rightOut[6]);
  assign leftRightSel[7] = (mode_reg == 1'b0 ? leftOut[7] :
              rightOut[7]);
  assign leftRightSel[8] = (mode_reg == 1'b0 ? leftOut[8] :
              rightOut[8]);
  assign leftRightSel[9] = (mode_reg == 1'b0 ? leftOut[9] :
              rightOut[9]);
  assign leftRightSel[10] = (mode_reg == 1'b0 ? leftOut[10] :
              rightOut[10]);
  assign leftRightSel[11] = (mode_reg == 1'b0 ? leftOut[11] :
              rightOut[11]);
  assign leftRightSel[12] = (mode_reg == 1'b0 ? leftOut[12] :
              rightOut[12]);
  assign leftRightSel[13] = (mode_reg == 1'b0 ? leftOut[13] :
              rightOut[13]);
  assign leftRightSel[14] = (mode_reg == 1'b0 ? leftOut[14] :
              rightOut[14]);
  assign leftRightSel[15] = (mode_reg == 1'b0 ? leftOut[15] :
              rightOut[15]);



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_4_process
      if (reset == 1'b1) begin
        leftRightSel_reg[0] <= 8'sb00000000;
        leftRightSel_reg[1] <= 8'sb00000000;
        leftRightSel_reg[2] <= 8'sb00000000;
        leftRightSel_reg[3] <= 8'sb00000000;
        leftRightSel_reg[4] <= 8'sb00000000;
        leftRightSel_reg[5] <= 8'sb00000000;
        leftRightSel_reg[6] <= 8'sb00000000;
        leftRightSel_reg[7] <= 8'sb00000000;
        leftRightSel_reg[8] <= 8'sb00000000;
        leftRightSel_reg[9] <= 8'sb00000000;
        leftRightSel_reg[10] <= 8'sb00000000;
        leftRightSel_reg[11] <= 8'sb00000000;
        leftRightSel_reg[12] <= 8'sb00000000;
        leftRightSel_reg[13] <= 8'sb00000000;
        leftRightSel_reg[14] <= 8'sb00000000;
        leftRightSel_reg[15] <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          leftRightSel_reg[0] <= leftRightSel[0];
          leftRightSel_reg[1] <= leftRightSel[1];
          leftRightSel_reg[2] <= leftRightSel[2];
          leftRightSel_reg[3] <= leftRightSel[3];
          leftRightSel_reg[4] <= leftRightSel[4];
          leftRightSel_reg[5] <= leftRightSel[5];
          leftRightSel_reg[6] <= leftRightSel[6];
          leftRightSel_reg[7] <= leftRightSel[7];
          leftRightSel_reg[8] <= leftRightSel[8];
          leftRightSel_reg[9] <= leftRightSel[9];
          leftRightSel_reg[10] <= leftRightSel[10];
          leftRightSel_reg[11] <= leftRightSel[11];
          leftRightSel_reg[12] <= leftRightSel[12];
          leftRightSel_reg[13] <= leftRightSel[13];
          leftRightSel_reg[14] <= leftRightSel[14];
          leftRightSel_reg[15] <= leftRightSel[15];
        end
      end
    end



  assign llrCatConst = 8'sb00000000;



  assign llrLowerReordCat[0] = leftRightSel_reg[1];
  assign llrLowerReordCat[1] = leftRightSel_reg[3];
  assign llrLowerReordCat[2] = leftRightSel_reg[4];
  assign llrLowerReordCat[3] = leftRightSel_reg[7];
  assign llrLowerReordCat[4] = leftRightSel_reg[8];
  assign llrLowerReordCat[5] = leftRightSel_reg[9];
  assign llrLowerReordCat[6] = leftRightSel_reg[10];
  assign llrLowerReordCat[7] = leftRightSel_reg[0];
  assign llrLowerReordCat[8] = leftRightSel_reg[1];
  assign llrLowerReordCat[9] = leftRightSel_reg[2];
  assign llrLowerReordCat[10] = leftRightSel_reg[3];
  assign llrLowerReordCat[11] = leftRightSel_reg[4];
  assign llrLowerReordCat[12] = leftRightSel_reg[5];
  assign llrLowerReordCat[13] = leftRightSel_reg[6];
  assign llrLowerReordCat[14] = leftRightSel_reg[7];
  assign llrLowerReordCat[15] = llrCatConst;

  assign llrLowerOut[0] = (llrSrc == 1'b0 ? leftRightSel_reg[0] :
              llrLowerReordCat[0]);
  assign llrLowerOut[1] = (llrSrc == 1'b0 ? leftRightSel_reg[1] :
              llrLowerReordCat[1]);
  assign llrLowerOut[2] = (llrSrc == 1'b0 ? leftRightSel_reg[2] :
              llrLowerReordCat[2]);
  assign llrLowerOut[3] = (llrSrc == 1'b0 ? leftRightSel_reg[3] :
              llrLowerReordCat[3]);
  assign llrLowerOut[4] = (llrSrc == 1'b0 ? leftRightSel_reg[4] :
              llrLowerReordCat[4]);
  assign llrLowerOut[5] = (llrSrc == 1'b0 ? leftRightSel_reg[5] :
              llrLowerReordCat[5]);
  assign llrLowerOut[6] = (llrSrc == 1'b0 ? leftRightSel_reg[6] :
              llrLowerReordCat[6]);
  assign llrLowerOut[7] = (llrSrc == 1'b0 ? leftRightSel_reg[7] :
              llrLowerReordCat[7]);
  assign llrLowerOut[8] = (llrSrc == 1'b0 ? leftRightSel_reg[8] :
              llrLowerReordCat[8]);
  assign llrLowerOut[9] = (llrSrc == 1'b0 ? leftRightSel_reg[9] :
              llrLowerReordCat[9]);
  assign llrLowerOut[10] = (llrSrc == 1'b0 ? leftRightSel_reg[10] :
              llrLowerReordCat[10]);
  assign llrLowerOut[11] = (llrSrc == 1'b0 ? leftRightSel_reg[11] :
              llrLowerReordCat[11]);
  assign llrLowerOut[12] = (llrSrc == 1'b0 ? leftRightSel_reg[12] :
              llrLowerReordCat[12]);
  assign llrLowerOut[13] = (llrSrc == 1'b0 ? leftRightSel_reg[13] :
              llrLowerReordCat[13]);
  assign llrLowerOut[14] = (llrSrc == 1'b0 ? leftRightSel_reg[14] :
              llrLowerReordCat[14]);
  assign llrLowerOut[15] = (llrSrc == 1'b0 ? leftRightSel_reg[15] :
              llrLowerReordCat[15]);



  assign llrLowerOut_0 = llrLowerOut[0];

  assign llrLowerOut_1 = llrLowerOut[1];

  assign llrLowerOut_2 = llrLowerOut[2];

  assign llrLowerOut_3 = llrLowerOut[3];

  assign llrLowerOut_4 = llrLowerOut[4];

  assign llrLowerOut_5 = llrLowerOut[5];

  assign llrLowerOut_6 = llrLowerOut[6];

  assign llrLowerOut_7 = llrLowerOut[7];

  assign llrLowerOut_8 = llrLowerOut[8];

  assign llrLowerOut_9 = llrLowerOut[9];

  assign llrLowerOut_10 = llrLowerOut[10];

  assign llrLowerOut_11 = llrLowerOut[11];

  assign llrLowerOut_12 = llrLowerOut[12];

  assign llrLowerOut_13 = llrLowerOut[13];

  assign llrLowerOut_14 = llrLowerOut[14];

  assign llrLowerOut_15 = llrLowerOut[15];

  assign llrUpperReordCat[0] = leftRightSel_reg[2];
  assign llrUpperReordCat[1] = leftRightSel_reg[5];
  assign llrUpperReordCat[2] = leftRightSel_reg[6];
  assign llrUpperReordCat[3] = leftRightSel_reg[11];
  assign llrUpperReordCat[4] = leftRightSel_reg[12];
  assign llrUpperReordCat[5] = leftRightSel_reg[13];
  assign llrUpperReordCat[6] = leftRightSel_reg[14];
  assign llrUpperReordCat[7] = leftRightSel_reg[8];
  assign llrUpperReordCat[8] = leftRightSel_reg[9];
  assign llrUpperReordCat[9] = leftRightSel_reg[10];
  assign llrUpperReordCat[10] = leftRightSel_reg[11];
  assign llrUpperReordCat[11] = leftRightSel_reg[12];
  assign llrUpperReordCat[12] = leftRightSel_reg[13];
  assign llrUpperReordCat[13] = leftRightSel_reg[14];
  assign llrUpperReordCat[14] = leftRightSel_reg[15];
  assign llrUpperReordCat[15] = llrCatConst;

  assign llrUpperOut[0] = (llrSrc == 1'b0 ? leftRightSel_reg[0] :
              llrUpperReordCat[0]);
  assign llrUpperOut[1] = (llrSrc == 1'b0 ? leftRightSel_reg[1] :
              llrUpperReordCat[1]);
  assign llrUpperOut[2] = (llrSrc == 1'b0 ? leftRightSel_reg[2] :
              llrUpperReordCat[2]);
  assign llrUpperOut[3] = (llrSrc == 1'b0 ? leftRightSel_reg[3] :
              llrUpperReordCat[3]);
  assign llrUpperOut[4] = (llrSrc == 1'b0 ? leftRightSel_reg[4] :
              llrUpperReordCat[4]);
  assign llrUpperOut[5] = (llrSrc == 1'b0 ? leftRightSel_reg[5] :
              llrUpperReordCat[5]);
  assign llrUpperOut[6] = (llrSrc == 1'b0 ? leftRightSel_reg[6] :
              llrUpperReordCat[6]);
  assign llrUpperOut[7] = (llrSrc == 1'b0 ? leftRightSel_reg[7] :
              llrUpperReordCat[7]);
  assign llrUpperOut[8] = (llrSrc == 1'b0 ? leftRightSel_reg[8] :
              llrUpperReordCat[8]);
  assign llrUpperOut[9] = (llrSrc == 1'b0 ? leftRightSel_reg[9] :
              llrUpperReordCat[9]);
  assign llrUpperOut[10] = (llrSrc == 1'b0 ? leftRightSel_reg[10] :
              llrUpperReordCat[10]);
  assign llrUpperOut[11] = (llrSrc == 1'b0 ? leftRightSel_reg[11] :
              llrUpperReordCat[11]);
  assign llrUpperOut[12] = (llrSrc == 1'b0 ? leftRightSel_reg[12] :
              llrUpperReordCat[12]);
  assign llrUpperOut[13] = (llrSrc == 1'b0 ? leftRightSel_reg[13] :
              llrUpperReordCat[13]);
  assign llrUpperOut[14] = (llrSrc == 1'b0 ? leftRightSel_reg[14] :
              llrUpperReordCat[14]);
  assign llrUpperOut[15] = (llrSrc == 1'b0 ? leftRightSel_reg[15] :
              llrUpperReordCat[15]);



  assign llrUpperOut_0 = llrUpperOut[0];

  assign llrUpperOut_1 = llrUpperOut[1];

  assign llrUpperOut_2 = llrUpperOut[2];

  assign llrUpperOut_3 = llrUpperOut[3];

  assign llrUpperOut_4 = llrUpperOut[4];

  assign llrUpperOut_5 = llrUpperOut[5];

  assign llrUpperOut_6 = llrUpperOut[6];

  assign llrUpperOut_7 = llrUpperOut[7];

  assign llrUpperOut_8 = llrUpperOut[8];

  assign llrUpperOut_9 = llrUpperOut[9];

  assign llrUpperOut_10 = llrUpperOut[10];

  assign llrUpperOut_11 = llrUpperOut[11];

  assign llrUpperOut_12 = llrUpperOut[12];

  assign llrUpperOut_13 = llrUpperOut[13];

  assign llrUpperOut_14 = llrUpperOut[14];

  assign llrUpperOut_15 = llrUpperOut[15];

  assign llrLeaf = leftRightSel[0];

endmodule  // DecoderCore

