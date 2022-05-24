`timescale 1 ns / 1 ns

module Main_Memory
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
           wrStage,
           wrBlock,
           lowerWrEn,
           upperWrEn,
           rdStage,
           rdBlock,
           betaIn_0,
           betaIn_1,
           betaWrEn,
           alphaRdPath,
           betaRdPath_0,
           betaRdPath_1,
           betaRdPath_2,
           betaRdPath_3,
           betaRdPath_4,
           betaRdPath_5,
           betaRdPath_6,
           betaRdPath_7,
           betaRdPath_8,
           betaRdPath_9,
           alphaWrPath,
           betaWrPath,
           nSub1,
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
           betaOut_0,
           betaOut_1,
           betaOut_2,
           betaOut_3,
           betaOut_4,
           betaOut_5,
           betaOut_6,
           betaOut_7,
           betaOut_8,
           betaOut_9,
           betaOut_10,
           betaOut_11,
           betaOut_12,
           betaOut_13,
           betaOut_14,
           betaOut_15);


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
  input   [3:0] wrStage;  // ufix4
  input   [4:0] wrBlock;  // ufix5
  input   lowerWrEn;
  input   upperWrEn;
  input   [3:0] rdStage;  // ufix4
  input   [4:0] rdBlock;  // ufix5
  input   betaIn_0;  // ufix1
  input   betaIn_1;  // ufix1
  input   betaWrEn;
  input   alphaRdPath;  // ufix1
  input   betaRdPath_0;  // ufix1
  input   betaRdPath_1;  // ufix1
  input   betaRdPath_2;  // ufix1
  input   betaRdPath_3;  // ufix1
  input   betaRdPath_4;  // ufix1
  input   betaRdPath_5;  // ufix1
  input   betaRdPath_6;  // ufix1
  input   betaRdPath_7;  // ufix1
  input   betaRdPath_8;  // ufix1
  input   betaRdPath_9;  // ufix1
  input   alphaWrPath;  // ufix1
  input   betaWrPath;  // ufix1
  input   [3:0] nSub1;  // ufix4
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
  output  betaOut_0;  // ufix1
  output  betaOut_1;  // ufix1
  output  betaOut_2;  // ufix1
  output  betaOut_3;  // ufix1
  output  betaOut_4;  // ufix1
  output  betaOut_5;  // ufix1
  output  betaOut_6;  // ufix1
  output  betaOut_7;  // ufix1
  output  betaOut_8;  // ufix1
  output  betaOut_9;  // ufix1
  output  betaOut_10;  // ufix1
  output  betaOut_11;  // ufix1
  output  betaOut_12;  // ufix1
  output  betaOut_13;  // ufix1
  output  betaOut_14;  // ufix1
  output  betaOut_15;  // ufix1


  reg [5:0] wrStageOffset;  // ufix6
  wire [6:0] adder_1;  // ufix7
  wire [6:0] adder_2;  // ufix7
  wire [6:0] wrBlockOffset;  // ufix7
  wire [7:0] wrAddr;  // ufix8
  reg [5:0] rdStageOffset;  // ufix6
  wire [6:0] adder_4;  // ufix7
  wire [6:0] adder_5;  // ufix7
  wire [6:0] rdBlockOffset;  // ufix7
  wire relop_relop1;
  wire pathZero;  // ufix1
  wire alphaWrPathSel;  // ufix1
  wire [7:0] rdAddr;  // ufix8
  wire relop_relop1_1;
  wire bypassLower;
  wire [127:0] llrLowerConcat_0;  // ufix128
  wire [127:0] lowerDout_0;  // ufix128
  reg  bypassLower_reg;
  wire [7:0] lowerDoutSlice;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC;  // sfix8_En5
  wire [7:0] lowerDoutSlice_1;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_1;  // sfix8_En5
  wire [7:0] lowerDoutSlice_2;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_2;  // sfix8_En5
  wire [7:0] lowerDoutSlice_3;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_3;  // sfix8_En5
  wire [7:0] lowerDoutSlice_4;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_4;  // sfix8_En5
  wire [7:0] lowerDoutSlice_5;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_5;  // sfix8_En5
  wire [7:0] lowerDoutSlice_6;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_6;  // sfix8_En5
  wire [7:0] lowerDoutSlice_7;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_7;  // sfix8_En5
  wire [7:0] lowerDoutSlice_8;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_8;  // sfix8_En5
  wire [7:0] lowerDoutSlice_9;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_9;  // sfix8_En5
  wire [7:0] lowerDoutSlice_10;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_10;  // sfix8_En5
  wire [7:0] lowerDoutSlice_11;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_11;  // sfix8_En5
  wire [7:0] lowerDoutSlice_12;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_12;  // sfix8_En5
  wire [7:0] lowerDoutSlice_13;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_13;  // sfix8_En5
  wire [7:0] lowerDoutSlice_14;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_14;  // sfix8_En5
  wire [7:0] lowerDoutSlice_15;  // ufix8
  wire signed [7:0] lowerDoutSliceDTC_15;  // sfix8_En5
  wire signed [7:0] lowerDoutDecat [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrLowerIn [0:15];  // sfix8_En5 [16]
  reg signed [7:0] llrLowerIn_reg [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrLowerOut [0:15];  // sfix8_En5 [16]
  wire bypassUpper;
  wire [127:0] llrUpperConcat_0;  // ufix128
  wire [127:0] upperDout_0;  // ufix128
  reg  bypassUpper_reg;
  wire [7:0] upperDoutSlice;  // ufix8
  wire signed [7:0] upperDoutSliceDTC;  // sfix8_En5
  wire [7:0] upperDoutSlice_1;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_1;  // sfix8_En5
  wire [7:0] upperDoutSlice_2;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_2;  // sfix8_En5
  wire [7:0] upperDoutSlice_3;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_3;  // sfix8_En5
  wire [7:0] upperDoutSlice_4;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_4;  // sfix8_En5
  wire [7:0] upperDoutSlice_5;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_5;  // sfix8_En5
  wire [7:0] upperDoutSlice_6;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_6;  // sfix8_En5
  wire [7:0] upperDoutSlice_7;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_7;  // sfix8_En5
  wire [7:0] upperDoutSlice_8;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_8;  // sfix8_En5
  wire [7:0] upperDoutSlice_9;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_9;  // sfix8_En5
  wire [7:0] upperDoutSlice_10;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_10;  // sfix8_En5
  wire [7:0] upperDoutSlice_11;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_11;  // sfix8_En5
  wire [7:0] upperDoutSlice_12;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_12;  // sfix8_En5
  wire [7:0] upperDoutSlice_13;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_13;  // sfix8_En5
  wire [7:0] upperDoutSlice_14;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_14;  // sfix8_En5
  wire [7:0] upperDoutSlice_15;  // ufix8
  wire signed [7:0] upperDoutSliceDTC_15;  // sfix8_En5
  wire signed [7:0] upperDoutDecat [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrUpperIn [0:15];  // sfix8_En5 [16]
  reg signed [7:0] llrUpperIn_reg [0:15];  // sfix8_En5 [16]
  wire signed [7:0] llrUpperOut [0:15];  // sfix8_En5 [16]
  reg [3:0] rdStage_reg;  // ufix4
  reg  betaWrPath_reg;  // ufix1
  wire [0:1] betaIn;  // ufix1 [2]
  reg  [0:1] betaLatched;  // ufix1 [2]
  wire betaSel;  // ufix1
  wire [0:14] szMatchConst_0;  // ufix1 [15]
  wire [0:15] betaSzMatch_0;  // ufix1 [16]
  wire stageEn_0;
  wire stageWr_0;
  wire betaLOut_0;  // ufix1
  wire betaXor_0;  // ufix1
  wire [0:13] szMatchConst_0_1;  // ufix1 [14]
  wire [0:15] betaSizeMatch_1;  // ufix1 [16]
  wire [0:1] betaConcat_0;  // ufix1 [2]
  wire [1:0] betaDin_0;  // ufix2
  wire stageEn_1;
  wire stageWr_1;
  wire [1:0] betaDout_0;  // ufix2
  wire doutSlice;  // ufix1
  wire doutSlice_1;  // ufix1
  wire [0:1] betaLOut_1;  // ufix1 [2]
  wire [0:1] betaROut_1;  // ufix1 [2]
  wire [0:1] betaXor_1;  // ufix1 [2]
  wire betaXor_1_0;  // ufix1
  wire betaXor_1_1;  // ufix1
  wire [0:11] szMatchConst_1;  // ufix1 [12]
  wire [0:15] betaSizeMatch_2;  // ufix1 [16]
  wire [0:3] betaConcat_1;  // ufix1 [4]
  wire [3:0] betaDin_1;  // ufix4
  wire stageEn_2;
  wire stageWr_2;
  wire [3:0] betaDout_1;  // ufix4
  wire doutSlice_2;  // ufix1
  wire doutSlice_3;  // ufix1
  wire doutSlice_4;  // ufix1
  wire doutSlice_5;  // ufix1
  wire [0:3] betaLOut_2;  // ufix1 [4]
  wire [0:3] betaROut_2;  // ufix1 [4]
  wire [0:3] betaXor_2;  // ufix1 [4]
  wire betaXor_2_0;  // ufix1
  wire betaXor_2_1;  // ufix1
  wire betaXor_2_2;  // ufix1
  wire betaXor_2_3;  // ufix1
  wire [0:7] szMatchConst_2;  // ufix1 [8]
  wire [0:15] betaSizeMatch_3;  // ufix1 [16]
  wire [0:7] betaConcat_2;  // ufix1 [8]
  wire [7:0] betaDin_2;  // ufix8
  wire stageEn_3;
  wire stageWr_3;
  wire [7:0] betaDout_2;  // ufix8
  wire doutSlice_6;  // ufix1
  wire doutSlice_7;  // ufix1
  wire doutSlice_8;  // ufix1
  wire doutSlice_9;  // ufix1
  wire doutSlice_10;  // ufix1
  wire doutSlice_11;  // ufix1
  wire doutSlice_12;  // ufix1
  wire doutSlice_13;  // ufix1
  wire [0:7] betaLOut_3;  // ufix1 [8]
  wire [0:7] betaROut_3;  // ufix1 [8]
  wire [0:7] betaXor_3;  // ufix1 [8]
  wire betaXor_3_0;  // ufix1
  wire betaXor_3_1;  // ufix1
  wire betaXor_3_2;  // ufix1
  wire betaXor_3_3;  // ufix1
  wire betaXor_3_4;  // ufix1
  wire betaXor_3_5;  // ufix1
  wire betaXor_3_6;  // ufix1
  wire betaXor_3_7;  // ufix1
  wire [0:15] betaSizeMatch_4;  // ufix1 [16]
  reg [4:0] rdBlock_reg;  // ufix5
  wire betaPass_0;  // ufix1
  wire [0:15] betaConcat_3;  // ufix1 [16]
  wire [15:0] betaDin_3;  // ufix16
  wire stageEn_4;
  wire stageWr_4;
  wire [15:0] betaDout_3;  // ufix16
  wire doutSlice_14;  // ufix1
  wire doutSlice_15;  // ufix1
  wire doutSlice_16;  // ufix1
  wire doutSlice_17;  // ufix1
  wire doutSlice_18;  // ufix1
  wire doutSlice_19;  // ufix1
  wire doutSlice_20;  // ufix1
  wire doutSlice_21;  // ufix1
  wire doutSlice_22;  // ufix1
  wire doutSlice_23;  // ufix1
  wire doutSlice_24;  // ufix1
  wire doutSlice_25;  // ufix1
  wire doutSlice_26;  // ufix1
  wire doutSlice_27;  // ufix1
  wire doutSlice_28;  // ufix1
  wire doutSlice_29;  // ufix1
  wire [0:15] betaLOut_4;  // ufix1 [16]
  wire [0:15] betaROut_4;  // ufix1 [16]
  wire [0:15] betaXor_4;  // ufix1 [16]
  reg  [0:15] betaRIn_reg_0;  // ufix1 [16]
  wire [0:15] betaROut_5;  // ufix1 [16]
  wire [0:15] betaSizeMatch_5;  // ufix1 [16]
  wire betaPass_1;  // ufix1
  wire [0:31] betaConcat_4;  // ufix1 [32]
  wire [31:0] betaDin_4;  // ufix32
  wire stageEn_5;
  wire stageWr_5;
  wire [31:0] betaDout_4;  // ufix32
  wire doutSlice_30;  // ufix1
  wire doutSlice_31;  // ufix1
  wire doutSlice_32;  // ufix1
  wire doutSlice_33;  // ufix1
  wire doutSlice_34;  // ufix1
  wire doutSlice_35;  // ufix1
  wire doutSlice_36;  // ufix1
  wire doutSlice_37;  // ufix1
  wire doutSlice_38;  // ufix1
  wire doutSlice_39;  // ufix1
  wire doutSlice_40;  // ufix1
  wire doutSlice_41;  // ufix1
  wire doutSlice_42;  // ufix1
  wire doutSlice_43;  // ufix1
  wire doutSlice_44;  // ufix1
  wire doutSlice_45;  // ufix1
  wire [0:15] betaLLower_0;  // ufix1 [16]
  wire doutSlice_46;  // ufix1
  wire doutSlice_47;  // ufix1
  wire doutSlice_48;  // ufix1
  wire doutSlice_49;  // ufix1
  wire doutSlice_50;  // ufix1
  wire doutSlice_51;  // ufix1
  wire doutSlice_52;  // ufix1
  wire doutSlice_53;  // ufix1
  wire doutSlice_54;  // ufix1
  wire doutSlice_55;  // ufix1
  wire doutSlice_56;  // ufix1
  wire doutSlice_57;  // ufix1
  wire doutSlice_58;  // ufix1
  wire doutSlice_59;  // ufix1
  wire doutSlice_60;  // ufix1
  wire doutSlice_61;  // ufix1
  wire [0:15] betaLUpper_0;  // ufix1 [16]
  reg  [0:15] betaLUpper_reg0;  // ufix1 [16]
  wire [0:15] betaLOut_5;  // ufix1 [16]
  wire [0:15] betaXor_5;  // ufix1 [16]
  wire betaROut_5_0;  // ufix1
  wire betaROut_5_1;  // ufix1
  wire betaROut_5_2;  // ufix1
  wire betaROut_5_3;  // ufix1
  wire betaROut_5_4;  // ufix1
  wire betaROut_5_5;  // ufix1
  wire betaROut_5_6;  // ufix1
  wire betaROut_5_7;  // ufix1
  wire betaROut_5_8;  // ufix1
  wire betaROut_5_9;  // ufix1
  wire betaROut_5_10;  // ufix1
  wire betaROut_5_11;  // ufix1
  wire betaROut_5_12;  // ufix1
  wire betaROut_5_13;  // ufix1
  wire betaROut_5_14;  // ufix1
  wire betaROut_5_15;  // ufix1
  wire intdelay_out_1;  // ufix1
  reg  [0:1] intdelay_1_reg;  // ufix1 [2]
  wire intdelay_out_2;  // ufix1
  wire intdelay_out_3;  // ufix1
  wire intdelay_out_4;  // ufix1
  wire intdelay_out_5;  // ufix1
  wire intdelay_out_6;  // ufix1
  wire intdelay_out_7;  // ufix1
  wire intdelay_out_8;  // ufix1
  wire intdelay_out_9;  // ufix1
  wire intdelay_out_10;  // ufix1
  wire intdelay_out_11;  // ufix1
  wire intdelay_out_12;  // ufix1
  wire intdelay_out_13;  // ufix1
  wire intdelay_out_14;  // ufix1
  wire intdelay_out_15;  // ufix1
  wire intdelay_out_16;  // ufix1
  reg  [0:1] intdelay_1_reg_1;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_2;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_3;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_4;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_5;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_6;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_7;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_8;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_9;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_10;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_11;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_12;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_13;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_14;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_15;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_1;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_2;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_3;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_4;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_5;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_6;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_7;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_8;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_9;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_10;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_11;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_12;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_13;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_14;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_15;  // ufix1 [2]
  wire [0:15] betaRIn_reg_1;  // ufix1 [16]
  wire [0:15] betaROut_6;  // ufix1 [16]
  wire [0:15] betaSizeMatch_6;  // ufix1 [16]
  wire betaPass_2;  // ufix1
  wire [0:31] betaConcat_5;  // ufix1 [32]
  wire [31:0] betaDin_5;  // ufix32
  wire rdBlockSlice_0;  // ufix1
  wire [1:0] betaWrAddr_5;  // ufix2
  wire stageEn_6;
  wire stageWr_6;
  wire rdBlockSlice_0_1;  // ufix1
  wire [1:0] betaRdAddr_5;  // ufix2
  wire [31:0] betaDout_5;  // ufix32
  wire doutSlice_62;  // ufix1
  wire doutSlice_63;  // ufix1
  wire doutSlice_64;  // ufix1
  wire doutSlice_65;  // ufix1
  wire doutSlice_66;  // ufix1
  wire doutSlice_67;  // ufix1
  wire doutSlice_68;  // ufix1
  wire doutSlice_69;  // ufix1
  wire doutSlice_70;  // ufix1
  wire doutSlice_71;  // ufix1
  wire doutSlice_72;  // ufix1
  wire doutSlice_73;  // ufix1
  wire doutSlice_74;  // ufix1
  wire doutSlice_75;  // ufix1
  wire doutSlice_76;  // ufix1
  wire doutSlice_77;  // ufix1
  wire [0:15] betaLLower_1;  // ufix1 [16]
  wire doutSlice_78;  // ufix1
  wire doutSlice_79;  // ufix1
  wire doutSlice_80;  // ufix1
  wire doutSlice_81;  // ufix1
  wire doutSlice_82;  // ufix1
  wire doutSlice_83;  // ufix1
  wire doutSlice_84;  // ufix1
  wire doutSlice_85;  // ufix1
  wire doutSlice_86;  // ufix1
  wire doutSlice_87;  // ufix1
  wire doutSlice_88;  // ufix1
  wire doutSlice_89;  // ufix1
  wire doutSlice_90;  // ufix1
  wire doutSlice_91;  // ufix1
  wire doutSlice_92;  // ufix1
  wire doutSlice_93;  // ufix1
  wire intdelay_out_1_1;  // ufix1
  reg  [0:1] intdelay_1_reg_16;  // ufix1 [2]
  wire intdelay_out_2_1;  // ufix1
  wire intdelay_out_3_1;  // ufix1
  wire intdelay_out_4_1;  // ufix1
  wire intdelay_out_5_1;  // ufix1
  wire intdelay_out_6_1;  // ufix1
  wire intdelay_out_7_1;  // ufix1
  wire intdelay_out_8_1;  // ufix1
  wire intdelay_out_9_1;  // ufix1
  wire intdelay_out_10_1;  // ufix1
  wire intdelay_out_11_1;  // ufix1
  wire intdelay_out_12_1;  // ufix1
  wire intdelay_out_13_1;  // ufix1
  wire intdelay_out_14_1;  // ufix1
  wire intdelay_out_15_1;  // ufix1
  wire intdelay_out_16_1;  // ufix1
  reg  [0:1] intdelay_1_reg_17;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_18;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_19;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_20;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_21;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_22;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_23;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_24;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_25;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_26;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_27;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_28;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_29;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_30;  // ufix1 [2]
  reg  [0:1] intdelay_1_reg_31;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_16;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_17;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_18;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_19;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_20;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_21;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_22;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_23;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_24;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_25;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_26;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_27;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_28;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_29;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_30;  // ufix1 [2]
  wire [0:1] intdelay_1_reg_next_31;  // ufix1 [2]
  wire [0:15] betaLUpper_reg1;  // ufix1 [16]
  wire [0:15] betaLOut_6;  // ufix1 [16]
  wire [0:15] betaXor_6;  // ufix1 [16]
  wire betaROut_6_0;  // ufix1
  wire betaROut_6_1;  // ufix1
  wire betaROut_6_2;  // ufix1
  wire betaROut_6_3;  // ufix1
  wire betaROut_6_4;  // ufix1
  wire betaROut_6_5;  // ufix1
  wire betaROut_6_6;  // ufix1
  wire betaROut_6_7;  // ufix1
  wire betaROut_6_8;  // ufix1
  wire betaROut_6_9;  // ufix1
  wire betaROut_6_10;  // ufix1
  wire betaROut_6_11;  // ufix1
  wire betaROut_6_12;  // ufix1
  wire betaROut_6_13;  // ufix1
  wire betaROut_6_14;  // ufix1
  wire betaROut_6_15;  // ufix1
  wire intdelay_out_1_2;  // ufix1
  reg  [0:3] intdelay_1_reg_32;  // ufix1 [4]
  wire intdelay_out_2_2;  // ufix1
  wire intdelay_out_3_2;  // ufix1
  wire intdelay_out_4_2;  // ufix1
  wire intdelay_out_5_2;  // ufix1
  wire intdelay_out_6_2;  // ufix1
  wire intdelay_out_7_2;  // ufix1
  wire intdelay_out_8_2;  // ufix1
  wire intdelay_out_9_2;  // ufix1
  wire intdelay_out_10_2;  // ufix1
  wire intdelay_out_11_2;  // ufix1
  wire intdelay_out_12_2;  // ufix1
  wire intdelay_out_13_2;  // ufix1
  wire intdelay_out_14_2;  // ufix1
  wire intdelay_out_15_2;  // ufix1
  wire intdelay_out_16_2;  // ufix1
  reg  [0:3] intdelay_1_reg_33;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_34;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_35;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_36;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_37;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_38;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_39;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_40;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_41;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_42;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_43;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_44;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_45;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_46;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_47;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_32;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_33;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_34;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_35;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_36;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_37;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_38;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_39;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_40;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_41;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_42;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_43;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_44;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_45;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_46;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_47;  // ufix1 [4]
  wire [0:15] betaRIn_reg_2;  // ufix1 [16]
  wire [0:15] betaROut_7;  // ufix1 [16]
  wire [0:15] betaSizeMatch_7;  // ufix1 [16]
  wire betaPass_3;  // ufix1
  wire [0:31] betaConcat_6;  // ufix1 [32]
  wire [31:0] betaDin_6;  // ufix32
  wire [1:0] rdBlockSlice_1;  // ufix2
  wire [2:0] betaWrAddr_6;  // ufix3
  wire stageEn_7;
  wire stageWr_7;
  wire [1:0] rdBlockSlice_1_1;  // ufix2
  wire [2:0] betaRdAddr_6;  // ufix3
  wire [31:0] betaDout_6;  // ufix32
  wire doutSlice_94;  // ufix1
  wire doutSlice_95;  // ufix1
  wire doutSlice_96;  // ufix1
  wire doutSlice_97;  // ufix1
  wire doutSlice_98;  // ufix1
  wire doutSlice_99;  // ufix1
  wire doutSlice_100;  // ufix1
  wire doutSlice_101;  // ufix1
  wire doutSlice_102;  // ufix1
  wire doutSlice_103;  // ufix1
  wire doutSlice_104;  // ufix1
  wire doutSlice_105;  // ufix1
  wire doutSlice_106;  // ufix1
  wire doutSlice_107;  // ufix1
  wire doutSlice_108;  // ufix1
  wire doutSlice_109;  // ufix1
  wire [0:15] betaLLower_2;  // ufix1 [16]
  wire doutSlice_110;  // ufix1
  wire doutSlice_111;  // ufix1
  wire doutSlice_112;  // ufix1
  wire doutSlice_113;  // ufix1
  wire doutSlice_114;  // ufix1
  wire doutSlice_115;  // ufix1
  wire doutSlice_116;  // ufix1
  wire doutSlice_117;  // ufix1
  wire doutSlice_118;  // ufix1
  wire doutSlice_119;  // ufix1
  wire doutSlice_120;  // ufix1
  wire doutSlice_121;  // ufix1
  wire doutSlice_122;  // ufix1
  wire doutSlice_123;  // ufix1
  wire doutSlice_124;  // ufix1
  wire doutSlice_125;  // ufix1
  wire intdelay_out_1_3;  // ufix1
  reg  [0:3] intdelay_1_reg_48;  // ufix1 [4]
  wire intdelay_out_2_3;  // ufix1
  wire intdelay_out_3_3;  // ufix1
  wire intdelay_out_4_3;  // ufix1
  wire intdelay_out_5_3;  // ufix1
  wire intdelay_out_6_3;  // ufix1
  wire intdelay_out_7_3;  // ufix1
  wire intdelay_out_8_3;  // ufix1
  wire intdelay_out_9_3;  // ufix1
  wire intdelay_out_10_3;  // ufix1
  wire intdelay_out_11_3;  // ufix1
  wire intdelay_out_12_3;  // ufix1
  wire intdelay_out_13_3;  // ufix1
  wire intdelay_out_14_3;  // ufix1
  wire intdelay_out_15_3;  // ufix1
  wire intdelay_out_16_3;  // ufix1
  reg  [0:3] intdelay_1_reg_49;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_50;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_51;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_52;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_53;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_54;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_55;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_56;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_57;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_58;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_59;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_60;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_61;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_62;  // ufix1 [4]
  reg  [0:3] intdelay_1_reg_63;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_48;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_49;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_50;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_51;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_52;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_53;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_54;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_55;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_56;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_57;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_58;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_59;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_60;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_61;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_62;  // ufix1 [4]
  wire [0:3] intdelay_1_reg_next_63;  // ufix1 [4]
  wire [0:15] betaLUpper_reg2;  // ufix1 [16]
  wire [0:15] betaLOut_7;  // ufix1 [16]
  wire [0:15] betaXor_7;  // ufix1 [16]
  wire betaROut_7_0;  // ufix1
  wire betaROut_7_1;  // ufix1
  wire betaROut_7_2;  // ufix1
  wire betaROut_7_3;  // ufix1
  wire betaROut_7_4;  // ufix1
  wire betaROut_7_5;  // ufix1
  wire betaROut_7_6;  // ufix1
  wire betaROut_7_7;  // ufix1
  wire betaROut_7_8;  // ufix1
  wire betaROut_7_9;  // ufix1
  wire betaROut_7_10;  // ufix1
  wire betaROut_7_11;  // ufix1
  wire betaROut_7_12;  // ufix1
  wire betaROut_7_13;  // ufix1
  wire betaROut_7_14;  // ufix1
  wire betaROut_7_15;  // ufix1
  wire intdelay_out_1_4;  // ufix1
  reg  [0:7] intdelay_1_reg_64;  // ufix1 [8]
  wire intdelay_out_2_4;  // ufix1
  wire intdelay_out_3_4;  // ufix1
  wire intdelay_out_4_4;  // ufix1
  wire intdelay_out_5_4;  // ufix1
  wire intdelay_out_6_4;  // ufix1
  wire intdelay_out_7_4;  // ufix1
  wire intdelay_out_8_4;  // ufix1
  wire intdelay_out_9_4;  // ufix1
  wire intdelay_out_10_4;  // ufix1
  wire intdelay_out_11_4;  // ufix1
  wire intdelay_out_12_4;  // ufix1
  wire intdelay_out_13_4;  // ufix1
  wire intdelay_out_14_4;  // ufix1
  wire intdelay_out_15_4;  // ufix1
  wire intdelay_out_16_4;  // ufix1
  reg  [0:7] intdelay_1_reg_65;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_66;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_67;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_68;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_69;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_70;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_71;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_72;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_73;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_74;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_75;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_76;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_77;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_78;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_79;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_64;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_65;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_66;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_67;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_68;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_69;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_70;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_71;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_72;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_73;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_74;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_75;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_76;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_77;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_78;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_79;  // ufix1 [8]
  wire [0:15] betaRIn_reg_3;  // ufix1 [16]
  wire [0:15] betaROut_8;  // ufix1 [16]
  wire [0:15] betaSizeMatch_8;  // ufix1 [16]
  wire betaPass_4;  // ufix1
  wire [0:31] betaConcat_7;  // ufix1 [32]
  wire [31:0] betaDin_7;  // ufix32
  wire [2:0] rdBlockSlice_2;  // ufix3
  wire [3:0] betaWrAddr_7;  // ufix4
  wire stageEn_8;
  wire stageWr_8;
  wire [2:0] rdBlockSlice_2_1;  // ufix3
  wire [3:0] betaRdAddr_7;  // ufix4
  wire [31:0] betaDout_7;  // ufix32
  wire doutSlice_126;  // ufix1
  wire doutSlice_127;  // ufix1
  wire doutSlice_128;  // ufix1
  wire doutSlice_129;  // ufix1
  wire doutSlice_130;  // ufix1
  wire doutSlice_131;  // ufix1
  wire doutSlice_132;  // ufix1
  wire doutSlice_133;  // ufix1
  wire doutSlice_134;  // ufix1
  wire doutSlice_135;  // ufix1
  wire doutSlice_136;  // ufix1
  wire doutSlice_137;  // ufix1
  wire doutSlice_138;  // ufix1
  wire doutSlice_139;  // ufix1
  wire doutSlice_140;  // ufix1
  wire doutSlice_141;  // ufix1
  wire [0:15] betaLLower_3;  // ufix1 [16]
  wire doutSlice_142;  // ufix1
  wire doutSlice_143;  // ufix1
  wire doutSlice_144;  // ufix1
  wire doutSlice_145;  // ufix1
  wire doutSlice_146;  // ufix1
  wire doutSlice_147;  // ufix1
  wire doutSlice_148;  // ufix1
  wire doutSlice_149;  // ufix1
  wire doutSlice_150;  // ufix1
  wire doutSlice_151;  // ufix1
  wire doutSlice_152;  // ufix1
  wire doutSlice_153;  // ufix1
  wire doutSlice_154;  // ufix1
  wire doutSlice_155;  // ufix1
  wire doutSlice_156;  // ufix1
  wire doutSlice_157;  // ufix1
  wire intdelay_out_1_5;  // ufix1
  reg  [0:7] intdelay_1_reg_80;  // ufix1 [8]
  wire intdelay_out_2_5;  // ufix1
  wire intdelay_out_3_5;  // ufix1
  wire intdelay_out_4_5;  // ufix1
  wire intdelay_out_5_5;  // ufix1
  wire intdelay_out_6_5;  // ufix1
  wire intdelay_out_7_5;  // ufix1
  wire intdelay_out_8_5;  // ufix1
  wire intdelay_out_9_5;  // ufix1
  wire intdelay_out_10_5;  // ufix1
  wire intdelay_out_11_5;  // ufix1
  wire intdelay_out_12_5;  // ufix1
  wire intdelay_out_13_5;  // ufix1
  wire intdelay_out_14_5;  // ufix1
  wire intdelay_out_15_5;  // ufix1
  wire intdelay_out_16_5;  // ufix1
  reg  [0:7] intdelay_1_reg_81;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_82;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_83;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_84;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_85;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_86;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_87;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_88;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_89;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_90;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_91;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_92;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_93;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_94;  // ufix1 [8]
  reg  [0:7] intdelay_1_reg_95;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_80;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_81;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_82;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_83;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_84;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_85;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_86;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_87;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_88;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_89;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_90;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_91;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_92;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_93;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_94;  // ufix1 [8]
  wire [0:7] intdelay_1_reg_next_95;  // ufix1 [8]
  wire [0:15] betaLUpper_reg3;  // ufix1 [16]
  wire [0:15] betaLOut_8;  // ufix1 [16]
  wire betaROut_8_0;  // ufix1
  wire betaROut_8_1;  // ufix1
  wire betaROut_8_2;  // ufix1
  wire betaROut_8_3;  // ufix1
  wire betaROut_8_4;  // ufix1
  wire betaROut_8_5;  // ufix1
  wire betaROut_8_6;  // ufix1
  wire betaROut_8_7;  // ufix1
  wire betaROut_8_8;  // ufix1
  wire betaROut_8_9;  // ufix1
  wire betaROut_8_10;  // ufix1
  wire betaROut_8_11;  // ufix1
  wire betaROut_8_12;  // ufix1
  wire betaROut_8_13;  // ufix1
  wire betaROut_8_14;  // ufix1
  wire betaROut_8_15;  // ufix1
  wire intdelay_out_1_6;  // ufix1
  reg  [0:15] intdelay_1_reg_96;  // ufix1 [16]
  wire intdelay_out_2_6;  // ufix1
  wire intdelay_out_3_6;  // ufix1
  wire intdelay_out_4_6;  // ufix1
  wire intdelay_out_5_6;  // ufix1
  wire intdelay_out_6_6;  // ufix1
  wire intdelay_out_7_6;  // ufix1
  wire intdelay_out_8_6;  // ufix1
  wire intdelay_out_9_6;  // ufix1
  wire intdelay_out_10_6;  // ufix1
  wire intdelay_out_11_6;  // ufix1
  wire intdelay_out_12_6;  // ufix1
  wire intdelay_out_13_6;  // ufix1
  wire intdelay_out_14_6;  // ufix1
  wire intdelay_out_15_6;  // ufix1
  wire intdelay_out_16_6;  // ufix1
  reg  [0:15] intdelay_1_reg_97;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_98;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_99;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_100;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_101;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_102;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_103;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_104;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_105;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_106;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_107;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_108;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_109;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_110;  // ufix1 [16]
  reg  [0:15] intdelay_1_reg_111;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_96;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_97;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_98;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_99;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_100;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_101;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_102;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_103;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_104;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_105;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_106;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_107;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_108;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_109;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_110;  // ufix1 [16]
  wire [0:15] intdelay_1_reg_next_111;  // ufix1 [16]
  wire [0:15] betaXor_8;  // ufix1 [16]
  wire [0:15] betaRIn_reg_4;  // ufix1 [16]
  wire [0:15] betaROut_9;  // ufix1 [16]
  wire [0:15] betaSzMatch_9;  // ufix1 [16]
  wire [0:15] betaOut;  // ufix1 [16]


  // []
  always @(wrStage) begin
    case ( wrStage)
      4'b0000 :
        begin
          wrStageOffset = 6'b000000;
        end
      4'b0001 :
        begin
          wrStageOffset = 6'b000001;
        end
      4'b0010 :
        begin
          wrStageOffset = 6'b000010;
        end
      4'b0011 :
        begin
          wrStageOffset = 6'b000011;
        end
      4'b0100 :
        begin
          wrStageOffset = 6'b000100;
        end
      4'b0101 :
        begin
          wrStageOffset = 6'b000101;
        end
      4'b0110 :
        begin
          wrStageOffset = 6'b000111;
        end
      4'b0111 :
        begin
          wrStageOffset = 6'b001011;
        end
      4'b1000 :
        begin
          wrStageOffset = 6'b010011;
        end
      4'b1001 :
        begin
          wrStageOffset = 6'b100011;
        end
      default :
        begin
          wrStageOffset = 6'b000000;
        end
    endcase
  end



  assign adder_1 = {1'b0, wrStageOffset};
  assign adder_2 = {2'b0, wrBlock};
  assign wrBlockOffset = adder_1 + adder_2;



  assign wrAddr = {wrBlockOffset, alphaWrPath};



  // []
  always @(rdStage) begin
    case ( rdStage)
      4'b0000 :
        begin
          rdStageOffset = 6'b000000;
        end
      4'b0001 :
        begin
          rdStageOffset = 6'b000001;
        end
      4'b0010 :
        begin
          rdStageOffset = 6'b000010;
        end
      4'b0011 :
        begin
          rdStageOffset = 6'b000011;
        end
      4'b0100 :
        begin
          rdStageOffset = 6'b000100;
        end
      4'b0101 :
        begin
          rdStageOffset = 6'b000101;
        end
      4'b0110 :
        begin
          rdStageOffset = 6'b000111;
        end
      4'b0111 :
        begin
          rdStageOffset = 6'b001011;
        end
      4'b1000 :
        begin
          rdStageOffset = 6'b010011;
        end
      4'b1001 :
        begin
          rdStageOffset = 6'b100011;
        end
      default :
        begin
          rdStageOffset = 6'b000000;
        end
    endcase
  end



  assign adder_4 = {1'b0, rdStageOffset};
  assign adder_5 = {2'b0, rdBlock};
  assign rdBlockOffset = adder_4 + adder_5;



  assign relop_relop1 = rdStage == nSub1;



  assign pathZero = 1'b0;



  assign alphaWrPathSel = (relop_relop1 == 1'b0 ? alphaRdPath :
              pathZero);



  assign rdAddr = {rdBlockOffset, alphaWrPathSel};



  assign relop_relop1_1 = wrAddr == rdAddr;



  assign bypassLower = relop_relop1_1 & lowerWrEn;



  assign llrLowerConcat_0 = {llrLowerIn_0, llrLowerIn_1, llrLowerIn_2, llrLowerIn_3, llrLowerIn_4, llrLowerIn_5, llrLowerIn_6, llrLowerIn_7, llrLowerIn_8, llrLowerIn_9, llrLowerIn_10, llrLowerIn_11, llrLowerIn_12, llrLowerIn_13, llrLowerIn_14, llrLowerIn_15};



  SimpleDualPortRAM_generic #(.AddrWidth(8),
                              .DataWidth(128)
                              )
                            u_simpleDualPortRam_generic (.clk(clk),
                                                         .enb(enb),
                                                         .wr_din(llrLowerConcat_0),
                                                         .wr_addr(wrAddr),
                                                         .wr_en(lowerWrEn),
                                                         .rd_addr(rdAddr),
                                                         .rd_dout(lowerDout_0)
                                                         );

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_process
      if (reset == 1'b1) begin
        bypassLower_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          bypassLower_reg <= bypassLower;
        end
      end
    end



  assign lowerDoutSlice = lowerDout_0[127:120];



  assign lowerDoutSliceDTC = lowerDoutSlice;



  assign lowerDoutSlice_1 = lowerDout_0[119:112];



  assign lowerDoutSliceDTC_1 = lowerDoutSlice_1;



  assign lowerDoutSlice_2 = lowerDout_0[111:104];



  assign lowerDoutSliceDTC_2 = lowerDoutSlice_2;



  assign lowerDoutSlice_3 = lowerDout_0[103:96];



  assign lowerDoutSliceDTC_3 = lowerDoutSlice_3;



  assign lowerDoutSlice_4 = lowerDout_0[95:88];



  assign lowerDoutSliceDTC_4 = lowerDoutSlice_4;



  assign lowerDoutSlice_5 = lowerDout_0[87:80];



  assign lowerDoutSliceDTC_5 = lowerDoutSlice_5;



  assign lowerDoutSlice_6 = lowerDout_0[79:72];



  assign lowerDoutSliceDTC_6 = lowerDoutSlice_6;



  assign lowerDoutSlice_7 = lowerDout_0[71:64];



  assign lowerDoutSliceDTC_7 = lowerDoutSlice_7;



  assign lowerDoutSlice_8 = lowerDout_0[63:56];



  assign lowerDoutSliceDTC_8 = lowerDoutSlice_8;



  assign lowerDoutSlice_9 = lowerDout_0[55:48];



  assign lowerDoutSliceDTC_9 = lowerDoutSlice_9;



  assign lowerDoutSlice_10 = lowerDout_0[47:40];



  assign lowerDoutSliceDTC_10 = lowerDoutSlice_10;



  assign lowerDoutSlice_11 = lowerDout_0[39:32];



  assign lowerDoutSliceDTC_11 = lowerDoutSlice_11;



  assign lowerDoutSlice_12 = lowerDout_0[31:24];



  assign lowerDoutSliceDTC_12 = lowerDoutSlice_12;



  assign lowerDoutSlice_13 = lowerDout_0[23:16];



  assign lowerDoutSliceDTC_13 = lowerDoutSlice_13;



  assign lowerDoutSlice_14 = lowerDout_0[15:8];



  assign lowerDoutSliceDTC_14 = lowerDoutSlice_14;



  assign lowerDoutSlice_15 = lowerDout_0[7:0];



  assign lowerDoutSliceDTC_15 = lowerDoutSlice_15;



  assign lowerDoutDecat[0] = lowerDoutSliceDTC;
  assign lowerDoutDecat[1] = lowerDoutSliceDTC_1;
  assign lowerDoutDecat[2] = lowerDoutSliceDTC_2;
  assign lowerDoutDecat[3] = lowerDoutSliceDTC_3;
  assign lowerDoutDecat[4] = lowerDoutSliceDTC_4;
  assign lowerDoutDecat[5] = lowerDoutSliceDTC_5;
  assign lowerDoutDecat[6] = lowerDoutSliceDTC_6;
  assign lowerDoutDecat[7] = lowerDoutSliceDTC_7;
  assign lowerDoutDecat[8] = lowerDoutSliceDTC_8;
  assign lowerDoutDecat[9] = lowerDoutSliceDTC_9;
  assign lowerDoutDecat[10] = lowerDoutSliceDTC_10;
  assign lowerDoutDecat[11] = lowerDoutSliceDTC_11;
  assign lowerDoutDecat[12] = lowerDoutSliceDTC_12;
  assign lowerDoutDecat[13] = lowerDoutSliceDTC_13;
  assign lowerDoutDecat[14] = lowerDoutSliceDTC_14;
  assign lowerDoutDecat[15] = lowerDoutSliceDTC_15;

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
    begin : reg_rsvd_1_process
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



  assign llrLowerOut[0] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[0] :
              llrLowerIn_reg[0]);
  assign llrLowerOut[1] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[1] :
              llrLowerIn_reg[1]);
  assign llrLowerOut[2] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[2] :
              llrLowerIn_reg[2]);
  assign llrLowerOut[3] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[3] :
              llrLowerIn_reg[3]);
  assign llrLowerOut[4] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[4] :
              llrLowerIn_reg[4]);
  assign llrLowerOut[5] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[5] :
              llrLowerIn_reg[5]);
  assign llrLowerOut[6] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[6] :
              llrLowerIn_reg[6]);
  assign llrLowerOut[7] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[7] :
              llrLowerIn_reg[7]);
  assign llrLowerOut[8] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[8] :
              llrLowerIn_reg[8]);
  assign llrLowerOut[9] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[9] :
              llrLowerIn_reg[9]);
  assign llrLowerOut[10] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[10] :
              llrLowerIn_reg[10]);
  assign llrLowerOut[11] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[11] :
              llrLowerIn_reg[11]);
  assign llrLowerOut[12] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[12] :
              llrLowerIn_reg[12]);
  assign llrLowerOut[13] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[13] :
              llrLowerIn_reg[13]);
  assign llrLowerOut[14] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[14] :
              llrLowerIn_reg[14]);
  assign llrLowerOut[15] = (bypassLower_reg == 1'b0 ? lowerDoutDecat[15] :
              llrLowerIn_reg[15]);



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

  assign bypassUpper = relop_relop1_1 & upperWrEn;



  assign llrUpperConcat_0 = {llrUpperIn_0, llrUpperIn_1, llrUpperIn_2, llrUpperIn_3, llrUpperIn_4, llrUpperIn_5, llrUpperIn_6, llrUpperIn_7, llrUpperIn_8, llrUpperIn_9, llrUpperIn_10, llrUpperIn_11, llrUpperIn_12, llrUpperIn_13, llrUpperIn_14, llrUpperIn_15};



  SimpleDualPortRAM_generic #(.AddrWidth(8),
                              .DataWidth(128)
                              )
                            u_simpleDualPortRam (.clk(clk),
                                                 .enb(enb),
                                                 .wr_din(llrUpperConcat_0),
                                                 .wr_addr(wrAddr),
                                                 .wr_en(upperWrEn),
                                                 .rd_addr(rdAddr),
                                                 .rd_dout(upperDout_0)
                                                 );

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_2_process
      if (reset == 1'b1) begin
        bypassUpper_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          bypassUpper_reg <= bypassUpper;
        end
      end
    end



  assign upperDoutSlice = upperDout_0[127:120];



  assign upperDoutSliceDTC = upperDoutSlice;



  assign upperDoutSlice_1 = upperDout_0[119:112];



  assign upperDoutSliceDTC_1 = upperDoutSlice_1;



  assign upperDoutSlice_2 = upperDout_0[111:104];



  assign upperDoutSliceDTC_2 = upperDoutSlice_2;



  assign upperDoutSlice_3 = upperDout_0[103:96];



  assign upperDoutSliceDTC_3 = upperDoutSlice_3;



  assign upperDoutSlice_4 = upperDout_0[95:88];



  assign upperDoutSliceDTC_4 = upperDoutSlice_4;



  assign upperDoutSlice_5 = upperDout_0[87:80];



  assign upperDoutSliceDTC_5 = upperDoutSlice_5;



  assign upperDoutSlice_6 = upperDout_0[79:72];



  assign upperDoutSliceDTC_6 = upperDoutSlice_6;



  assign upperDoutSlice_7 = upperDout_0[71:64];



  assign upperDoutSliceDTC_7 = upperDoutSlice_7;



  assign upperDoutSlice_8 = upperDout_0[63:56];



  assign upperDoutSliceDTC_8 = upperDoutSlice_8;



  assign upperDoutSlice_9 = upperDout_0[55:48];



  assign upperDoutSliceDTC_9 = upperDoutSlice_9;



  assign upperDoutSlice_10 = upperDout_0[47:40];



  assign upperDoutSliceDTC_10 = upperDoutSlice_10;



  assign upperDoutSlice_11 = upperDout_0[39:32];



  assign upperDoutSliceDTC_11 = upperDoutSlice_11;



  assign upperDoutSlice_12 = upperDout_0[31:24];



  assign upperDoutSliceDTC_12 = upperDoutSlice_12;



  assign upperDoutSlice_13 = upperDout_0[23:16];



  assign upperDoutSliceDTC_13 = upperDoutSlice_13;



  assign upperDoutSlice_14 = upperDout_0[15:8];



  assign upperDoutSliceDTC_14 = upperDoutSlice_14;



  assign upperDoutSlice_15 = upperDout_0[7:0];



  assign upperDoutSliceDTC_15 = upperDoutSlice_15;



  assign upperDoutDecat[0] = upperDoutSliceDTC;
  assign upperDoutDecat[1] = upperDoutSliceDTC_1;
  assign upperDoutDecat[2] = upperDoutSliceDTC_2;
  assign upperDoutDecat[3] = upperDoutSliceDTC_3;
  assign upperDoutDecat[4] = upperDoutSliceDTC_4;
  assign upperDoutDecat[5] = upperDoutSliceDTC_5;
  assign upperDoutDecat[6] = upperDoutSliceDTC_6;
  assign upperDoutDecat[7] = upperDoutSliceDTC_7;
  assign upperDoutDecat[8] = upperDoutSliceDTC_8;
  assign upperDoutDecat[9] = upperDoutSliceDTC_9;
  assign upperDoutDecat[10] = upperDoutSliceDTC_10;
  assign upperDoutDecat[11] = upperDoutSliceDTC_11;
  assign upperDoutDecat[12] = upperDoutSliceDTC_12;
  assign upperDoutDecat[13] = upperDoutSliceDTC_13;
  assign upperDoutDecat[14] = upperDoutSliceDTC_14;
  assign upperDoutDecat[15] = upperDoutSliceDTC_15;

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
    begin : reg_rsvd_3_process
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



  assign llrUpperOut[0] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[0] :
              llrUpperIn_reg[0]);
  assign llrUpperOut[1] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[1] :
              llrUpperIn_reg[1]);
  assign llrUpperOut[2] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[2] :
              llrUpperIn_reg[2]);
  assign llrUpperOut[3] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[3] :
              llrUpperIn_reg[3]);
  assign llrUpperOut[4] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[4] :
              llrUpperIn_reg[4]);
  assign llrUpperOut[5] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[5] :
              llrUpperIn_reg[5]);
  assign llrUpperOut[6] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[6] :
              llrUpperIn_reg[6]);
  assign llrUpperOut[7] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[7] :
              llrUpperIn_reg[7]);
  assign llrUpperOut[8] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[8] :
              llrUpperIn_reg[8]);
  assign llrUpperOut[9] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[9] :
              llrUpperIn_reg[9]);
  assign llrUpperOut[10] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[10] :
              llrUpperIn_reg[10]);
  assign llrUpperOut[11] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[11] :
              llrUpperIn_reg[11]);
  assign llrUpperOut[12] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[12] :
              llrUpperIn_reg[12]);
  assign llrUpperOut[13] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[13] :
              llrUpperIn_reg[13]);
  assign llrUpperOut[14] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[14] :
              llrUpperIn_reg[14]);
  assign llrUpperOut[15] = (bypassUpper_reg == 1'b0 ? upperDoutDecat[15] :
              llrUpperIn_reg[15]);



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

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_4_process
      if (reset == 1'b1) begin
        rdStage_reg <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdStage_reg <= rdStage;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_5_process
      if (reset == 1'b1) begin
        betaWrPath_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          betaWrPath_reg <= betaWrPath;
        end
      end
    end



  assign betaIn[0] = betaIn_0;
  assign betaIn[1] = betaIn_1;

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_6_process
      if (reset == 1'b1) begin
        betaLatched[0] <= 1'b0;
        betaLatched[1] <= 1'b0;
      end
      else begin
        if (enb && betaWrEn) begin
          betaLatched[0] <= betaIn[0];
          betaLatched[1] <= betaIn[1];
        end
      end
    end



  assign betaSel = (betaWrPath_reg == 1'b0 ? betaLatched[0] :
              betaLatched[1]);



  assign szMatchConst_0[0] = 1'b0;
  assign szMatchConst_0[1] = 1'b0;
  assign szMatchConst_0[2] = 1'b0;
  assign szMatchConst_0[3] = 1'b0;
  assign szMatchConst_0[4] = 1'b0;
  assign szMatchConst_0[5] = 1'b0;
  assign szMatchConst_0[6] = 1'b0;
  assign szMatchConst_0[7] = 1'b0;
  assign szMatchConst_0[8] = 1'b0;
  assign szMatchConst_0[9] = 1'b0;
  assign szMatchConst_0[10] = 1'b0;
  assign szMatchConst_0[11] = 1'b0;
  assign szMatchConst_0[12] = 1'b0;
  assign szMatchConst_0[13] = 1'b0;
  assign szMatchConst_0[14] = 1'b0;



  assign betaSzMatch_0[0] = betaSel;
  assign betaSzMatch_0[1] = szMatchConst_0[0];
  assign betaSzMatch_0[2] = szMatchConst_0[1];
  assign betaSzMatch_0[3] = szMatchConst_0[2];
  assign betaSzMatch_0[4] = szMatchConst_0[3];
  assign betaSzMatch_0[5] = szMatchConst_0[4];
  assign betaSzMatch_0[6] = szMatchConst_0[5];
  assign betaSzMatch_0[7] = szMatchConst_0[6];
  assign betaSzMatch_0[8] = szMatchConst_0[7];
  assign betaSzMatch_0[9] = szMatchConst_0[8];
  assign betaSzMatch_0[10] = szMatchConst_0[9];
  assign betaSzMatch_0[11] = szMatchConst_0[10];
  assign betaSzMatch_0[12] = szMatchConst_0[11];
  assign betaSzMatch_0[13] = szMatchConst_0[12];
  assign betaSzMatch_0[14] = szMatchConst_0[13];
  assign betaSzMatch_0[15] = szMatchConst_0[14];

  assign stageEn_0 = rdStage_reg == 4'b0000;



  assign stageWr_0 = stageEn_0 & mode;



  ramNet u_stage_0 (.clk(clk),
                    .reset(reset),
                    .enb(enb),
                    .din(betaSel),  // ufix1
                    .wr_addr(betaWrPath_reg),  // ufix1
                    .wr_en(stageWr_0),
                    .rd_addr(betaRdPath_0),  // ufix1
                    .dout(betaLOut_0)  // ufix1
                    );

  assign betaXor_0 = betaLOut_0 ^ betaSel;



  assign szMatchConst_0_1[0] = 1'b0;
  assign szMatchConst_0_1[1] = 1'b0;
  assign szMatchConst_0_1[2] = 1'b0;
  assign szMatchConst_0_1[3] = 1'b0;
  assign szMatchConst_0_1[4] = 1'b0;
  assign szMatchConst_0_1[5] = 1'b0;
  assign szMatchConst_0_1[6] = 1'b0;
  assign szMatchConst_0_1[7] = 1'b0;
  assign szMatchConst_0_1[8] = 1'b0;
  assign szMatchConst_0_1[9] = 1'b0;
  assign szMatchConst_0_1[10] = 1'b0;
  assign szMatchConst_0_1[11] = 1'b0;
  assign szMatchConst_0_1[12] = 1'b0;
  assign szMatchConst_0_1[13] = 1'b0;



  assign betaSizeMatch_1[0] = betaXor_0;
  assign betaSizeMatch_1[1] = betaSel;
  assign betaSizeMatch_1[2] = szMatchConst_0_1[0];
  assign betaSizeMatch_1[3] = szMatchConst_0_1[1];
  assign betaSizeMatch_1[4] = szMatchConst_0_1[2];
  assign betaSizeMatch_1[5] = szMatchConst_0_1[3];
  assign betaSizeMatch_1[6] = szMatchConst_0_1[4];
  assign betaSizeMatch_1[7] = szMatchConst_0_1[5];
  assign betaSizeMatch_1[8] = szMatchConst_0_1[6];
  assign betaSizeMatch_1[9] = szMatchConst_0_1[7];
  assign betaSizeMatch_1[10] = szMatchConst_0_1[8];
  assign betaSizeMatch_1[11] = szMatchConst_0_1[9];
  assign betaSizeMatch_1[12] = szMatchConst_0_1[10];
  assign betaSizeMatch_1[13] = szMatchConst_0_1[11];
  assign betaSizeMatch_1[14] = szMatchConst_0_1[12];
  assign betaSizeMatch_1[15] = szMatchConst_0_1[13];

  assign betaConcat_0[0] = betaXor_0;
  assign betaConcat_0[1] = betaSel;

  assign betaDin_0 = {betaConcat_0[0], betaConcat_0[1]};



  assign stageEn_1 = rdStage_reg == 4'b0001;



  assign stageWr_1 = stageEn_1 & mode;



  ramNet_block u_stage_1 (.clk(clk),
                          .reset(reset),
                          .enb(enb),
                          .din(betaDin_0),  // ufix2
                          .wr_addr(betaWrPath_reg),  // ufix1
                          .wr_en(stageWr_1),
                          .rd_addr(betaRdPath_1),  // ufix1
                          .dout(betaDout_0)  // ufix2
                          );

  assign doutSlice = betaDout_0[1];



  assign doutSlice_1 = betaDout_0[0];



  assign betaLOut_1[0] = doutSlice;
  assign betaLOut_1[1] = doutSlice_1;

  assign betaROut_1[0] = betaXor_0;
  assign betaROut_1[1] = betaSel;

  assign betaXor_1[0] = betaLOut_1[0] ^ betaROut_1[0];
  assign betaXor_1[1] = betaLOut_1[1] ^ betaROut_1[1];



  assign betaXor_1_0 = betaXor_1[0];

  assign betaXor_1_1 = betaXor_1[1];

  assign szMatchConst_1[0] = 1'b0;
  assign szMatchConst_1[1] = 1'b0;
  assign szMatchConst_1[2] = 1'b0;
  assign szMatchConst_1[3] = 1'b0;
  assign szMatchConst_1[4] = 1'b0;
  assign szMatchConst_1[5] = 1'b0;
  assign szMatchConst_1[6] = 1'b0;
  assign szMatchConst_1[7] = 1'b0;
  assign szMatchConst_1[8] = 1'b0;
  assign szMatchConst_1[9] = 1'b0;
  assign szMatchConst_1[10] = 1'b0;
  assign szMatchConst_1[11] = 1'b0;



  assign betaSizeMatch_2[0] = betaXor_1_0;
  assign betaSizeMatch_2[1] = betaXor_1_1;
  assign betaSizeMatch_2[2] = betaXor_0;
  assign betaSizeMatch_2[3] = betaSel;
  assign betaSizeMatch_2[4] = szMatchConst_1[0];
  assign betaSizeMatch_2[5] = szMatchConst_1[1];
  assign betaSizeMatch_2[6] = szMatchConst_1[2];
  assign betaSizeMatch_2[7] = szMatchConst_1[3];
  assign betaSizeMatch_2[8] = szMatchConst_1[4];
  assign betaSizeMatch_2[9] = szMatchConst_1[5];
  assign betaSizeMatch_2[10] = szMatchConst_1[6];
  assign betaSizeMatch_2[11] = szMatchConst_1[7];
  assign betaSizeMatch_2[12] = szMatchConst_1[8];
  assign betaSizeMatch_2[13] = szMatchConst_1[9];
  assign betaSizeMatch_2[14] = szMatchConst_1[10];
  assign betaSizeMatch_2[15] = szMatchConst_1[11];

  assign betaConcat_1[0] = betaXor_1_0;
  assign betaConcat_1[1] = betaXor_1_1;
  assign betaConcat_1[2] = betaXor_0;
  assign betaConcat_1[3] = betaSel;

  assign betaDin_1 = {betaConcat_1[0], betaConcat_1[1], betaConcat_1[2], betaConcat_1[3]};



  assign stageEn_2 = rdStage_reg == 4'b0010;



  assign stageWr_2 = stageEn_2 & mode;



  ramNet_block1 u_stage_2 (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .din(betaDin_1),  // ufix4
                           .wr_addr(betaWrPath_reg),  // ufix1
                           .wr_en(stageWr_2),
                           .rd_addr(betaRdPath_2),  // ufix1
                           .dout(betaDout_1)  // ufix4
                           );

  assign doutSlice_2 = betaDout_1[3];



  assign doutSlice_3 = betaDout_1[2];



  assign doutSlice_4 = betaDout_1[1];



  assign doutSlice_5 = betaDout_1[0];



  assign betaLOut_2[0] = doutSlice_2;
  assign betaLOut_2[1] = doutSlice_3;
  assign betaLOut_2[2] = doutSlice_4;
  assign betaLOut_2[3] = doutSlice_5;

  assign betaROut_2[0] = betaXor_1_0;
  assign betaROut_2[1] = betaXor_1_1;
  assign betaROut_2[2] = betaXor_0;
  assign betaROut_2[3] = betaSel;

  assign betaXor_2[0] = betaLOut_2[0] ^ betaROut_2[0];
  assign betaXor_2[1] = betaLOut_2[1] ^ betaROut_2[1];
  assign betaXor_2[2] = betaLOut_2[2] ^ betaROut_2[2];
  assign betaXor_2[3] = betaLOut_2[3] ^ betaROut_2[3];



  assign betaXor_2_0 = betaXor_2[0];

  assign betaXor_2_1 = betaXor_2[1];

  assign betaXor_2_2 = betaXor_2[2];

  assign betaXor_2_3 = betaXor_2[3];

  assign szMatchConst_2[0] = 1'b0;
  assign szMatchConst_2[1] = 1'b0;
  assign szMatchConst_2[2] = 1'b0;
  assign szMatchConst_2[3] = 1'b0;
  assign szMatchConst_2[4] = 1'b0;
  assign szMatchConst_2[5] = 1'b0;
  assign szMatchConst_2[6] = 1'b0;
  assign szMatchConst_2[7] = 1'b0;



  assign betaSizeMatch_3[0] = betaXor_2_0;
  assign betaSizeMatch_3[1] = betaXor_2_1;
  assign betaSizeMatch_3[2] = betaXor_2_2;
  assign betaSizeMatch_3[3] = betaXor_2_3;
  assign betaSizeMatch_3[4] = betaXor_1_0;
  assign betaSizeMatch_3[5] = betaXor_1_1;
  assign betaSizeMatch_3[6] = betaXor_0;
  assign betaSizeMatch_3[7] = betaSel;
  assign betaSizeMatch_3[8] = szMatchConst_2[0];
  assign betaSizeMatch_3[9] = szMatchConst_2[1];
  assign betaSizeMatch_3[10] = szMatchConst_2[2];
  assign betaSizeMatch_3[11] = szMatchConst_2[3];
  assign betaSizeMatch_3[12] = szMatchConst_2[4];
  assign betaSizeMatch_3[13] = szMatchConst_2[5];
  assign betaSizeMatch_3[14] = szMatchConst_2[6];
  assign betaSizeMatch_3[15] = szMatchConst_2[7];

  assign betaConcat_2[0] = betaXor_2_0;
  assign betaConcat_2[1] = betaXor_2_1;
  assign betaConcat_2[2] = betaXor_2_2;
  assign betaConcat_2[3] = betaXor_2_3;
  assign betaConcat_2[4] = betaXor_1_0;
  assign betaConcat_2[5] = betaXor_1_1;
  assign betaConcat_2[6] = betaXor_0;
  assign betaConcat_2[7] = betaSel;

  assign betaDin_2 = {betaConcat_2[0], betaConcat_2[1], betaConcat_2[2], betaConcat_2[3], betaConcat_2[4], betaConcat_2[5], betaConcat_2[6], betaConcat_2[7]};



  assign stageEn_3 = rdStage_reg == 4'b0011;



  assign stageWr_3 = stageEn_3 & mode;



  ramNet_block2 u_stage_3 (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .din(betaDin_2),  // ufix8
                           .wr_addr(betaWrPath_reg),  // ufix1
                           .wr_en(stageWr_3),
                           .rd_addr(betaRdPath_3),  // ufix1
                           .dout(betaDout_2)  // ufix8
                           );

  assign doutSlice_6 = betaDout_2[7];



  assign doutSlice_7 = betaDout_2[6];



  assign doutSlice_8 = betaDout_2[5];



  assign doutSlice_9 = betaDout_2[4];



  assign doutSlice_10 = betaDout_2[3];



  assign doutSlice_11 = betaDout_2[2];



  assign doutSlice_12 = betaDout_2[1];



  assign doutSlice_13 = betaDout_2[0];



  assign betaLOut_3[0] = doutSlice_6;
  assign betaLOut_3[1] = doutSlice_7;
  assign betaLOut_3[2] = doutSlice_8;
  assign betaLOut_3[3] = doutSlice_9;
  assign betaLOut_3[4] = doutSlice_10;
  assign betaLOut_3[5] = doutSlice_11;
  assign betaLOut_3[6] = doutSlice_12;
  assign betaLOut_3[7] = doutSlice_13;

  assign betaROut_3[0] = betaXor_2_0;
  assign betaROut_3[1] = betaXor_2_1;
  assign betaROut_3[2] = betaXor_2_2;
  assign betaROut_3[3] = betaXor_2_3;
  assign betaROut_3[4] = betaXor_1_0;
  assign betaROut_3[5] = betaXor_1_1;
  assign betaROut_3[6] = betaXor_0;
  assign betaROut_3[7] = betaSel;

  assign betaXor_3[0] = betaLOut_3[0] ^ betaROut_3[0];
  assign betaXor_3[1] = betaLOut_3[1] ^ betaROut_3[1];
  assign betaXor_3[2] = betaLOut_3[2] ^ betaROut_3[2];
  assign betaXor_3[3] = betaLOut_3[3] ^ betaROut_3[3];
  assign betaXor_3[4] = betaLOut_3[4] ^ betaROut_3[4];
  assign betaXor_3[5] = betaLOut_3[5] ^ betaROut_3[5];
  assign betaXor_3[6] = betaLOut_3[6] ^ betaROut_3[6];
  assign betaXor_3[7] = betaLOut_3[7] ^ betaROut_3[7];



  assign betaXor_3_0 = betaXor_3[0];

  assign betaXor_3_1 = betaXor_3[1];

  assign betaXor_3_2 = betaXor_3[2];

  assign betaXor_3_3 = betaXor_3[3];

  assign betaXor_3_4 = betaXor_3[4];

  assign betaXor_3_5 = betaXor_3[5];

  assign betaXor_3_6 = betaXor_3[6];

  assign betaXor_3_7 = betaXor_3[7];

  assign betaSizeMatch_4[0] = betaXor_3_0;
  assign betaSizeMatch_4[1] = betaXor_3_1;
  assign betaSizeMatch_4[2] = betaXor_3_2;
  assign betaSizeMatch_4[3] = betaXor_3_3;
  assign betaSizeMatch_4[4] = betaXor_3_4;
  assign betaSizeMatch_4[5] = betaXor_3_5;
  assign betaSizeMatch_4[6] = betaXor_3_6;
  assign betaSizeMatch_4[7] = betaXor_3_7;
  assign betaSizeMatch_4[8] = betaXor_2_0;
  assign betaSizeMatch_4[9] = betaXor_2_1;
  assign betaSizeMatch_4[10] = betaXor_2_2;
  assign betaSizeMatch_4[11] = betaXor_2_3;
  assign betaSizeMatch_4[12] = betaXor_1_0;
  assign betaSizeMatch_4[13] = betaXor_1_1;
  assign betaSizeMatch_4[14] = betaXor_0;
  assign betaSizeMatch_4[15] = betaSel;

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_7_process
      if (reset == 1'b1) begin
        rdBlock_reg <= 5'b00000;
      end
      else begin
        if (enb) begin
          rdBlock_reg <= rdBlock;
        end
      end
    end



  assign betaPass_0 = rdBlock_reg[0];



  assign betaConcat_3[0] = betaXor_3_0;
  assign betaConcat_3[1] = betaXor_3_1;
  assign betaConcat_3[2] = betaXor_3_2;
  assign betaConcat_3[3] = betaXor_3_3;
  assign betaConcat_3[4] = betaXor_3_4;
  assign betaConcat_3[5] = betaXor_3_5;
  assign betaConcat_3[6] = betaXor_3_6;
  assign betaConcat_3[7] = betaXor_3_7;
  assign betaConcat_3[8] = betaXor_2_0;
  assign betaConcat_3[9] = betaXor_2_1;
  assign betaConcat_3[10] = betaXor_2_2;
  assign betaConcat_3[11] = betaXor_2_3;
  assign betaConcat_3[12] = betaXor_1_0;
  assign betaConcat_3[13] = betaXor_1_1;
  assign betaConcat_3[14] = betaXor_0;
  assign betaConcat_3[15] = betaSel;

  assign betaDin_3 = {betaConcat_3[0], betaConcat_3[1], betaConcat_3[2], betaConcat_3[3], betaConcat_3[4], betaConcat_3[5], betaConcat_3[6], betaConcat_3[7], betaConcat_3[8], betaConcat_3[9], betaConcat_3[10], betaConcat_3[11], betaConcat_3[12], betaConcat_3[13], betaConcat_3[14], betaConcat_3[15]};



  assign stageEn_4 = rdStage_reg == 4'b0100;



  assign stageWr_4 = stageEn_4 & mode;



  ramNet_block3 u_stage_4 (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .din(betaDin_3),  // ufix16
                           .wr_addr(betaWrPath_reg),  // ufix1
                           .wr_en(stageWr_4),
                           .rd_addr(betaRdPath_4),  // ufix1
                           .dout(betaDout_3)  // ufix16
                           );

  assign doutSlice_14 = betaDout_3[15];



  assign doutSlice_15 = betaDout_3[14];



  assign doutSlice_16 = betaDout_3[13];



  assign doutSlice_17 = betaDout_3[12];



  assign doutSlice_18 = betaDout_3[11];



  assign doutSlice_19 = betaDout_3[10];



  assign doutSlice_20 = betaDout_3[9];



  assign doutSlice_21 = betaDout_3[8];



  assign doutSlice_22 = betaDout_3[7];



  assign doutSlice_23 = betaDout_3[6];



  assign doutSlice_24 = betaDout_3[5];



  assign doutSlice_25 = betaDout_3[4];



  assign doutSlice_26 = betaDout_3[3];



  assign doutSlice_27 = betaDout_3[2];



  assign doutSlice_28 = betaDout_3[1];



  assign doutSlice_29 = betaDout_3[0];



  assign betaLOut_4[0] = doutSlice_14;
  assign betaLOut_4[1] = doutSlice_15;
  assign betaLOut_4[2] = doutSlice_16;
  assign betaLOut_4[3] = doutSlice_17;
  assign betaLOut_4[4] = doutSlice_18;
  assign betaLOut_4[5] = doutSlice_19;
  assign betaLOut_4[6] = doutSlice_20;
  assign betaLOut_4[7] = doutSlice_21;
  assign betaLOut_4[8] = doutSlice_22;
  assign betaLOut_4[9] = doutSlice_23;
  assign betaLOut_4[10] = doutSlice_24;
  assign betaLOut_4[11] = doutSlice_25;
  assign betaLOut_4[12] = doutSlice_26;
  assign betaLOut_4[13] = doutSlice_27;
  assign betaLOut_4[14] = doutSlice_28;
  assign betaLOut_4[15] = doutSlice_29;

  assign betaROut_4[0] = betaXor_3_0;
  assign betaROut_4[1] = betaXor_3_1;
  assign betaROut_4[2] = betaXor_3_2;
  assign betaROut_4[3] = betaXor_3_3;
  assign betaROut_4[4] = betaXor_3_4;
  assign betaROut_4[5] = betaXor_3_5;
  assign betaROut_4[6] = betaXor_3_6;
  assign betaROut_4[7] = betaXor_3_7;
  assign betaROut_4[8] = betaXor_2_0;
  assign betaROut_4[9] = betaXor_2_1;
  assign betaROut_4[10] = betaXor_2_2;
  assign betaROut_4[11] = betaXor_2_3;
  assign betaROut_4[12] = betaXor_1_0;
  assign betaROut_4[13] = betaXor_1_1;
  assign betaROut_4[14] = betaXor_0;
  assign betaROut_4[15] = betaSel;

  assign betaXor_4[0] = betaLOut_4[0] ^ betaROut_4[0];
  assign betaXor_4[1] = betaLOut_4[1] ^ betaROut_4[1];
  assign betaXor_4[2] = betaLOut_4[2] ^ betaROut_4[2];
  assign betaXor_4[3] = betaLOut_4[3] ^ betaROut_4[3];
  assign betaXor_4[4] = betaLOut_4[4] ^ betaROut_4[4];
  assign betaXor_4[5] = betaLOut_4[5] ^ betaROut_4[5];
  assign betaXor_4[6] = betaLOut_4[6] ^ betaROut_4[6];
  assign betaXor_4[7] = betaLOut_4[7] ^ betaROut_4[7];
  assign betaXor_4[8] = betaLOut_4[8] ^ betaROut_4[8];
  assign betaXor_4[9] = betaLOut_4[9] ^ betaROut_4[9];
  assign betaXor_4[10] = betaLOut_4[10] ^ betaROut_4[10];
  assign betaXor_4[11] = betaLOut_4[11] ^ betaROut_4[11];
  assign betaXor_4[12] = betaLOut_4[12] ^ betaROut_4[12];
  assign betaXor_4[13] = betaLOut_4[13] ^ betaROut_4[13];
  assign betaXor_4[14] = betaLOut_4[14] ^ betaROut_4[14];
  assign betaXor_4[15] = betaLOut_4[15] ^ betaROut_4[15];



  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        betaRIn_reg_0[0] <= 1'b0;
        betaRIn_reg_0[1] <= 1'b0;
        betaRIn_reg_0[2] <= 1'b0;
        betaRIn_reg_0[3] <= 1'b0;
        betaRIn_reg_0[4] <= 1'b0;
        betaRIn_reg_0[5] <= 1'b0;
        betaRIn_reg_0[6] <= 1'b0;
        betaRIn_reg_0[7] <= 1'b0;
        betaRIn_reg_0[8] <= 1'b0;
        betaRIn_reg_0[9] <= 1'b0;
        betaRIn_reg_0[10] <= 1'b0;
        betaRIn_reg_0[11] <= 1'b0;
        betaRIn_reg_0[12] <= 1'b0;
        betaRIn_reg_0[13] <= 1'b0;
        betaRIn_reg_0[14] <= 1'b0;
        betaRIn_reg_0[15] <= 1'b0;
      end
      else begin
        if (enb) begin
          betaRIn_reg_0[0] <= betaROut_4[0];
          betaRIn_reg_0[1] <= betaROut_4[1];
          betaRIn_reg_0[2] <= betaROut_4[2];
          betaRIn_reg_0[3] <= betaROut_4[3];
          betaRIn_reg_0[4] <= betaROut_4[4];
          betaRIn_reg_0[5] <= betaROut_4[5];
          betaRIn_reg_0[6] <= betaROut_4[6];
          betaRIn_reg_0[7] <= betaROut_4[7];
          betaRIn_reg_0[8] <= betaROut_4[8];
          betaRIn_reg_0[9] <= betaROut_4[9];
          betaRIn_reg_0[10] <= betaROut_4[10];
          betaRIn_reg_0[11] <= betaROut_4[11];
          betaRIn_reg_0[12] <= betaROut_4[12];
          betaRIn_reg_0[13] <= betaROut_4[13];
          betaRIn_reg_0[14] <= betaROut_4[14];
          betaRIn_reg_0[15] <= betaROut_4[15];
        end
      end
    end



  assign betaROut_5[0] = (betaPass_0 == 1'b0 ? betaXor_4[0] :
              betaRIn_reg_0[0]);
  assign betaROut_5[1] = (betaPass_0 == 1'b0 ? betaXor_4[1] :
              betaRIn_reg_0[1]);
  assign betaROut_5[2] = (betaPass_0 == 1'b0 ? betaXor_4[2] :
              betaRIn_reg_0[2]);
  assign betaROut_5[3] = (betaPass_0 == 1'b0 ? betaXor_4[3] :
              betaRIn_reg_0[3]);
  assign betaROut_5[4] = (betaPass_0 == 1'b0 ? betaXor_4[4] :
              betaRIn_reg_0[4]);
  assign betaROut_5[5] = (betaPass_0 == 1'b0 ? betaXor_4[5] :
              betaRIn_reg_0[5]);
  assign betaROut_5[6] = (betaPass_0 == 1'b0 ? betaXor_4[6] :
              betaRIn_reg_0[6]);
  assign betaROut_5[7] = (betaPass_0 == 1'b0 ? betaXor_4[7] :
              betaRIn_reg_0[7]);
  assign betaROut_5[8] = (betaPass_0 == 1'b0 ? betaXor_4[8] :
              betaRIn_reg_0[8]);
  assign betaROut_5[9] = (betaPass_0 == 1'b0 ? betaXor_4[9] :
              betaRIn_reg_0[9]);
  assign betaROut_5[10] = (betaPass_0 == 1'b0 ? betaXor_4[10] :
              betaRIn_reg_0[10]);
  assign betaROut_5[11] = (betaPass_0 == 1'b0 ? betaXor_4[11] :
              betaRIn_reg_0[11]);
  assign betaROut_5[12] = (betaPass_0 == 1'b0 ? betaXor_4[12] :
              betaRIn_reg_0[12]);
  assign betaROut_5[13] = (betaPass_0 == 1'b0 ? betaXor_4[13] :
              betaRIn_reg_0[13]);
  assign betaROut_5[14] = (betaPass_0 == 1'b0 ? betaXor_4[14] :
              betaRIn_reg_0[14]);
  assign betaROut_5[15] = (betaPass_0 == 1'b0 ? betaXor_4[15] :
              betaRIn_reg_0[15]);



  assign betaSizeMatch_5[0] = betaROut_5[0];
  assign betaSizeMatch_5[1] = betaROut_5[1];
  assign betaSizeMatch_5[2] = betaROut_5[2];
  assign betaSizeMatch_5[3] = betaROut_5[3];
  assign betaSizeMatch_5[4] = betaROut_5[4];
  assign betaSizeMatch_5[5] = betaROut_5[5];
  assign betaSizeMatch_5[6] = betaROut_5[6];
  assign betaSizeMatch_5[7] = betaROut_5[7];
  assign betaSizeMatch_5[8] = betaROut_5[8];
  assign betaSizeMatch_5[9] = betaROut_5[9];
  assign betaSizeMatch_5[10] = betaROut_5[10];
  assign betaSizeMatch_5[11] = betaROut_5[11];
  assign betaSizeMatch_5[12] = betaROut_5[12];
  assign betaSizeMatch_5[13] = betaROut_5[13];
  assign betaSizeMatch_5[14] = betaROut_5[14];
  assign betaSizeMatch_5[15] = betaROut_5[15];

  assign betaPass_1 = rdBlock_reg[1];



  assign betaConcat_4[0] = betaXor_4[0];
  assign betaConcat_4[1] = betaXor_4[1];
  assign betaConcat_4[2] = betaXor_4[2];
  assign betaConcat_4[3] = betaXor_4[3];
  assign betaConcat_4[4] = betaXor_4[4];
  assign betaConcat_4[5] = betaXor_4[5];
  assign betaConcat_4[6] = betaXor_4[6];
  assign betaConcat_4[7] = betaXor_4[7];
  assign betaConcat_4[8] = betaXor_4[8];
  assign betaConcat_4[9] = betaXor_4[9];
  assign betaConcat_4[10] = betaXor_4[10];
  assign betaConcat_4[11] = betaXor_4[11];
  assign betaConcat_4[12] = betaXor_4[12];
  assign betaConcat_4[13] = betaXor_4[13];
  assign betaConcat_4[14] = betaXor_4[14];
  assign betaConcat_4[15] = betaXor_4[15];
  assign betaConcat_4[16] = betaXor_3_0;
  assign betaConcat_4[17] = betaXor_3_1;
  assign betaConcat_4[18] = betaXor_3_2;
  assign betaConcat_4[19] = betaXor_3_3;
  assign betaConcat_4[20] = betaXor_3_4;
  assign betaConcat_4[21] = betaXor_3_5;
  assign betaConcat_4[22] = betaXor_3_6;
  assign betaConcat_4[23] = betaXor_3_7;
  assign betaConcat_4[24] = betaXor_2_0;
  assign betaConcat_4[25] = betaXor_2_1;
  assign betaConcat_4[26] = betaXor_2_2;
  assign betaConcat_4[27] = betaXor_2_3;
  assign betaConcat_4[28] = betaXor_1_0;
  assign betaConcat_4[29] = betaXor_1_1;
  assign betaConcat_4[30] = betaXor_0;
  assign betaConcat_4[31] = betaSel;

  assign betaDin_4 = {betaConcat_4[0], betaConcat_4[1], betaConcat_4[2], betaConcat_4[3], betaConcat_4[4], betaConcat_4[5], betaConcat_4[6], betaConcat_4[7], betaConcat_4[8], betaConcat_4[9], betaConcat_4[10], betaConcat_4[11], betaConcat_4[12], betaConcat_4[13], betaConcat_4[14], betaConcat_4[15], betaConcat_4[16], betaConcat_4[17], betaConcat_4[18], betaConcat_4[19], betaConcat_4[20], betaConcat_4[21], betaConcat_4[22], betaConcat_4[23], betaConcat_4[24], betaConcat_4[25], betaConcat_4[26], betaConcat_4[27], betaConcat_4[28], betaConcat_4[29], betaConcat_4[30], betaConcat_4[31]};



  assign stageEn_5 = rdStage_reg == 4'b0101;



  assign stageWr_5 = stageEn_5 & mode;



  ramNet_block4 u_stage_5 (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .din(betaDin_4),  // ufix32
                           .wr_addr(betaWrPath_reg),  // ufix1
                           .wr_en(stageWr_5),
                           .rd_addr(betaRdPath_5),  // ufix1
                           .dout(betaDout_4)  // ufix32
                           );

  assign doutSlice_30 = betaDout_4[31];



  assign doutSlice_31 = betaDout_4[30];



  assign doutSlice_32 = betaDout_4[29];



  assign doutSlice_33 = betaDout_4[28];



  assign doutSlice_34 = betaDout_4[27];



  assign doutSlice_35 = betaDout_4[26];



  assign doutSlice_36 = betaDout_4[25];



  assign doutSlice_37 = betaDout_4[24];



  assign doutSlice_38 = betaDout_4[23];



  assign doutSlice_39 = betaDout_4[22];



  assign doutSlice_40 = betaDout_4[21];



  assign doutSlice_41 = betaDout_4[20];



  assign doutSlice_42 = betaDout_4[19];



  assign doutSlice_43 = betaDout_4[18];



  assign doutSlice_44 = betaDout_4[17];



  assign doutSlice_45 = betaDout_4[16];



  assign betaLLower_0[0] = doutSlice_30;
  assign betaLLower_0[1] = doutSlice_31;
  assign betaLLower_0[2] = doutSlice_32;
  assign betaLLower_0[3] = doutSlice_33;
  assign betaLLower_0[4] = doutSlice_34;
  assign betaLLower_0[5] = doutSlice_35;
  assign betaLLower_0[6] = doutSlice_36;
  assign betaLLower_0[7] = doutSlice_37;
  assign betaLLower_0[8] = doutSlice_38;
  assign betaLLower_0[9] = doutSlice_39;
  assign betaLLower_0[10] = doutSlice_40;
  assign betaLLower_0[11] = doutSlice_41;
  assign betaLLower_0[12] = doutSlice_42;
  assign betaLLower_0[13] = doutSlice_43;
  assign betaLLower_0[14] = doutSlice_44;
  assign betaLLower_0[15] = doutSlice_45;

  assign doutSlice_46 = betaDout_4[15];



  assign doutSlice_47 = betaDout_4[14];



  assign doutSlice_48 = betaDout_4[13];



  assign doutSlice_49 = betaDout_4[12];



  assign doutSlice_50 = betaDout_4[11];



  assign doutSlice_51 = betaDout_4[10];



  assign doutSlice_52 = betaDout_4[9];



  assign doutSlice_53 = betaDout_4[8];



  assign doutSlice_54 = betaDout_4[7];



  assign doutSlice_55 = betaDout_4[6];



  assign doutSlice_56 = betaDout_4[5];



  assign doutSlice_57 = betaDout_4[4];



  assign doutSlice_58 = betaDout_4[3];



  assign doutSlice_59 = betaDout_4[2];



  assign doutSlice_60 = betaDout_4[1];



  assign doutSlice_61 = betaDout_4[0];



  assign betaLUpper_0[0] = doutSlice_46;
  assign betaLUpper_0[1] = doutSlice_47;
  assign betaLUpper_0[2] = doutSlice_48;
  assign betaLUpper_0[3] = doutSlice_49;
  assign betaLUpper_0[4] = doutSlice_50;
  assign betaLUpper_0[5] = doutSlice_51;
  assign betaLUpper_0[6] = doutSlice_52;
  assign betaLUpper_0[7] = doutSlice_53;
  assign betaLUpper_0[8] = doutSlice_54;
  assign betaLUpper_0[9] = doutSlice_55;
  assign betaLUpper_0[10] = doutSlice_56;
  assign betaLUpper_0[11] = doutSlice_57;
  assign betaLUpper_0[12] = doutSlice_58;
  assign betaLUpper_0[13] = doutSlice_59;
  assign betaLUpper_0[14] = doutSlice_60;
  assign betaLUpper_0[15] = doutSlice_61;

  always @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        betaLUpper_reg0[0] <= 1'b0;
        betaLUpper_reg0[1] <= 1'b0;
        betaLUpper_reg0[2] <= 1'b0;
        betaLUpper_reg0[3] <= 1'b0;
        betaLUpper_reg0[4] <= 1'b0;
        betaLUpper_reg0[5] <= 1'b0;
        betaLUpper_reg0[6] <= 1'b0;
        betaLUpper_reg0[7] <= 1'b0;
        betaLUpper_reg0[8] <= 1'b0;
        betaLUpper_reg0[9] <= 1'b0;
        betaLUpper_reg0[10] <= 1'b0;
        betaLUpper_reg0[11] <= 1'b0;
        betaLUpper_reg0[12] <= 1'b0;
        betaLUpper_reg0[13] <= 1'b0;
        betaLUpper_reg0[14] <= 1'b0;
        betaLUpper_reg0[15] <= 1'b0;
      end
      else begin
        if (enb) begin
          betaLUpper_reg0[0] <= betaLUpper_0[0];
          betaLUpper_reg0[1] <= betaLUpper_0[1];
          betaLUpper_reg0[2] <= betaLUpper_0[2];
          betaLUpper_reg0[3] <= betaLUpper_0[3];
          betaLUpper_reg0[4] <= betaLUpper_0[4];
          betaLUpper_reg0[5] <= betaLUpper_0[5];
          betaLUpper_reg0[6] <= betaLUpper_0[6];
          betaLUpper_reg0[7] <= betaLUpper_0[7];
          betaLUpper_reg0[8] <= betaLUpper_0[8];
          betaLUpper_reg0[9] <= betaLUpper_0[9];
          betaLUpper_reg0[10] <= betaLUpper_0[10];
          betaLUpper_reg0[11] <= betaLUpper_0[11];
          betaLUpper_reg0[12] <= betaLUpper_0[12];
          betaLUpper_reg0[13] <= betaLUpper_0[13];
          betaLUpper_reg0[14] <= betaLUpper_0[14];
          betaLUpper_reg0[15] <= betaLUpper_0[15];
        end
      end
    end



  assign betaLOut_5[0] = (betaPass_0 == 1'b0 ? betaLLower_0[0] :
              betaLUpper_reg0[0]);
  assign betaLOut_5[1] = (betaPass_0 == 1'b0 ? betaLLower_0[1] :
              betaLUpper_reg0[1]);
  assign betaLOut_5[2] = (betaPass_0 == 1'b0 ? betaLLower_0[2] :
              betaLUpper_reg0[2]);
  assign betaLOut_5[3] = (betaPass_0 == 1'b0 ? betaLLower_0[3] :
              betaLUpper_reg0[3]);
  assign betaLOut_5[4] = (betaPass_0 == 1'b0 ? betaLLower_0[4] :
              betaLUpper_reg0[4]);
  assign betaLOut_5[5] = (betaPass_0 == 1'b0 ? betaLLower_0[5] :
              betaLUpper_reg0[5]);
  assign betaLOut_5[6] = (betaPass_0 == 1'b0 ? betaLLower_0[6] :
              betaLUpper_reg0[6]);
  assign betaLOut_5[7] = (betaPass_0 == 1'b0 ? betaLLower_0[7] :
              betaLUpper_reg0[7]);
  assign betaLOut_5[8] = (betaPass_0 == 1'b0 ? betaLLower_0[8] :
              betaLUpper_reg0[8]);
  assign betaLOut_5[9] = (betaPass_0 == 1'b0 ? betaLLower_0[9] :
              betaLUpper_reg0[9]);
  assign betaLOut_5[10] = (betaPass_0 == 1'b0 ? betaLLower_0[10] :
              betaLUpper_reg0[10]);
  assign betaLOut_5[11] = (betaPass_0 == 1'b0 ? betaLLower_0[11] :
              betaLUpper_reg0[11]);
  assign betaLOut_5[12] = (betaPass_0 == 1'b0 ? betaLLower_0[12] :
              betaLUpper_reg0[12]);
  assign betaLOut_5[13] = (betaPass_0 == 1'b0 ? betaLLower_0[13] :
              betaLUpper_reg0[13]);
  assign betaLOut_5[14] = (betaPass_0 == 1'b0 ? betaLLower_0[14] :
              betaLUpper_reg0[14]);
  assign betaLOut_5[15] = (betaPass_0 == 1'b0 ? betaLLower_0[15] :
              betaLUpper_reg0[15]);



  assign betaXor_5[0] = betaLOut_5[0] ^ betaROut_5[0];
  assign betaXor_5[1] = betaLOut_5[1] ^ betaROut_5[1];
  assign betaXor_5[2] = betaLOut_5[2] ^ betaROut_5[2];
  assign betaXor_5[3] = betaLOut_5[3] ^ betaROut_5[3];
  assign betaXor_5[4] = betaLOut_5[4] ^ betaROut_5[4];
  assign betaXor_5[5] = betaLOut_5[5] ^ betaROut_5[5];
  assign betaXor_5[6] = betaLOut_5[6] ^ betaROut_5[6];
  assign betaXor_5[7] = betaLOut_5[7] ^ betaROut_5[7];
  assign betaXor_5[8] = betaLOut_5[8] ^ betaROut_5[8];
  assign betaXor_5[9] = betaLOut_5[9] ^ betaROut_5[9];
  assign betaXor_5[10] = betaLOut_5[10] ^ betaROut_5[10];
  assign betaXor_5[11] = betaLOut_5[11] ^ betaROut_5[11];
  assign betaXor_5[12] = betaLOut_5[12] ^ betaROut_5[12];
  assign betaXor_5[13] = betaLOut_5[13] ^ betaROut_5[13];
  assign betaXor_5[14] = betaLOut_5[14] ^ betaROut_5[14];
  assign betaXor_5[15] = betaLOut_5[15] ^ betaROut_5[15];



  assign betaROut_5_0 = betaROut_5[0];

  always @(posedge clk or posedge reset)
    begin : intdelay_1_1_process
      if (reset == 1'b1) begin
        intdelay_1_reg[0] <= 1'b0;
        intdelay_1_reg[1] <= 1'b0;
        intdelay_1_reg_1[0] <= 1'b0;
        intdelay_1_reg_1[1] <= 1'b0;
        intdelay_1_reg_2[0] <= 1'b0;
        intdelay_1_reg_2[1] <= 1'b0;
        intdelay_1_reg_3[0] <= 1'b0;
        intdelay_1_reg_3[1] <= 1'b0;
        intdelay_1_reg_4[0] <= 1'b0;
        intdelay_1_reg_4[1] <= 1'b0;
        intdelay_1_reg_5[0] <= 1'b0;
        intdelay_1_reg_5[1] <= 1'b0;
        intdelay_1_reg_6[0] <= 1'b0;
        intdelay_1_reg_6[1] <= 1'b0;
        intdelay_1_reg_7[0] <= 1'b0;
        intdelay_1_reg_7[1] <= 1'b0;
        intdelay_1_reg_8[0] <= 1'b0;
        intdelay_1_reg_8[1] <= 1'b0;
        intdelay_1_reg_9[0] <= 1'b0;
        intdelay_1_reg_9[1] <= 1'b0;
        intdelay_1_reg_10[0] <= 1'b0;
        intdelay_1_reg_10[1] <= 1'b0;
        intdelay_1_reg_11[0] <= 1'b0;
        intdelay_1_reg_11[1] <= 1'b0;
        intdelay_1_reg_12[0] <= 1'b0;
        intdelay_1_reg_12[1] <= 1'b0;
        intdelay_1_reg_13[0] <= 1'b0;
        intdelay_1_reg_13[1] <= 1'b0;
        intdelay_1_reg_14[0] <= 1'b0;
        intdelay_1_reg_14[1] <= 1'b0;
        intdelay_1_reg_15[0] <= 1'b0;
        intdelay_1_reg_15[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg[0] <= intdelay_1_reg_next[0];
          intdelay_1_reg[1] <= intdelay_1_reg_next[1];
          intdelay_1_reg_1[0] <= intdelay_1_reg_next_1[0];
          intdelay_1_reg_1[1] <= intdelay_1_reg_next_1[1];
          intdelay_1_reg_2[0] <= intdelay_1_reg_next_2[0];
          intdelay_1_reg_2[1] <= intdelay_1_reg_next_2[1];
          intdelay_1_reg_3[0] <= intdelay_1_reg_next_3[0];
          intdelay_1_reg_3[1] <= intdelay_1_reg_next_3[1];
          intdelay_1_reg_4[0] <= intdelay_1_reg_next_4[0];
          intdelay_1_reg_4[1] <= intdelay_1_reg_next_4[1];
          intdelay_1_reg_5[0] <= intdelay_1_reg_next_5[0];
          intdelay_1_reg_5[1] <= intdelay_1_reg_next_5[1];
          intdelay_1_reg_6[0] <= intdelay_1_reg_next_6[0];
          intdelay_1_reg_6[1] <= intdelay_1_reg_next_6[1];
          intdelay_1_reg_7[0] <= intdelay_1_reg_next_7[0];
          intdelay_1_reg_7[1] <= intdelay_1_reg_next_7[1];
          intdelay_1_reg_8[0] <= intdelay_1_reg_next_8[0];
          intdelay_1_reg_8[1] <= intdelay_1_reg_next_8[1];
          intdelay_1_reg_9[0] <= intdelay_1_reg_next_9[0];
          intdelay_1_reg_9[1] <= intdelay_1_reg_next_9[1];
          intdelay_1_reg_10[0] <= intdelay_1_reg_next_10[0];
          intdelay_1_reg_10[1] <= intdelay_1_reg_next_10[1];
          intdelay_1_reg_11[0] <= intdelay_1_reg_next_11[0];
          intdelay_1_reg_11[1] <= intdelay_1_reg_next_11[1];
          intdelay_1_reg_12[0] <= intdelay_1_reg_next_12[0];
          intdelay_1_reg_12[1] <= intdelay_1_reg_next_12[1];
          intdelay_1_reg_13[0] <= intdelay_1_reg_next_13[0];
          intdelay_1_reg_13[1] <= intdelay_1_reg_next_13[1];
          intdelay_1_reg_14[0] <= intdelay_1_reg_next_14[0];
          intdelay_1_reg_14[1] <= intdelay_1_reg_next_14[1];
          intdelay_1_reg_15[0] <= intdelay_1_reg_next_15[0];
          intdelay_1_reg_15[1] <= intdelay_1_reg_next_15[1];
        end
      end
    end

  assign intdelay_1_reg_next[0] = betaROut_5_0;
  assign intdelay_1_reg_next[1] = intdelay_1_reg[0];
  assign intdelay_out_1 = intdelay_1_reg[1];
  assign intdelay_1_reg_next_1[0] = betaROut_5_1;
  assign intdelay_1_reg_next_1[1] = intdelay_1_reg_1[0];
  assign intdelay_out_2 = intdelay_1_reg_1[1];
  assign intdelay_1_reg_next_2[0] = betaROut_5_2;
  assign intdelay_1_reg_next_2[1] = intdelay_1_reg_2[0];
  assign intdelay_out_3 = intdelay_1_reg_2[1];
  assign intdelay_1_reg_next_3[0] = betaROut_5_3;
  assign intdelay_1_reg_next_3[1] = intdelay_1_reg_3[0];
  assign intdelay_out_4 = intdelay_1_reg_3[1];
  assign intdelay_1_reg_next_4[0] = betaROut_5_4;
  assign intdelay_1_reg_next_4[1] = intdelay_1_reg_4[0];
  assign intdelay_out_5 = intdelay_1_reg_4[1];
  assign intdelay_1_reg_next_5[0] = betaROut_5_5;
  assign intdelay_1_reg_next_5[1] = intdelay_1_reg_5[0];
  assign intdelay_out_6 = intdelay_1_reg_5[1];
  assign intdelay_1_reg_next_6[0] = betaROut_5_6;
  assign intdelay_1_reg_next_6[1] = intdelay_1_reg_6[0];
  assign intdelay_out_7 = intdelay_1_reg_6[1];
  assign intdelay_1_reg_next_7[0] = betaROut_5_7;
  assign intdelay_1_reg_next_7[1] = intdelay_1_reg_7[0];
  assign intdelay_out_8 = intdelay_1_reg_7[1];
  assign intdelay_1_reg_next_8[0] = betaROut_5_8;
  assign intdelay_1_reg_next_8[1] = intdelay_1_reg_8[0];
  assign intdelay_out_9 = intdelay_1_reg_8[1];
  assign intdelay_1_reg_next_9[0] = betaROut_5_9;
  assign intdelay_1_reg_next_9[1] = intdelay_1_reg_9[0];
  assign intdelay_out_10 = intdelay_1_reg_9[1];
  assign intdelay_1_reg_next_10[0] = betaROut_5_10;
  assign intdelay_1_reg_next_10[1] = intdelay_1_reg_10[0];
  assign intdelay_out_11 = intdelay_1_reg_10[1];
  assign intdelay_1_reg_next_11[0] = betaROut_5_11;
  assign intdelay_1_reg_next_11[1] = intdelay_1_reg_11[0];
  assign intdelay_out_12 = intdelay_1_reg_11[1];
  assign intdelay_1_reg_next_12[0] = betaROut_5_12;
  assign intdelay_1_reg_next_12[1] = intdelay_1_reg_12[0];
  assign intdelay_out_13 = intdelay_1_reg_12[1];
  assign intdelay_1_reg_next_13[0] = betaROut_5_13;
  assign intdelay_1_reg_next_13[1] = intdelay_1_reg_13[0];
  assign intdelay_out_14 = intdelay_1_reg_13[1];
  assign intdelay_1_reg_next_14[0] = betaROut_5_14;
  assign intdelay_1_reg_next_14[1] = intdelay_1_reg_14[0];
  assign intdelay_out_15 = intdelay_1_reg_14[1];
  assign intdelay_1_reg_next_15[0] = betaROut_5_15;
  assign intdelay_1_reg_next_15[1] = intdelay_1_reg_15[0];
  assign intdelay_out_16 = intdelay_1_reg_15[1];



  assign betaROut_5_1 = betaROut_5[1];

  assign betaROut_5_2 = betaROut_5[2];

  assign betaROut_5_3 = betaROut_5[3];

  assign betaROut_5_4 = betaROut_5[4];

  assign betaROut_5_5 = betaROut_5[5];

  assign betaROut_5_6 = betaROut_5[6];

  assign betaROut_5_7 = betaROut_5[7];

  assign betaROut_5_8 = betaROut_5[8];

  assign betaROut_5_9 = betaROut_5[9];

  assign betaROut_5_10 = betaROut_5[10];

  assign betaROut_5_11 = betaROut_5[11];

  assign betaROut_5_12 = betaROut_5[12];

  assign betaROut_5_13 = betaROut_5[13];

  assign betaROut_5_14 = betaROut_5[14];

  assign betaROut_5_15 = betaROut_5[15];

  assign betaRIn_reg_1[0] = intdelay_out_1;
  assign betaRIn_reg_1[1] = intdelay_out_2;
  assign betaRIn_reg_1[2] = intdelay_out_3;
  assign betaRIn_reg_1[3] = intdelay_out_4;
  assign betaRIn_reg_1[4] = intdelay_out_5;
  assign betaRIn_reg_1[5] = intdelay_out_6;
  assign betaRIn_reg_1[6] = intdelay_out_7;
  assign betaRIn_reg_1[7] = intdelay_out_8;
  assign betaRIn_reg_1[8] = intdelay_out_9;
  assign betaRIn_reg_1[9] = intdelay_out_10;
  assign betaRIn_reg_1[10] = intdelay_out_11;
  assign betaRIn_reg_1[11] = intdelay_out_12;
  assign betaRIn_reg_1[12] = intdelay_out_13;
  assign betaRIn_reg_1[13] = intdelay_out_14;
  assign betaRIn_reg_1[14] = intdelay_out_15;
  assign betaRIn_reg_1[15] = intdelay_out_16;

  assign betaROut_6[0] = (betaPass_1 == 1'b0 ? betaXor_5[0] :
              betaRIn_reg_1[0]);
  assign betaROut_6[1] = (betaPass_1 == 1'b0 ? betaXor_5[1] :
              betaRIn_reg_1[1]);
  assign betaROut_6[2] = (betaPass_1 == 1'b0 ? betaXor_5[2] :
              betaRIn_reg_1[2]);
  assign betaROut_6[3] = (betaPass_1 == 1'b0 ? betaXor_5[3] :
              betaRIn_reg_1[3]);
  assign betaROut_6[4] = (betaPass_1 == 1'b0 ? betaXor_5[4] :
              betaRIn_reg_1[4]);
  assign betaROut_6[5] = (betaPass_1 == 1'b0 ? betaXor_5[5] :
              betaRIn_reg_1[5]);
  assign betaROut_6[6] = (betaPass_1 == 1'b0 ? betaXor_5[6] :
              betaRIn_reg_1[6]);
  assign betaROut_6[7] = (betaPass_1 == 1'b0 ? betaXor_5[7] :
              betaRIn_reg_1[7]);
  assign betaROut_6[8] = (betaPass_1 == 1'b0 ? betaXor_5[8] :
              betaRIn_reg_1[8]);
  assign betaROut_6[9] = (betaPass_1 == 1'b0 ? betaXor_5[9] :
              betaRIn_reg_1[9]);
  assign betaROut_6[10] = (betaPass_1 == 1'b0 ? betaXor_5[10] :
              betaRIn_reg_1[10]);
  assign betaROut_6[11] = (betaPass_1 == 1'b0 ? betaXor_5[11] :
              betaRIn_reg_1[11]);
  assign betaROut_6[12] = (betaPass_1 == 1'b0 ? betaXor_5[12] :
              betaRIn_reg_1[12]);
  assign betaROut_6[13] = (betaPass_1 == 1'b0 ? betaXor_5[13] :
              betaRIn_reg_1[13]);
  assign betaROut_6[14] = (betaPass_1 == 1'b0 ? betaXor_5[14] :
              betaRIn_reg_1[14]);
  assign betaROut_6[15] = (betaPass_1 == 1'b0 ? betaXor_5[15] :
              betaRIn_reg_1[15]);



  assign betaSizeMatch_6[0] = betaROut_6[0];
  assign betaSizeMatch_6[1] = betaROut_6[1];
  assign betaSizeMatch_6[2] = betaROut_6[2];
  assign betaSizeMatch_6[3] = betaROut_6[3];
  assign betaSizeMatch_6[4] = betaROut_6[4];
  assign betaSizeMatch_6[5] = betaROut_6[5];
  assign betaSizeMatch_6[6] = betaROut_6[6];
  assign betaSizeMatch_6[7] = betaROut_6[7];
  assign betaSizeMatch_6[8] = betaROut_6[8];
  assign betaSizeMatch_6[9] = betaROut_6[9];
  assign betaSizeMatch_6[10] = betaROut_6[10];
  assign betaSizeMatch_6[11] = betaROut_6[11];
  assign betaSizeMatch_6[12] = betaROut_6[12];
  assign betaSizeMatch_6[13] = betaROut_6[13];
  assign betaSizeMatch_6[14] = betaROut_6[14];
  assign betaSizeMatch_6[15] = betaROut_6[15];

  assign betaPass_2 = rdBlock_reg[2];



  assign betaConcat_5[0] = betaXor_5[0];
  assign betaConcat_5[1] = betaXor_5[1];
  assign betaConcat_5[2] = betaXor_5[2];
  assign betaConcat_5[3] = betaXor_5[3];
  assign betaConcat_5[4] = betaXor_5[4];
  assign betaConcat_5[5] = betaXor_5[5];
  assign betaConcat_5[6] = betaXor_5[6];
  assign betaConcat_5[7] = betaXor_5[7];
  assign betaConcat_5[8] = betaXor_5[8];
  assign betaConcat_5[9] = betaXor_5[9];
  assign betaConcat_5[10] = betaXor_5[10];
  assign betaConcat_5[11] = betaXor_5[11];
  assign betaConcat_5[12] = betaXor_5[12];
  assign betaConcat_5[13] = betaXor_5[13];
  assign betaConcat_5[14] = betaXor_5[14];
  assign betaConcat_5[15] = betaXor_5[15];
  assign betaConcat_5[16] = betaROut_5[0];
  assign betaConcat_5[17] = betaROut_5[1];
  assign betaConcat_5[18] = betaROut_5[2];
  assign betaConcat_5[19] = betaROut_5[3];
  assign betaConcat_5[20] = betaROut_5[4];
  assign betaConcat_5[21] = betaROut_5[5];
  assign betaConcat_5[22] = betaROut_5[6];
  assign betaConcat_5[23] = betaROut_5[7];
  assign betaConcat_5[24] = betaROut_5[8];
  assign betaConcat_5[25] = betaROut_5[9];
  assign betaConcat_5[26] = betaROut_5[10];
  assign betaConcat_5[27] = betaROut_5[11];
  assign betaConcat_5[28] = betaROut_5[12];
  assign betaConcat_5[29] = betaROut_5[13];
  assign betaConcat_5[30] = betaROut_5[14];
  assign betaConcat_5[31] = betaROut_5[15];

  assign betaDin_5 = {betaConcat_5[0], betaConcat_5[1], betaConcat_5[2], betaConcat_5[3], betaConcat_5[4], betaConcat_5[5], betaConcat_5[6], betaConcat_5[7], betaConcat_5[8], betaConcat_5[9], betaConcat_5[10], betaConcat_5[11], betaConcat_5[12], betaConcat_5[13], betaConcat_5[14], betaConcat_5[15], betaConcat_5[16], betaConcat_5[17], betaConcat_5[18], betaConcat_5[19], betaConcat_5[20], betaConcat_5[21], betaConcat_5[22], betaConcat_5[23], betaConcat_5[24], betaConcat_5[25], betaConcat_5[26], betaConcat_5[27], betaConcat_5[28], betaConcat_5[29], betaConcat_5[30], betaConcat_5[31]};



  assign rdBlockSlice_0 = rdBlock_reg[0];



  assign betaWrAddr_5 = {rdBlockSlice_0, betaWrPath_reg};



  assign stageEn_6 = rdStage_reg == 4'b0110;



  assign stageWr_6 = stageEn_6 & mode;



  assign rdBlockSlice_0_1 = rdBlock[0];



  assign betaRdAddr_5 = {rdBlockSlice_0_1, betaRdPath_6};



  SimpleDualPortRAM_generic #(.AddrWidth(2),
                              .DataWidth(32)
                              )
                            u_stage_6 (.clk(clk),
                                       .enb(enb),
                                       .wr_din(betaDin_5),
                                       .wr_addr(betaWrAddr_5),
                                       .wr_en(stageWr_6),
                                       .rd_addr(betaRdAddr_5),
                                       .rd_dout(betaDout_5)
                                       );

  assign doutSlice_62 = betaDout_5[31];



  assign doutSlice_63 = betaDout_5[30];



  assign doutSlice_64 = betaDout_5[29];



  assign doutSlice_65 = betaDout_5[28];



  assign doutSlice_66 = betaDout_5[27];



  assign doutSlice_67 = betaDout_5[26];



  assign doutSlice_68 = betaDout_5[25];



  assign doutSlice_69 = betaDout_5[24];



  assign doutSlice_70 = betaDout_5[23];



  assign doutSlice_71 = betaDout_5[22];



  assign doutSlice_72 = betaDout_5[21];



  assign doutSlice_73 = betaDout_5[20];



  assign doutSlice_74 = betaDout_5[19];



  assign doutSlice_75 = betaDout_5[18];



  assign doutSlice_76 = betaDout_5[17];



  assign doutSlice_77 = betaDout_5[16];



  assign betaLLower_1[0] = doutSlice_62;
  assign betaLLower_1[1] = doutSlice_63;
  assign betaLLower_1[2] = doutSlice_64;
  assign betaLLower_1[3] = doutSlice_65;
  assign betaLLower_1[4] = doutSlice_66;
  assign betaLLower_1[5] = doutSlice_67;
  assign betaLLower_1[6] = doutSlice_68;
  assign betaLLower_1[7] = doutSlice_69;
  assign betaLLower_1[8] = doutSlice_70;
  assign betaLLower_1[9] = doutSlice_71;
  assign betaLLower_1[10] = doutSlice_72;
  assign betaLLower_1[11] = doutSlice_73;
  assign betaLLower_1[12] = doutSlice_74;
  assign betaLLower_1[13] = doutSlice_75;
  assign betaLLower_1[14] = doutSlice_76;
  assign betaLLower_1[15] = doutSlice_77;

  assign doutSlice_78 = betaDout_5[15];



  always @(posedge clk or posedge reset)
    begin : intdelay_1_2_process
      if (reset == 1'b1) begin
        intdelay_1_reg_16[0] <= 1'b0;
        intdelay_1_reg_16[1] <= 1'b0;
        intdelay_1_reg_17[0] <= 1'b0;
        intdelay_1_reg_17[1] <= 1'b0;
        intdelay_1_reg_18[0] <= 1'b0;
        intdelay_1_reg_18[1] <= 1'b0;
        intdelay_1_reg_19[0] <= 1'b0;
        intdelay_1_reg_19[1] <= 1'b0;
        intdelay_1_reg_20[0] <= 1'b0;
        intdelay_1_reg_20[1] <= 1'b0;
        intdelay_1_reg_21[0] <= 1'b0;
        intdelay_1_reg_21[1] <= 1'b0;
        intdelay_1_reg_22[0] <= 1'b0;
        intdelay_1_reg_22[1] <= 1'b0;
        intdelay_1_reg_23[0] <= 1'b0;
        intdelay_1_reg_23[1] <= 1'b0;
        intdelay_1_reg_24[0] <= 1'b0;
        intdelay_1_reg_24[1] <= 1'b0;
        intdelay_1_reg_25[0] <= 1'b0;
        intdelay_1_reg_25[1] <= 1'b0;
        intdelay_1_reg_26[0] <= 1'b0;
        intdelay_1_reg_26[1] <= 1'b0;
        intdelay_1_reg_27[0] <= 1'b0;
        intdelay_1_reg_27[1] <= 1'b0;
        intdelay_1_reg_28[0] <= 1'b0;
        intdelay_1_reg_28[1] <= 1'b0;
        intdelay_1_reg_29[0] <= 1'b0;
        intdelay_1_reg_29[1] <= 1'b0;
        intdelay_1_reg_30[0] <= 1'b0;
        intdelay_1_reg_30[1] <= 1'b0;
        intdelay_1_reg_31[0] <= 1'b0;
        intdelay_1_reg_31[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg_16[0] <= intdelay_1_reg_next_16[0];
          intdelay_1_reg_16[1] <= intdelay_1_reg_next_16[1];
          intdelay_1_reg_17[0] <= intdelay_1_reg_next_17[0];
          intdelay_1_reg_17[1] <= intdelay_1_reg_next_17[1];
          intdelay_1_reg_18[0] <= intdelay_1_reg_next_18[0];
          intdelay_1_reg_18[1] <= intdelay_1_reg_next_18[1];
          intdelay_1_reg_19[0] <= intdelay_1_reg_next_19[0];
          intdelay_1_reg_19[1] <= intdelay_1_reg_next_19[1];
          intdelay_1_reg_20[0] <= intdelay_1_reg_next_20[0];
          intdelay_1_reg_20[1] <= intdelay_1_reg_next_20[1];
          intdelay_1_reg_21[0] <= intdelay_1_reg_next_21[0];
          intdelay_1_reg_21[1] <= intdelay_1_reg_next_21[1];
          intdelay_1_reg_22[0] <= intdelay_1_reg_next_22[0];
          intdelay_1_reg_22[1] <= intdelay_1_reg_next_22[1];
          intdelay_1_reg_23[0] <= intdelay_1_reg_next_23[0];
          intdelay_1_reg_23[1] <= intdelay_1_reg_next_23[1];
          intdelay_1_reg_24[0] <= intdelay_1_reg_next_24[0];
          intdelay_1_reg_24[1] <= intdelay_1_reg_next_24[1];
          intdelay_1_reg_25[0] <= intdelay_1_reg_next_25[0];
          intdelay_1_reg_25[1] <= intdelay_1_reg_next_25[1];
          intdelay_1_reg_26[0] <= intdelay_1_reg_next_26[0];
          intdelay_1_reg_26[1] <= intdelay_1_reg_next_26[1];
          intdelay_1_reg_27[0] <= intdelay_1_reg_next_27[0];
          intdelay_1_reg_27[1] <= intdelay_1_reg_next_27[1];
          intdelay_1_reg_28[0] <= intdelay_1_reg_next_28[0];
          intdelay_1_reg_28[1] <= intdelay_1_reg_next_28[1];
          intdelay_1_reg_29[0] <= intdelay_1_reg_next_29[0];
          intdelay_1_reg_29[1] <= intdelay_1_reg_next_29[1];
          intdelay_1_reg_30[0] <= intdelay_1_reg_next_30[0];
          intdelay_1_reg_30[1] <= intdelay_1_reg_next_30[1];
          intdelay_1_reg_31[0] <= intdelay_1_reg_next_31[0];
          intdelay_1_reg_31[1] <= intdelay_1_reg_next_31[1];
        end
      end
    end

  assign intdelay_1_reg_next_16[0] = doutSlice_78;
  assign intdelay_1_reg_next_16[1] = intdelay_1_reg_16[0];
  assign intdelay_out_1_1 = intdelay_1_reg_16[1];
  assign intdelay_1_reg_next_17[0] = doutSlice_79;
  assign intdelay_1_reg_next_17[1] = intdelay_1_reg_17[0];
  assign intdelay_out_2_1 = intdelay_1_reg_17[1];
  assign intdelay_1_reg_next_18[0] = doutSlice_80;
  assign intdelay_1_reg_next_18[1] = intdelay_1_reg_18[0];
  assign intdelay_out_3_1 = intdelay_1_reg_18[1];
  assign intdelay_1_reg_next_19[0] = doutSlice_81;
  assign intdelay_1_reg_next_19[1] = intdelay_1_reg_19[0];
  assign intdelay_out_4_1 = intdelay_1_reg_19[1];
  assign intdelay_1_reg_next_20[0] = doutSlice_82;
  assign intdelay_1_reg_next_20[1] = intdelay_1_reg_20[0];
  assign intdelay_out_5_1 = intdelay_1_reg_20[1];
  assign intdelay_1_reg_next_21[0] = doutSlice_83;
  assign intdelay_1_reg_next_21[1] = intdelay_1_reg_21[0];
  assign intdelay_out_6_1 = intdelay_1_reg_21[1];
  assign intdelay_1_reg_next_22[0] = doutSlice_84;
  assign intdelay_1_reg_next_22[1] = intdelay_1_reg_22[0];
  assign intdelay_out_7_1 = intdelay_1_reg_22[1];
  assign intdelay_1_reg_next_23[0] = doutSlice_85;
  assign intdelay_1_reg_next_23[1] = intdelay_1_reg_23[0];
  assign intdelay_out_8_1 = intdelay_1_reg_23[1];
  assign intdelay_1_reg_next_24[0] = doutSlice_86;
  assign intdelay_1_reg_next_24[1] = intdelay_1_reg_24[0];
  assign intdelay_out_9_1 = intdelay_1_reg_24[1];
  assign intdelay_1_reg_next_25[0] = doutSlice_87;
  assign intdelay_1_reg_next_25[1] = intdelay_1_reg_25[0];
  assign intdelay_out_10_1 = intdelay_1_reg_25[1];
  assign intdelay_1_reg_next_26[0] = doutSlice_88;
  assign intdelay_1_reg_next_26[1] = intdelay_1_reg_26[0];
  assign intdelay_out_11_1 = intdelay_1_reg_26[1];
  assign intdelay_1_reg_next_27[0] = doutSlice_89;
  assign intdelay_1_reg_next_27[1] = intdelay_1_reg_27[0];
  assign intdelay_out_12_1 = intdelay_1_reg_27[1];
  assign intdelay_1_reg_next_28[0] = doutSlice_90;
  assign intdelay_1_reg_next_28[1] = intdelay_1_reg_28[0];
  assign intdelay_out_13_1 = intdelay_1_reg_28[1];
  assign intdelay_1_reg_next_29[0] = doutSlice_91;
  assign intdelay_1_reg_next_29[1] = intdelay_1_reg_29[0];
  assign intdelay_out_14_1 = intdelay_1_reg_29[1];
  assign intdelay_1_reg_next_30[0] = doutSlice_92;
  assign intdelay_1_reg_next_30[1] = intdelay_1_reg_30[0];
  assign intdelay_out_15_1 = intdelay_1_reg_30[1];
  assign intdelay_1_reg_next_31[0] = doutSlice_93;
  assign intdelay_1_reg_next_31[1] = intdelay_1_reg_31[0];
  assign intdelay_out_16_1 = intdelay_1_reg_31[1];



  assign doutSlice_79 = betaDout_5[14];



  assign doutSlice_80 = betaDout_5[13];



  assign doutSlice_81 = betaDout_5[12];



  assign doutSlice_82 = betaDout_5[11];



  assign doutSlice_83 = betaDout_5[10];



  assign doutSlice_84 = betaDout_5[9];



  assign doutSlice_85 = betaDout_5[8];



  assign doutSlice_86 = betaDout_5[7];



  assign doutSlice_87 = betaDout_5[6];



  assign doutSlice_88 = betaDout_5[5];



  assign doutSlice_89 = betaDout_5[4];



  assign doutSlice_90 = betaDout_5[3];



  assign doutSlice_91 = betaDout_5[2];



  assign doutSlice_92 = betaDout_5[1];



  assign doutSlice_93 = betaDout_5[0];



  assign betaLUpper_reg1[0] = intdelay_out_1_1;
  assign betaLUpper_reg1[1] = intdelay_out_2_1;
  assign betaLUpper_reg1[2] = intdelay_out_3_1;
  assign betaLUpper_reg1[3] = intdelay_out_4_1;
  assign betaLUpper_reg1[4] = intdelay_out_5_1;
  assign betaLUpper_reg1[5] = intdelay_out_6_1;
  assign betaLUpper_reg1[6] = intdelay_out_7_1;
  assign betaLUpper_reg1[7] = intdelay_out_8_1;
  assign betaLUpper_reg1[8] = intdelay_out_9_1;
  assign betaLUpper_reg1[9] = intdelay_out_10_1;
  assign betaLUpper_reg1[10] = intdelay_out_11_1;
  assign betaLUpper_reg1[11] = intdelay_out_12_1;
  assign betaLUpper_reg1[12] = intdelay_out_13_1;
  assign betaLUpper_reg1[13] = intdelay_out_14_1;
  assign betaLUpper_reg1[14] = intdelay_out_15_1;
  assign betaLUpper_reg1[15] = intdelay_out_16_1;

  assign betaLOut_6[0] = (betaPass_1 == 1'b0 ? betaLLower_1[0] :
              betaLUpper_reg1[0]);
  assign betaLOut_6[1] = (betaPass_1 == 1'b0 ? betaLLower_1[1] :
              betaLUpper_reg1[1]);
  assign betaLOut_6[2] = (betaPass_1 == 1'b0 ? betaLLower_1[2] :
              betaLUpper_reg1[2]);
  assign betaLOut_6[3] = (betaPass_1 == 1'b0 ? betaLLower_1[3] :
              betaLUpper_reg1[3]);
  assign betaLOut_6[4] = (betaPass_1 == 1'b0 ? betaLLower_1[4] :
              betaLUpper_reg1[4]);
  assign betaLOut_6[5] = (betaPass_1 == 1'b0 ? betaLLower_1[5] :
              betaLUpper_reg1[5]);
  assign betaLOut_6[6] = (betaPass_1 == 1'b0 ? betaLLower_1[6] :
              betaLUpper_reg1[6]);
  assign betaLOut_6[7] = (betaPass_1 == 1'b0 ? betaLLower_1[7] :
              betaLUpper_reg1[7]);
  assign betaLOut_6[8] = (betaPass_1 == 1'b0 ? betaLLower_1[8] :
              betaLUpper_reg1[8]);
  assign betaLOut_6[9] = (betaPass_1 == 1'b0 ? betaLLower_1[9] :
              betaLUpper_reg1[9]);
  assign betaLOut_6[10] = (betaPass_1 == 1'b0 ? betaLLower_1[10] :
              betaLUpper_reg1[10]);
  assign betaLOut_6[11] = (betaPass_1 == 1'b0 ? betaLLower_1[11] :
              betaLUpper_reg1[11]);
  assign betaLOut_6[12] = (betaPass_1 == 1'b0 ? betaLLower_1[12] :
              betaLUpper_reg1[12]);
  assign betaLOut_6[13] = (betaPass_1 == 1'b0 ? betaLLower_1[13] :
              betaLUpper_reg1[13]);
  assign betaLOut_6[14] = (betaPass_1 == 1'b0 ? betaLLower_1[14] :
              betaLUpper_reg1[14]);
  assign betaLOut_6[15] = (betaPass_1 == 1'b0 ? betaLLower_1[15] :
              betaLUpper_reg1[15]);



  assign betaXor_6[0] = betaLOut_6[0] ^ betaROut_6[0];
  assign betaXor_6[1] = betaLOut_6[1] ^ betaROut_6[1];
  assign betaXor_6[2] = betaLOut_6[2] ^ betaROut_6[2];
  assign betaXor_6[3] = betaLOut_6[3] ^ betaROut_6[3];
  assign betaXor_6[4] = betaLOut_6[4] ^ betaROut_6[4];
  assign betaXor_6[5] = betaLOut_6[5] ^ betaROut_6[5];
  assign betaXor_6[6] = betaLOut_6[6] ^ betaROut_6[6];
  assign betaXor_6[7] = betaLOut_6[7] ^ betaROut_6[7];
  assign betaXor_6[8] = betaLOut_6[8] ^ betaROut_6[8];
  assign betaXor_6[9] = betaLOut_6[9] ^ betaROut_6[9];
  assign betaXor_6[10] = betaLOut_6[10] ^ betaROut_6[10];
  assign betaXor_6[11] = betaLOut_6[11] ^ betaROut_6[11];
  assign betaXor_6[12] = betaLOut_6[12] ^ betaROut_6[12];
  assign betaXor_6[13] = betaLOut_6[13] ^ betaROut_6[13];
  assign betaXor_6[14] = betaLOut_6[14] ^ betaROut_6[14];
  assign betaXor_6[15] = betaLOut_6[15] ^ betaROut_6[15];



  assign betaROut_6_0 = betaROut_6[0];

  always @(posedge clk or posedge reset)
    begin : intdelay_1_3_process
      if (reset == 1'b1) begin
        intdelay_1_reg_32[0] <= 1'b0;
        intdelay_1_reg_32[1] <= 1'b0;
        intdelay_1_reg_32[2] <= 1'b0;
        intdelay_1_reg_32[3] <= 1'b0;
        intdelay_1_reg_33[0] <= 1'b0;
        intdelay_1_reg_33[1] <= 1'b0;
        intdelay_1_reg_33[2] <= 1'b0;
        intdelay_1_reg_33[3] <= 1'b0;
        intdelay_1_reg_34[0] <= 1'b0;
        intdelay_1_reg_34[1] <= 1'b0;
        intdelay_1_reg_34[2] <= 1'b0;
        intdelay_1_reg_34[3] <= 1'b0;
        intdelay_1_reg_35[0] <= 1'b0;
        intdelay_1_reg_35[1] <= 1'b0;
        intdelay_1_reg_35[2] <= 1'b0;
        intdelay_1_reg_35[3] <= 1'b0;
        intdelay_1_reg_36[0] <= 1'b0;
        intdelay_1_reg_36[1] <= 1'b0;
        intdelay_1_reg_36[2] <= 1'b0;
        intdelay_1_reg_36[3] <= 1'b0;
        intdelay_1_reg_37[0] <= 1'b0;
        intdelay_1_reg_37[1] <= 1'b0;
        intdelay_1_reg_37[2] <= 1'b0;
        intdelay_1_reg_37[3] <= 1'b0;
        intdelay_1_reg_38[0] <= 1'b0;
        intdelay_1_reg_38[1] <= 1'b0;
        intdelay_1_reg_38[2] <= 1'b0;
        intdelay_1_reg_38[3] <= 1'b0;
        intdelay_1_reg_39[0] <= 1'b0;
        intdelay_1_reg_39[1] <= 1'b0;
        intdelay_1_reg_39[2] <= 1'b0;
        intdelay_1_reg_39[3] <= 1'b0;
        intdelay_1_reg_40[0] <= 1'b0;
        intdelay_1_reg_40[1] <= 1'b0;
        intdelay_1_reg_40[2] <= 1'b0;
        intdelay_1_reg_40[3] <= 1'b0;
        intdelay_1_reg_41[0] <= 1'b0;
        intdelay_1_reg_41[1] <= 1'b0;
        intdelay_1_reg_41[2] <= 1'b0;
        intdelay_1_reg_41[3] <= 1'b0;
        intdelay_1_reg_42[0] <= 1'b0;
        intdelay_1_reg_42[1] <= 1'b0;
        intdelay_1_reg_42[2] <= 1'b0;
        intdelay_1_reg_42[3] <= 1'b0;
        intdelay_1_reg_43[0] <= 1'b0;
        intdelay_1_reg_43[1] <= 1'b0;
        intdelay_1_reg_43[2] <= 1'b0;
        intdelay_1_reg_43[3] <= 1'b0;
        intdelay_1_reg_44[0] <= 1'b0;
        intdelay_1_reg_44[1] <= 1'b0;
        intdelay_1_reg_44[2] <= 1'b0;
        intdelay_1_reg_44[3] <= 1'b0;
        intdelay_1_reg_45[0] <= 1'b0;
        intdelay_1_reg_45[1] <= 1'b0;
        intdelay_1_reg_45[2] <= 1'b0;
        intdelay_1_reg_45[3] <= 1'b0;
        intdelay_1_reg_46[0] <= 1'b0;
        intdelay_1_reg_46[1] <= 1'b0;
        intdelay_1_reg_46[2] <= 1'b0;
        intdelay_1_reg_46[3] <= 1'b0;
        intdelay_1_reg_47[0] <= 1'b0;
        intdelay_1_reg_47[1] <= 1'b0;
        intdelay_1_reg_47[2] <= 1'b0;
        intdelay_1_reg_47[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg_32[0] <= intdelay_1_reg_next_32[0];
          intdelay_1_reg_32[1] <= intdelay_1_reg_next_32[1];
          intdelay_1_reg_32[2] <= intdelay_1_reg_next_32[2];
          intdelay_1_reg_32[3] <= intdelay_1_reg_next_32[3];
          intdelay_1_reg_33[0] <= intdelay_1_reg_next_33[0];
          intdelay_1_reg_33[1] <= intdelay_1_reg_next_33[1];
          intdelay_1_reg_33[2] <= intdelay_1_reg_next_33[2];
          intdelay_1_reg_33[3] <= intdelay_1_reg_next_33[3];
          intdelay_1_reg_34[0] <= intdelay_1_reg_next_34[0];
          intdelay_1_reg_34[1] <= intdelay_1_reg_next_34[1];
          intdelay_1_reg_34[2] <= intdelay_1_reg_next_34[2];
          intdelay_1_reg_34[3] <= intdelay_1_reg_next_34[3];
          intdelay_1_reg_35[0] <= intdelay_1_reg_next_35[0];
          intdelay_1_reg_35[1] <= intdelay_1_reg_next_35[1];
          intdelay_1_reg_35[2] <= intdelay_1_reg_next_35[2];
          intdelay_1_reg_35[3] <= intdelay_1_reg_next_35[3];
          intdelay_1_reg_36[0] <= intdelay_1_reg_next_36[0];
          intdelay_1_reg_36[1] <= intdelay_1_reg_next_36[1];
          intdelay_1_reg_36[2] <= intdelay_1_reg_next_36[2];
          intdelay_1_reg_36[3] <= intdelay_1_reg_next_36[3];
          intdelay_1_reg_37[0] <= intdelay_1_reg_next_37[0];
          intdelay_1_reg_37[1] <= intdelay_1_reg_next_37[1];
          intdelay_1_reg_37[2] <= intdelay_1_reg_next_37[2];
          intdelay_1_reg_37[3] <= intdelay_1_reg_next_37[3];
          intdelay_1_reg_38[0] <= intdelay_1_reg_next_38[0];
          intdelay_1_reg_38[1] <= intdelay_1_reg_next_38[1];
          intdelay_1_reg_38[2] <= intdelay_1_reg_next_38[2];
          intdelay_1_reg_38[3] <= intdelay_1_reg_next_38[3];
          intdelay_1_reg_39[0] <= intdelay_1_reg_next_39[0];
          intdelay_1_reg_39[1] <= intdelay_1_reg_next_39[1];
          intdelay_1_reg_39[2] <= intdelay_1_reg_next_39[2];
          intdelay_1_reg_39[3] <= intdelay_1_reg_next_39[3];
          intdelay_1_reg_40[0] <= intdelay_1_reg_next_40[0];
          intdelay_1_reg_40[1] <= intdelay_1_reg_next_40[1];
          intdelay_1_reg_40[2] <= intdelay_1_reg_next_40[2];
          intdelay_1_reg_40[3] <= intdelay_1_reg_next_40[3];
          intdelay_1_reg_41[0] <= intdelay_1_reg_next_41[0];
          intdelay_1_reg_41[1] <= intdelay_1_reg_next_41[1];
          intdelay_1_reg_41[2] <= intdelay_1_reg_next_41[2];
          intdelay_1_reg_41[3] <= intdelay_1_reg_next_41[3];
          intdelay_1_reg_42[0] <= intdelay_1_reg_next_42[0];
          intdelay_1_reg_42[1] <= intdelay_1_reg_next_42[1];
          intdelay_1_reg_42[2] <= intdelay_1_reg_next_42[2];
          intdelay_1_reg_42[3] <= intdelay_1_reg_next_42[3];
          intdelay_1_reg_43[0] <= intdelay_1_reg_next_43[0];
          intdelay_1_reg_43[1] <= intdelay_1_reg_next_43[1];
          intdelay_1_reg_43[2] <= intdelay_1_reg_next_43[2];
          intdelay_1_reg_43[3] <= intdelay_1_reg_next_43[3];
          intdelay_1_reg_44[0] <= intdelay_1_reg_next_44[0];
          intdelay_1_reg_44[1] <= intdelay_1_reg_next_44[1];
          intdelay_1_reg_44[2] <= intdelay_1_reg_next_44[2];
          intdelay_1_reg_44[3] <= intdelay_1_reg_next_44[3];
          intdelay_1_reg_45[0] <= intdelay_1_reg_next_45[0];
          intdelay_1_reg_45[1] <= intdelay_1_reg_next_45[1];
          intdelay_1_reg_45[2] <= intdelay_1_reg_next_45[2];
          intdelay_1_reg_45[3] <= intdelay_1_reg_next_45[3];
          intdelay_1_reg_46[0] <= intdelay_1_reg_next_46[0];
          intdelay_1_reg_46[1] <= intdelay_1_reg_next_46[1];
          intdelay_1_reg_46[2] <= intdelay_1_reg_next_46[2];
          intdelay_1_reg_46[3] <= intdelay_1_reg_next_46[3];
          intdelay_1_reg_47[0] <= intdelay_1_reg_next_47[0];
          intdelay_1_reg_47[1] <= intdelay_1_reg_next_47[1];
          intdelay_1_reg_47[2] <= intdelay_1_reg_next_47[2];
          intdelay_1_reg_47[3] <= intdelay_1_reg_next_47[3];
        end
      end
    end

  assign intdelay_1_reg_next_32[0] = betaROut_6_0;
  assign intdelay_1_reg_next_32[1] = intdelay_1_reg_32[0];
  assign intdelay_1_reg_next_32[2] = intdelay_1_reg_32[1];
  assign intdelay_1_reg_next_32[3] = intdelay_1_reg_32[2];
  assign intdelay_out_1_2 = intdelay_1_reg_32[3];
  assign intdelay_1_reg_next_33[0] = betaROut_6_1;
  assign intdelay_1_reg_next_33[1] = intdelay_1_reg_33[0];
  assign intdelay_1_reg_next_33[2] = intdelay_1_reg_33[1];
  assign intdelay_1_reg_next_33[3] = intdelay_1_reg_33[2];
  assign intdelay_out_2_2 = intdelay_1_reg_33[3];
  assign intdelay_1_reg_next_34[0] = betaROut_6_2;
  assign intdelay_1_reg_next_34[1] = intdelay_1_reg_34[0];
  assign intdelay_1_reg_next_34[2] = intdelay_1_reg_34[1];
  assign intdelay_1_reg_next_34[3] = intdelay_1_reg_34[2];
  assign intdelay_out_3_2 = intdelay_1_reg_34[3];
  assign intdelay_1_reg_next_35[0] = betaROut_6_3;
  assign intdelay_1_reg_next_35[1] = intdelay_1_reg_35[0];
  assign intdelay_1_reg_next_35[2] = intdelay_1_reg_35[1];
  assign intdelay_1_reg_next_35[3] = intdelay_1_reg_35[2];
  assign intdelay_out_4_2 = intdelay_1_reg_35[3];
  assign intdelay_1_reg_next_36[0] = betaROut_6_4;
  assign intdelay_1_reg_next_36[1] = intdelay_1_reg_36[0];
  assign intdelay_1_reg_next_36[2] = intdelay_1_reg_36[1];
  assign intdelay_1_reg_next_36[3] = intdelay_1_reg_36[2];
  assign intdelay_out_5_2 = intdelay_1_reg_36[3];
  assign intdelay_1_reg_next_37[0] = betaROut_6_5;
  assign intdelay_1_reg_next_37[1] = intdelay_1_reg_37[0];
  assign intdelay_1_reg_next_37[2] = intdelay_1_reg_37[1];
  assign intdelay_1_reg_next_37[3] = intdelay_1_reg_37[2];
  assign intdelay_out_6_2 = intdelay_1_reg_37[3];
  assign intdelay_1_reg_next_38[0] = betaROut_6_6;
  assign intdelay_1_reg_next_38[1] = intdelay_1_reg_38[0];
  assign intdelay_1_reg_next_38[2] = intdelay_1_reg_38[1];
  assign intdelay_1_reg_next_38[3] = intdelay_1_reg_38[2];
  assign intdelay_out_7_2 = intdelay_1_reg_38[3];
  assign intdelay_1_reg_next_39[0] = betaROut_6_7;
  assign intdelay_1_reg_next_39[1] = intdelay_1_reg_39[0];
  assign intdelay_1_reg_next_39[2] = intdelay_1_reg_39[1];
  assign intdelay_1_reg_next_39[3] = intdelay_1_reg_39[2];
  assign intdelay_out_8_2 = intdelay_1_reg_39[3];
  assign intdelay_1_reg_next_40[0] = betaROut_6_8;
  assign intdelay_1_reg_next_40[1] = intdelay_1_reg_40[0];
  assign intdelay_1_reg_next_40[2] = intdelay_1_reg_40[1];
  assign intdelay_1_reg_next_40[3] = intdelay_1_reg_40[2];
  assign intdelay_out_9_2 = intdelay_1_reg_40[3];
  assign intdelay_1_reg_next_41[0] = betaROut_6_9;
  assign intdelay_1_reg_next_41[1] = intdelay_1_reg_41[0];
  assign intdelay_1_reg_next_41[2] = intdelay_1_reg_41[1];
  assign intdelay_1_reg_next_41[3] = intdelay_1_reg_41[2];
  assign intdelay_out_10_2 = intdelay_1_reg_41[3];
  assign intdelay_1_reg_next_42[0] = betaROut_6_10;
  assign intdelay_1_reg_next_42[1] = intdelay_1_reg_42[0];
  assign intdelay_1_reg_next_42[2] = intdelay_1_reg_42[1];
  assign intdelay_1_reg_next_42[3] = intdelay_1_reg_42[2];
  assign intdelay_out_11_2 = intdelay_1_reg_42[3];
  assign intdelay_1_reg_next_43[0] = betaROut_6_11;
  assign intdelay_1_reg_next_43[1] = intdelay_1_reg_43[0];
  assign intdelay_1_reg_next_43[2] = intdelay_1_reg_43[1];
  assign intdelay_1_reg_next_43[3] = intdelay_1_reg_43[2];
  assign intdelay_out_12_2 = intdelay_1_reg_43[3];
  assign intdelay_1_reg_next_44[0] = betaROut_6_12;
  assign intdelay_1_reg_next_44[1] = intdelay_1_reg_44[0];
  assign intdelay_1_reg_next_44[2] = intdelay_1_reg_44[1];
  assign intdelay_1_reg_next_44[3] = intdelay_1_reg_44[2];
  assign intdelay_out_13_2 = intdelay_1_reg_44[3];
  assign intdelay_1_reg_next_45[0] = betaROut_6_13;
  assign intdelay_1_reg_next_45[1] = intdelay_1_reg_45[0];
  assign intdelay_1_reg_next_45[2] = intdelay_1_reg_45[1];
  assign intdelay_1_reg_next_45[3] = intdelay_1_reg_45[2];
  assign intdelay_out_14_2 = intdelay_1_reg_45[3];
  assign intdelay_1_reg_next_46[0] = betaROut_6_14;
  assign intdelay_1_reg_next_46[1] = intdelay_1_reg_46[0];
  assign intdelay_1_reg_next_46[2] = intdelay_1_reg_46[1];
  assign intdelay_1_reg_next_46[3] = intdelay_1_reg_46[2];
  assign intdelay_out_15_2 = intdelay_1_reg_46[3];
  assign intdelay_1_reg_next_47[0] = betaROut_6_15;
  assign intdelay_1_reg_next_47[1] = intdelay_1_reg_47[0];
  assign intdelay_1_reg_next_47[2] = intdelay_1_reg_47[1];
  assign intdelay_1_reg_next_47[3] = intdelay_1_reg_47[2];
  assign intdelay_out_16_2 = intdelay_1_reg_47[3];



  assign betaROut_6_1 = betaROut_6[1];

  assign betaROut_6_2 = betaROut_6[2];

  assign betaROut_6_3 = betaROut_6[3];

  assign betaROut_6_4 = betaROut_6[4];

  assign betaROut_6_5 = betaROut_6[5];

  assign betaROut_6_6 = betaROut_6[6];

  assign betaROut_6_7 = betaROut_6[7];

  assign betaROut_6_8 = betaROut_6[8];

  assign betaROut_6_9 = betaROut_6[9];

  assign betaROut_6_10 = betaROut_6[10];

  assign betaROut_6_11 = betaROut_6[11];

  assign betaROut_6_12 = betaROut_6[12];

  assign betaROut_6_13 = betaROut_6[13];

  assign betaROut_6_14 = betaROut_6[14];

  assign betaROut_6_15 = betaROut_6[15];

  assign betaRIn_reg_2[0] = intdelay_out_1_2;
  assign betaRIn_reg_2[1] = intdelay_out_2_2;
  assign betaRIn_reg_2[2] = intdelay_out_3_2;
  assign betaRIn_reg_2[3] = intdelay_out_4_2;
  assign betaRIn_reg_2[4] = intdelay_out_5_2;
  assign betaRIn_reg_2[5] = intdelay_out_6_2;
  assign betaRIn_reg_2[6] = intdelay_out_7_2;
  assign betaRIn_reg_2[7] = intdelay_out_8_2;
  assign betaRIn_reg_2[8] = intdelay_out_9_2;
  assign betaRIn_reg_2[9] = intdelay_out_10_2;
  assign betaRIn_reg_2[10] = intdelay_out_11_2;
  assign betaRIn_reg_2[11] = intdelay_out_12_2;
  assign betaRIn_reg_2[12] = intdelay_out_13_2;
  assign betaRIn_reg_2[13] = intdelay_out_14_2;
  assign betaRIn_reg_2[14] = intdelay_out_15_2;
  assign betaRIn_reg_2[15] = intdelay_out_16_2;

  assign betaROut_7[0] = (betaPass_2 == 1'b0 ? betaXor_6[0] :
              betaRIn_reg_2[0]);
  assign betaROut_7[1] = (betaPass_2 == 1'b0 ? betaXor_6[1] :
              betaRIn_reg_2[1]);
  assign betaROut_7[2] = (betaPass_2 == 1'b0 ? betaXor_6[2] :
              betaRIn_reg_2[2]);
  assign betaROut_7[3] = (betaPass_2 == 1'b0 ? betaXor_6[3] :
              betaRIn_reg_2[3]);
  assign betaROut_7[4] = (betaPass_2 == 1'b0 ? betaXor_6[4] :
              betaRIn_reg_2[4]);
  assign betaROut_7[5] = (betaPass_2 == 1'b0 ? betaXor_6[5] :
              betaRIn_reg_2[5]);
  assign betaROut_7[6] = (betaPass_2 == 1'b0 ? betaXor_6[6] :
              betaRIn_reg_2[6]);
  assign betaROut_7[7] = (betaPass_2 == 1'b0 ? betaXor_6[7] :
              betaRIn_reg_2[7]);
  assign betaROut_7[8] = (betaPass_2 == 1'b0 ? betaXor_6[8] :
              betaRIn_reg_2[8]);
  assign betaROut_7[9] = (betaPass_2 == 1'b0 ? betaXor_6[9] :
              betaRIn_reg_2[9]);
  assign betaROut_7[10] = (betaPass_2 == 1'b0 ? betaXor_6[10] :
              betaRIn_reg_2[10]);
  assign betaROut_7[11] = (betaPass_2 == 1'b0 ? betaXor_6[11] :
              betaRIn_reg_2[11]);
  assign betaROut_7[12] = (betaPass_2 == 1'b0 ? betaXor_6[12] :
              betaRIn_reg_2[12]);
  assign betaROut_7[13] = (betaPass_2 == 1'b0 ? betaXor_6[13] :
              betaRIn_reg_2[13]);
  assign betaROut_7[14] = (betaPass_2 == 1'b0 ? betaXor_6[14] :
              betaRIn_reg_2[14]);
  assign betaROut_7[15] = (betaPass_2 == 1'b0 ? betaXor_6[15] :
              betaRIn_reg_2[15]);



  assign betaSizeMatch_7[0] = betaROut_7[0];
  assign betaSizeMatch_7[1] = betaROut_7[1];
  assign betaSizeMatch_7[2] = betaROut_7[2];
  assign betaSizeMatch_7[3] = betaROut_7[3];
  assign betaSizeMatch_7[4] = betaROut_7[4];
  assign betaSizeMatch_7[5] = betaROut_7[5];
  assign betaSizeMatch_7[6] = betaROut_7[6];
  assign betaSizeMatch_7[7] = betaROut_7[7];
  assign betaSizeMatch_7[8] = betaROut_7[8];
  assign betaSizeMatch_7[9] = betaROut_7[9];
  assign betaSizeMatch_7[10] = betaROut_7[10];
  assign betaSizeMatch_7[11] = betaROut_7[11];
  assign betaSizeMatch_7[12] = betaROut_7[12];
  assign betaSizeMatch_7[13] = betaROut_7[13];
  assign betaSizeMatch_7[14] = betaROut_7[14];
  assign betaSizeMatch_7[15] = betaROut_7[15];

  assign betaPass_3 = rdBlock_reg[3];



  assign betaConcat_6[0] = betaXor_6[0];
  assign betaConcat_6[1] = betaXor_6[1];
  assign betaConcat_6[2] = betaXor_6[2];
  assign betaConcat_6[3] = betaXor_6[3];
  assign betaConcat_6[4] = betaXor_6[4];
  assign betaConcat_6[5] = betaXor_6[5];
  assign betaConcat_6[6] = betaXor_6[6];
  assign betaConcat_6[7] = betaXor_6[7];
  assign betaConcat_6[8] = betaXor_6[8];
  assign betaConcat_6[9] = betaXor_6[9];
  assign betaConcat_6[10] = betaXor_6[10];
  assign betaConcat_6[11] = betaXor_6[11];
  assign betaConcat_6[12] = betaXor_6[12];
  assign betaConcat_6[13] = betaXor_6[13];
  assign betaConcat_6[14] = betaXor_6[14];
  assign betaConcat_6[15] = betaXor_6[15];
  assign betaConcat_6[16] = betaROut_6[0];
  assign betaConcat_6[17] = betaROut_6[1];
  assign betaConcat_6[18] = betaROut_6[2];
  assign betaConcat_6[19] = betaROut_6[3];
  assign betaConcat_6[20] = betaROut_6[4];
  assign betaConcat_6[21] = betaROut_6[5];
  assign betaConcat_6[22] = betaROut_6[6];
  assign betaConcat_6[23] = betaROut_6[7];
  assign betaConcat_6[24] = betaROut_6[8];
  assign betaConcat_6[25] = betaROut_6[9];
  assign betaConcat_6[26] = betaROut_6[10];
  assign betaConcat_6[27] = betaROut_6[11];
  assign betaConcat_6[28] = betaROut_6[12];
  assign betaConcat_6[29] = betaROut_6[13];
  assign betaConcat_6[30] = betaROut_6[14];
  assign betaConcat_6[31] = betaROut_6[15];

  assign betaDin_6 = {betaConcat_6[0], betaConcat_6[1], betaConcat_6[2], betaConcat_6[3], betaConcat_6[4], betaConcat_6[5], betaConcat_6[6], betaConcat_6[7], betaConcat_6[8], betaConcat_6[9], betaConcat_6[10], betaConcat_6[11], betaConcat_6[12], betaConcat_6[13], betaConcat_6[14], betaConcat_6[15], betaConcat_6[16], betaConcat_6[17], betaConcat_6[18], betaConcat_6[19], betaConcat_6[20], betaConcat_6[21], betaConcat_6[22], betaConcat_6[23], betaConcat_6[24], betaConcat_6[25], betaConcat_6[26], betaConcat_6[27], betaConcat_6[28], betaConcat_6[29], betaConcat_6[30], betaConcat_6[31]};



  assign rdBlockSlice_1 = rdBlock_reg[1:0];



  assign betaWrAddr_6 = {rdBlockSlice_1, betaWrPath_reg};



  assign stageEn_7 = rdStage_reg == 4'b0111;



  assign stageWr_7 = stageEn_7 & mode;



  assign rdBlockSlice_1_1 = rdBlock[1:0];



  assign betaRdAddr_6 = {rdBlockSlice_1_1, betaRdPath_7};



  SimpleDualPortRAM_generic #(.AddrWidth(3),
                              .DataWidth(32)
                              )
                            u_stage_7 (.clk(clk),
                                       .enb(enb),
                                       .wr_din(betaDin_6),
                                       .wr_addr(betaWrAddr_6),
                                       .wr_en(stageWr_7),
                                       .rd_addr(betaRdAddr_6),
                                       .rd_dout(betaDout_6)
                                       );

  assign doutSlice_94 = betaDout_6[31];



  assign doutSlice_95 = betaDout_6[30];



  assign doutSlice_96 = betaDout_6[29];



  assign doutSlice_97 = betaDout_6[28];



  assign doutSlice_98 = betaDout_6[27];



  assign doutSlice_99 = betaDout_6[26];



  assign doutSlice_100 = betaDout_6[25];



  assign doutSlice_101 = betaDout_6[24];



  assign doutSlice_102 = betaDout_6[23];



  assign doutSlice_103 = betaDout_6[22];



  assign doutSlice_104 = betaDout_6[21];



  assign doutSlice_105 = betaDout_6[20];



  assign doutSlice_106 = betaDout_6[19];



  assign doutSlice_107 = betaDout_6[18];



  assign doutSlice_108 = betaDout_6[17];



  assign doutSlice_109 = betaDout_6[16];



  assign betaLLower_2[0] = doutSlice_94;
  assign betaLLower_2[1] = doutSlice_95;
  assign betaLLower_2[2] = doutSlice_96;
  assign betaLLower_2[3] = doutSlice_97;
  assign betaLLower_2[4] = doutSlice_98;
  assign betaLLower_2[5] = doutSlice_99;
  assign betaLLower_2[6] = doutSlice_100;
  assign betaLLower_2[7] = doutSlice_101;
  assign betaLLower_2[8] = doutSlice_102;
  assign betaLLower_2[9] = doutSlice_103;
  assign betaLLower_2[10] = doutSlice_104;
  assign betaLLower_2[11] = doutSlice_105;
  assign betaLLower_2[12] = doutSlice_106;
  assign betaLLower_2[13] = doutSlice_107;
  assign betaLLower_2[14] = doutSlice_108;
  assign betaLLower_2[15] = doutSlice_109;

  assign doutSlice_110 = betaDout_6[15];



  always @(posedge clk or posedge reset)
    begin : intdelay_1_4_process
      if (reset == 1'b1) begin
        intdelay_1_reg_48[0] <= 1'b0;
        intdelay_1_reg_48[1] <= 1'b0;
        intdelay_1_reg_48[2] <= 1'b0;
        intdelay_1_reg_48[3] <= 1'b0;
        intdelay_1_reg_49[0] <= 1'b0;
        intdelay_1_reg_49[1] <= 1'b0;
        intdelay_1_reg_49[2] <= 1'b0;
        intdelay_1_reg_49[3] <= 1'b0;
        intdelay_1_reg_50[0] <= 1'b0;
        intdelay_1_reg_50[1] <= 1'b0;
        intdelay_1_reg_50[2] <= 1'b0;
        intdelay_1_reg_50[3] <= 1'b0;
        intdelay_1_reg_51[0] <= 1'b0;
        intdelay_1_reg_51[1] <= 1'b0;
        intdelay_1_reg_51[2] <= 1'b0;
        intdelay_1_reg_51[3] <= 1'b0;
        intdelay_1_reg_52[0] <= 1'b0;
        intdelay_1_reg_52[1] <= 1'b0;
        intdelay_1_reg_52[2] <= 1'b0;
        intdelay_1_reg_52[3] <= 1'b0;
        intdelay_1_reg_53[0] <= 1'b0;
        intdelay_1_reg_53[1] <= 1'b0;
        intdelay_1_reg_53[2] <= 1'b0;
        intdelay_1_reg_53[3] <= 1'b0;
        intdelay_1_reg_54[0] <= 1'b0;
        intdelay_1_reg_54[1] <= 1'b0;
        intdelay_1_reg_54[2] <= 1'b0;
        intdelay_1_reg_54[3] <= 1'b0;
        intdelay_1_reg_55[0] <= 1'b0;
        intdelay_1_reg_55[1] <= 1'b0;
        intdelay_1_reg_55[2] <= 1'b0;
        intdelay_1_reg_55[3] <= 1'b0;
        intdelay_1_reg_56[0] <= 1'b0;
        intdelay_1_reg_56[1] <= 1'b0;
        intdelay_1_reg_56[2] <= 1'b0;
        intdelay_1_reg_56[3] <= 1'b0;
        intdelay_1_reg_57[0] <= 1'b0;
        intdelay_1_reg_57[1] <= 1'b0;
        intdelay_1_reg_57[2] <= 1'b0;
        intdelay_1_reg_57[3] <= 1'b0;
        intdelay_1_reg_58[0] <= 1'b0;
        intdelay_1_reg_58[1] <= 1'b0;
        intdelay_1_reg_58[2] <= 1'b0;
        intdelay_1_reg_58[3] <= 1'b0;
        intdelay_1_reg_59[0] <= 1'b0;
        intdelay_1_reg_59[1] <= 1'b0;
        intdelay_1_reg_59[2] <= 1'b0;
        intdelay_1_reg_59[3] <= 1'b0;
        intdelay_1_reg_60[0] <= 1'b0;
        intdelay_1_reg_60[1] <= 1'b0;
        intdelay_1_reg_60[2] <= 1'b0;
        intdelay_1_reg_60[3] <= 1'b0;
        intdelay_1_reg_61[0] <= 1'b0;
        intdelay_1_reg_61[1] <= 1'b0;
        intdelay_1_reg_61[2] <= 1'b0;
        intdelay_1_reg_61[3] <= 1'b0;
        intdelay_1_reg_62[0] <= 1'b0;
        intdelay_1_reg_62[1] <= 1'b0;
        intdelay_1_reg_62[2] <= 1'b0;
        intdelay_1_reg_62[3] <= 1'b0;
        intdelay_1_reg_63[0] <= 1'b0;
        intdelay_1_reg_63[1] <= 1'b0;
        intdelay_1_reg_63[2] <= 1'b0;
        intdelay_1_reg_63[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg_48[0] <= intdelay_1_reg_next_48[0];
          intdelay_1_reg_48[1] <= intdelay_1_reg_next_48[1];
          intdelay_1_reg_48[2] <= intdelay_1_reg_next_48[2];
          intdelay_1_reg_48[3] <= intdelay_1_reg_next_48[3];
          intdelay_1_reg_49[0] <= intdelay_1_reg_next_49[0];
          intdelay_1_reg_49[1] <= intdelay_1_reg_next_49[1];
          intdelay_1_reg_49[2] <= intdelay_1_reg_next_49[2];
          intdelay_1_reg_49[3] <= intdelay_1_reg_next_49[3];
          intdelay_1_reg_50[0] <= intdelay_1_reg_next_50[0];
          intdelay_1_reg_50[1] <= intdelay_1_reg_next_50[1];
          intdelay_1_reg_50[2] <= intdelay_1_reg_next_50[2];
          intdelay_1_reg_50[3] <= intdelay_1_reg_next_50[3];
          intdelay_1_reg_51[0] <= intdelay_1_reg_next_51[0];
          intdelay_1_reg_51[1] <= intdelay_1_reg_next_51[1];
          intdelay_1_reg_51[2] <= intdelay_1_reg_next_51[2];
          intdelay_1_reg_51[3] <= intdelay_1_reg_next_51[3];
          intdelay_1_reg_52[0] <= intdelay_1_reg_next_52[0];
          intdelay_1_reg_52[1] <= intdelay_1_reg_next_52[1];
          intdelay_1_reg_52[2] <= intdelay_1_reg_next_52[2];
          intdelay_1_reg_52[3] <= intdelay_1_reg_next_52[3];
          intdelay_1_reg_53[0] <= intdelay_1_reg_next_53[0];
          intdelay_1_reg_53[1] <= intdelay_1_reg_next_53[1];
          intdelay_1_reg_53[2] <= intdelay_1_reg_next_53[2];
          intdelay_1_reg_53[3] <= intdelay_1_reg_next_53[3];
          intdelay_1_reg_54[0] <= intdelay_1_reg_next_54[0];
          intdelay_1_reg_54[1] <= intdelay_1_reg_next_54[1];
          intdelay_1_reg_54[2] <= intdelay_1_reg_next_54[2];
          intdelay_1_reg_54[3] <= intdelay_1_reg_next_54[3];
          intdelay_1_reg_55[0] <= intdelay_1_reg_next_55[0];
          intdelay_1_reg_55[1] <= intdelay_1_reg_next_55[1];
          intdelay_1_reg_55[2] <= intdelay_1_reg_next_55[2];
          intdelay_1_reg_55[3] <= intdelay_1_reg_next_55[3];
          intdelay_1_reg_56[0] <= intdelay_1_reg_next_56[0];
          intdelay_1_reg_56[1] <= intdelay_1_reg_next_56[1];
          intdelay_1_reg_56[2] <= intdelay_1_reg_next_56[2];
          intdelay_1_reg_56[3] <= intdelay_1_reg_next_56[3];
          intdelay_1_reg_57[0] <= intdelay_1_reg_next_57[0];
          intdelay_1_reg_57[1] <= intdelay_1_reg_next_57[1];
          intdelay_1_reg_57[2] <= intdelay_1_reg_next_57[2];
          intdelay_1_reg_57[3] <= intdelay_1_reg_next_57[3];
          intdelay_1_reg_58[0] <= intdelay_1_reg_next_58[0];
          intdelay_1_reg_58[1] <= intdelay_1_reg_next_58[1];
          intdelay_1_reg_58[2] <= intdelay_1_reg_next_58[2];
          intdelay_1_reg_58[3] <= intdelay_1_reg_next_58[3];
          intdelay_1_reg_59[0] <= intdelay_1_reg_next_59[0];
          intdelay_1_reg_59[1] <= intdelay_1_reg_next_59[1];
          intdelay_1_reg_59[2] <= intdelay_1_reg_next_59[2];
          intdelay_1_reg_59[3] <= intdelay_1_reg_next_59[3];
          intdelay_1_reg_60[0] <= intdelay_1_reg_next_60[0];
          intdelay_1_reg_60[1] <= intdelay_1_reg_next_60[1];
          intdelay_1_reg_60[2] <= intdelay_1_reg_next_60[2];
          intdelay_1_reg_60[3] <= intdelay_1_reg_next_60[3];
          intdelay_1_reg_61[0] <= intdelay_1_reg_next_61[0];
          intdelay_1_reg_61[1] <= intdelay_1_reg_next_61[1];
          intdelay_1_reg_61[2] <= intdelay_1_reg_next_61[2];
          intdelay_1_reg_61[3] <= intdelay_1_reg_next_61[3];
          intdelay_1_reg_62[0] <= intdelay_1_reg_next_62[0];
          intdelay_1_reg_62[1] <= intdelay_1_reg_next_62[1];
          intdelay_1_reg_62[2] <= intdelay_1_reg_next_62[2];
          intdelay_1_reg_62[3] <= intdelay_1_reg_next_62[3];
          intdelay_1_reg_63[0] <= intdelay_1_reg_next_63[0];
          intdelay_1_reg_63[1] <= intdelay_1_reg_next_63[1];
          intdelay_1_reg_63[2] <= intdelay_1_reg_next_63[2];
          intdelay_1_reg_63[3] <= intdelay_1_reg_next_63[3];
        end
      end
    end

  assign intdelay_1_reg_next_48[0] = doutSlice_110;
  assign intdelay_1_reg_next_48[1] = intdelay_1_reg_48[0];
  assign intdelay_1_reg_next_48[2] = intdelay_1_reg_48[1];
  assign intdelay_1_reg_next_48[3] = intdelay_1_reg_48[2];
  assign intdelay_out_1_3 = intdelay_1_reg_48[3];
  assign intdelay_1_reg_next_49[0] = doutSlice_111;
  assign intdelay_1_reg_next_49[1] = intdelay_1_reg_49[0];
  assign intdelay_1_reg_next_49[2] = intdelay_1_reg_49[1];
  assign intdelay_1_reg_next_49[3] = intdelay_1_reg_49[2];
  assign intdelay_out_2_3 = intdelay_1_reg_49[3];
  assign intdelay_1_reg_next_50[0] = doutSlice_112;
  assign intdelay_1_reg_next_50[1] = intdelay_1_reg_50[0];
  assign intdelay_1_reg_next_50[2] = intdelay_1_reg_50[1];
  assign intdelay_1_reg_next_50[3] = intdelay_1_reg_50[2];
  assign intdelay_out_3_3 = intdelay_1_reg_50[3];
  assign intdelay_1_reg_next_51[0] = doutSlice_113;
  assign intdelay_1_reg_next_51[1] = intdelay_1_reg_51[0];
  assign intdelay_1_reg_next_51[2] = intdelay_1_reg_51[1];
  assign intdelay_1_reg_next_51[3] = intdelay_1_reg_51[2];
  assign intdelay_out_4_3 = intdelay_1_reg_51[3];
  assign intdelay_1_reg_next_52[0] = doutSlice_114;
  assign intdelay_1_reg_next_52[1] = intdelay_1_reg_52[0];
  assign intdelay_1_reg_next_52[2] = intdelay_1_reg_52[1];
  assign intdelay_1_reg_next_52[3] = intdelay_1_reg_52[2];
  assign intdelay_out_5_3 = intdelay_1_reg_52[3];
  assign intdelay_1_reg_next_53[0] = doutSlice_115;
  assign intdelay_1_reg_next_53[1] = intdelay_1_reg_53[0];
  assign intdelay_1_reg_next_53[2] = intdelay_1_reg_53[1];
  assign intdelay_1_reg_next_53[3] = intdelay_1_reg_53[2];
  assign intdelay_out_6_3 = intdelay_1_reg_53[3];
  assign intdelay_1_reg_next_54[0] = doutSlice_116;
  assign intdelay_1_reg_next_54[1] = intdelay_1_reg_54[0];
  assign intdelay_1_reg_next_54[2] = intdelay_1_reg_54[1];
  assign intdelay_1_reg_next_54[3] = intdelay_1_reg_54[2];
  assign intdelay_out_7_3 = intdelay_1_reg_54[3];
  assign intdelay_1_reg_next_55[0] = doutSlice_117;
  assign intdelay_1_reg_next_55[1] = intdelay_1_reg_55[0];
  assign intdelay_1_reg_next_55[2] = intdelay_1_reg_55[1];
  assign intdelay_1_reg_next_55[3] = intdelay_1_reg_55[2];
  assign intdelay_out_8_3 = intdelay_1_reg_55[3];
  assign intdelay_1_reg_next_56[0] = doutSlice_118;
  assign intdelay_1_reg_next_56[1] = intdelay_1_reg_56[0];
  assign intdelay_1_reg_next_56[2] = intdelay_1_reg_56[1];
  assign intdelay_1_reg_next_56[3] = intdelay_1_reg_56[2];
  assign intdelay_out_9_3 = intdelay_1_reg_56[3];
  assign intdelay_1_reg_next_57[0] = doutSlice_119;
  assign intdelay_1_reg_next_57[1] = intdelay_1_reg_57[0];
  assign intdelay_1_reg_next_57[2] = intdelay_1_reg_57[1];
  assign intdelay_1_reg_next_57[3] = intdelay_1_reg_57[2];
  assign intdelay_out_10_3 = intdelay_1_reg_57[3];
  assign intdelay_1_reg_next_58[0] = doutSlice_120;
  assign intdelay_1_reg_next_58[1] = intdelay_1_reg_58[0];
  assign intdelay_1_reg_next_58[2] = intdelay_1_reg_58[1];
  assign intdelay_1_reg_next_58[3] = intdelay_1_reg_58[2];
  assign intdelay_out_11_3 = intdelay_1_reg_58[3];
  assign intdelay_1_reg_next_59[0] = doutSlice_121;
  assign intdelay_1_reg_next_59[1] = intdelay_1_reg_59[0];
  assign intdelay_1_reg_next_59[2] = intdelay_1_reg_59[1];
  assign intdelay_1_reg_next_59[3] = intdelay_1_reg_59[2];
  assign intdelay_out_12_3 = intdelay_1_reg_59[3];
  assign intdelay_1_reg_next_60[0] = doutSlice_122;
  assign intdelay_1_reg_next_60[1] = intdelay_1_reg_60[0];
  assign intdelay_1_reg_next_60[2] = intdelay_1_reg_60[1];
  assign intdelay_1_reg_next_60[3] = intdelay_1_reg_60[2];
  assign intdelay_out_13_3 = intdelay_1_reg_60[3];
  assign intdelay_1_reg_next_61[0] = doutSlice_123;
  assign intdelay_1_reg_next_61[1] = intdelay_1_reg_61[0];
  assign intdelay_1_reg_next_61[2] = intdelay_1_reg_61[1];
  assign intdelay_1_reg_next_61[3] = intdelay_1_reg_61[2];
  assign intdelay_out_14_3 = intdelay_1_reg_61[3];
  assign intdelay_1_reg_next_62[0] = doutSlice_124;
  assign intdelay_1_reg_next_62[1] = intdelay_1_reg_62[0];
  assign intdelay_1_reg_next_62[2] = intdelay_1_reg_62[1];
  assign intdelay_1_reg_next_62[3] = intdelay_1_reg_62[2];
  assign intdelay_out_15_3 = intdelay_1_reg_62[3];
  assign intdelay_1_reg_next_63[0] = doutSlice_125;
  assign intdelay_1_reg_next_63[1] = intdelay_1_reg_63[0];
  assign intdelay_1_reg_next_63[2] = intdelay_1_reg_63[1];
  assign intdelay_1_reg_next_63[3] = intdelay_1_reg_63[2];
  assign intdelay_out_16_3 = intdelay_1_reg_63[3];



  assign doutSlice_111 = betaDout_6[14];



  assign doutSlice_112 = betaDout_6[13];



  assign doutSlice_113 = betaDout_6[12];



  assign doutSlice_114 = betaDout_6[11];



  assign doutSlice_115 = betaDout_6[10];



  assign doutSlice_116 = betaDout_6[9];



  assign doutSlice_117 = betaDout_6[8];



  assign doutSlice_118 = betaDout_6[7];



  assign doutSlice_119 = betaDout_6[6];



  assign doutSlice_120 = betaDout_6[5];



  assign doutSlice_121 = betaDout_6[4];



  assign doutSlice_122 = betaDout_6[3];



  assign doutSlice_123 = betaDout_6[2];



  assign doutSlice_124 = betaDout_6[1];



  assign doutSlice_125 = betaDout_6[0];



  assign betaLUpper_reg2[0] = intdelay_out_1_3;
  assign betaLUpper_reg2[1] = intdelay_out_2_3;
  assign betaLUpper_reg2[2] = intdelay_out_3_3;
  assign betaLUpper_reg2[3] = intdelay_out_4_3;
  assign betaLUpper_reg2[4] = intdelay_out_5_3;
  assign betaLUpper_reg2[5] = intdelay_out_6_3;
  assign betaLUpper_reg2[6] = intdelay_out_7_3;
  assign betaLUpper_reg2[7] = intdelay_out_8_3;
  assign betaLUpper_reg2[8] = intdelay_out_9_3;
  assign betaLUpper_reg2[9] = intdelay_out_10_3;
  assign betaLUpper_reg2[10] = intdelay_out_11_3;
  assign betaLUpper_reg2[11] = intdelay_out_12_3;
  assign betaLUpper_reg2[12] = intdelay_out_13_3;
  assign betaLUpper_reg2[13] = intdelay_out_14_3;
  assign betaLUpper_reg2[14] = intdelay_out_15_3;
  assign betaLUpper_reg2[15] = intdelay_out_16_3;

  assign betaLOut_7[0] = (betaPass_2 == 1'b0 ? betaLLower_2[0] :
              betaLUpper_reg2[0]);
  assign betaLOut_7[1] = (betaPass_2 == 1'b0 ? betaLLower_2[1] :
              betaLUpper_reg2[1]);
  assign betaLOut_7[2] = (betaPass_2 == 1'b0 ? betaLLower_2[2] :
              betaLUpper_reg2[2]);
  assign betaLOut_7[3] = (betaPass_2 == 1'b0 ? betaLLower_2[3] :
              betaLUpper_reg2[3]);
  assign betaLOut_7[4] = (betaPass_2 == 1'b0 ? betaLLower_2[4] :
              betaLUpper_reg2[4]);
  assign betaLOut_7[5] = (betaPass_2 == 1'b0 ? betaLLower_2[5] :
              betaLUpper_reg2[5]);
  assign betaLOut_7[6] = (betaPass_2 == 1'b0 ? betaLLower_2[6] :
              betaLUpper_reg2[6]);
  assign betaLOut_7[7] = (betaPass_2 == 1'b0 ? betaLLower_2[7] :
              betaLUpper_reg2[7]);
  assign betaLOut_7[8] = (betaPass_2 == 1'b0 ? betaLLower_2[8] :
              betaLUpper_reg2[8]);
  assign betaLOut_7[9] = (betaPass_2 == 1'b0 ? betaLLower_2[9] :
              betaLUpper_reg2[9]);
  assign betaLOut_7[10] = (betaPass_2 == 1'b0 ? betaLLower_2[10] :
              betaLUpper_reg2[10]);
  assign betaLOut_7[11] = (betaPass_2 == 1'b0 ? betaLLower_2[11] :
              betaLUpper_reg2[11]);
  assign betaLOut_7[12] = (betaPass_2 == 1'b0 ? betaLLower_2[12] :
              betaLUpper_reg2[12]);
  assign betaLOut_7[13] = (betaPass_2 == 1'b0 ? betaLLower_2[13] :
              betaLUpper_reg2[13]);
  assign betaLOut_7[14] = (betaPass_2 == 1'b0 ? betaLLower_2[14] :
              betaLUpper_reg2[14]);
  assign betaLOut_7[15] = (betaPass_2 == 1'b0 ? betaLLower_2[15] :
              betaLUpper_reg2[15]);



  assign betaXor_7[0] = betaLOut_7[0] ^ betaROut_7[0];
  assign betaXor_7[1] = betaLOut_7[1] ^ betaROut_7[1];
  assign betaXor_7[2] = betaLOut_7[2] ^ betaROut_7[2];
  assign betaXor_7[3] = betaLOut_7[3] ^ betaROut_7[3];
  assign betaXor_7[4] = betaLOut_7[4] ^ betaROut_7[4];
  assign betaXor_7[5] = betaLOut_7[5] ^ betaROut_7[5];
  assign betaXor_7[6] = betaLOut_7[6] ^ betaROut_7[6];
  assign betaXor_7[7] = betaLOut_7[7] ^ betaROut_7[7];
  assign betaXor_7[8] = betaLOut_7[8] ^ betaROut_7[8];
  assign betaXor_7[9] = betaLOut_7[9] ^ betaROut_7[9];
  assign betaXor_7[10] = betaLOut_7[10] ^ betaROut_7[10];
  assign betaXor_7[11] = betaLOut_7[11] ^ betaROut_7[11];
  assign betaXor_7[12] = betaLOut_7[12] ^ betaROut_7[12];
  assign betaXor_7[13] = betaLOut_7[13] ^ betaROut_7[13];
  assign betaXor_7[14] = betaLOut_7[14] ^ betaROut_7[14];
  assign betaXor_7[15] = betaLOut_7[15] ^ betaROut_7[15];



  assign betaROut_7_0 = betaROut_7[0];

  always @(posedge clk or posedge reset)
    begin : intdelay_1_5_process
      if (reset == 1'b1) begin
        intdelay_1_reg_64[0] <= 1'b0;
        intdelay_1_reg_64[1] <= 1'b0;
        intdelay_1_reg_64[2] <= 1'b0;
        intdelay_1_reg_64[3] <= 1'b0;
        intdelay_1_reg_64[4] <= 1'b0;
        intdelay_1_reg_64[5] <= 1'b0;
        intdelay_1_reg_64[6] <= 1'b0;
        intdelay_1_reg_64[7] <= 1'b0;
        intdelay_1_reg_65[0] <= 1'b0;
        intdelay_1_reg_65[1] <= 1'b0;
        intdelay_1_reg_65[2] <= 1'b0;
        intdelay_1_reg_65[3] <= 1'b0;
        intdelay_1_reg_65[4] <= 1'b0;
        intdelay_1_reg_65[5] <= 1'b0;
        intdelay_1_reg_65[6] <= 1'b0;
        intdelay_1_reg_65[7] <= 1'b0;
        intdelay_1_reg_66[0] <= 1'b0;
        intdelay_1_reg_66[1] <= 1'b0;
        intdelay_1_reg_66[2] <= 1'b0;
        intdelay_1_reg_66[3] <= 1'b0;
        intdelay_1_reg_66[4] <= 1'b0;
        intdelay_1_reg_66[5] <= 1'b0;
        intdelay_1_reg_66[6] <= 1'b0;
        intdelay_1_reg_66[7] <= 1'b0;
        intdelay_1_reg_67[0] <= 1'b0;
        intdelay_1_reg_67[1] <= 1'b0;
        intdelay_1_reg_67[2] <= 1'b0;
        intdelay_1_reg_67[3] <= 1'b0;
        intdelay_1_reg_67[4] <= 1'b0;
        intdelay_1_reg_67[5] <= 1'b0;
        intdelay_1_reg_67[6] <= 1'b0;
        intdelay_1_reg_67[7] <= 1'b0;
        intdelay_1_reg_68[0] <= 1'b0;
        intdelay_1_reg_68[1] <= 1'b0;
        intdelay_1_reg_68[2] <= 1'b0;
        intdelay_1_reg_68[3] <= 1'b0;
        intdelay_1_reg_68[4] <= 1'b0;
        intdelay_1_reg_68[5] <= 1'b0;
        intdelay_1_reg_68[6] <= 1'b0;
        intdelay_1_reg_68[7] <= 1'b0;
        intdelay_1_reg_69[0] <= 1'b0;
        intdelay_1_reg_69[1] <= 1'b0;
        intdelay_1_reg_69[2] <= 1'b0;
        intdelay_1_reg_69[3] <= 1'b0;
        intdelay_1_reg_69[4] <= 1'b0;
        intdelay_1_reg_69[5] <= 1'b0;
        intdelay_1_reg_69[6] <= 1'b0;
        intdelay_1_reg_69[7] <= 1'b0;
        intdelay_1_reg_70[0] <= 1'b0;
        intdelay_1_reg_70[1] <= 1'b0;
        intdelay_1_reg_70[2] <= 1'b0;
        intdelay_1_reg_70[3] <= 1'b0;
        intdelay_1_reg_70[4] <= 1'b0;
        intdelay_1_reg_70[5] <= 1'b0;
        intdelay_1_reg_70[6] <= 1'b0;
        intdelay_1_reg_70[7] <= 1'b0;
        intdelay_1_reg_71[0] <= 1'b0;
        intdelay_1_reg_71[1] <= 1'b0;
        intdelay_1_reg_71[2] <= 1'b0;
        intdelay_1_reg_71[3] <= 1'b0;
        intdelay_1_reg_71[4] <= 1'b0;
        intdelay_1_reg_71[5] <= 1'b0;
        intdelay_1_reg_71[6] <= 1'b0;
        intdelay_1_reg_71[7] <= 1'b0;
        intdelay_1_reg_72[0] <= 1'b0;
        intdelay_1_reg_72[1] <= 1'b0;
        intdelay_1_reg_72[2] <= 1'b0;
        intdelay_1_reg_72[3] <= 1'b0;
        intdelay_1_reg_72[4] <= 1'b0;
        intdelay_1_reg_72[5] <= 1'b0;
        intdelay_1_reg_72[6] <= 1'b0;
        intdelay_1_reg_72[7] <= 1'b0;
        intdelay_1_reg_73[0] <= 1'b0;
        intdelay_1_reg_73[1] <= 1'b0;
        intdelay_1_reg_73[2] <= 1'b0;
        intdelay_1_reg_73[3] <= 1'b0;
        intdelay_1_reg_73[4] <= 1'b0;
        intdelay_1_reg_73[5] <= 1'b0;
        intdelay_1_reg_73[6] <= 1'b0;
        intdelay_1_reg_73[7] <= 1'b0;
        intdelay_1_reg_74[0] <= 1'b0;
        intdelay_1_reg_74[1] <= 1'b0;
        intdelay_1_reg_74[2] <= 1'b0;
        intdelay_1_reg_74[3] <= 1'b0;
        intdelay_1_reg_74[4] <= 1'b0;
        intdelay_1_reg_74[5] <= 1'b0;
        intdelay_1_reg_74[6] <= 1'b0;
        intdelay_1_reg_74[7] <= 1'b0;
        intdelay_1_reg_75[0] <= 1'b0;
        intdelay_1_reg_75[1] <= 1'b0;
        intdelay_1_reg_75[2] <= 1'b0;
        intdelay_1_reg_75[3] <= 1'b0;
        intdelay_1_reg_75[4] <= 1'b0;
        intdelay_1_reg_75[5] <= 1'b0;
        intdelay_1_reg_75[6] <= 1'b0;
        intdelay_1_reg_75[7] <= 1'b0;
        intdelay_1_reg_76[0] <= 1'b0;
        intdelay_1_reg_76[1] <= 1'b0;
        intdelay_1_reg_76[2] <= 1'b0;
        intdelay_1_reg_76[3] <= 1'b0;
        intdelay_1_reg_76[4] <= 1'b0;
        intdelay_1_reg_76[5] <= 1'b0;
        intdelay_1_reg_76[6] <= 1'b0;
        intdelay_1_reg_76[7] <= 1'b0;
        intdelay_1_reg_77[0] <= 1'b0;
        intdelay_1_reg_77[1] <= 1'b0;
        intdelay_1_reg_77[2] <= 1'b0;
        intdelay_1_reg_77[3] <= 1'b0;
        intdelay_1_reg_77[4] <= 1'b0;
        intdelay_1_reg_77[5] <= 1'b0;
        intdelay_1_reg_77[6] <= 1'b0;
        intdelay_1_reg_77[7] <= 1'b0;
        intdelay_1_reg_78[0] <= 1'b0;
        intdelay_1_reg_78[1] <= 1'b0;
        intdelay_1_reg_78[2] <= 1'b0;
        intdelay_1_reg_78[3] <= 1'b0;
        intdelay_1_reg_78[4] <= 1'b0;
        intdelay_1_reg_78[5] <= 1'b0;
        intdelay_1_reg_78[6] <= 1'b0;
        intdelay_1_reg_78[7] <= 1'b0;
        intdelay_1_reg_79[0] <= 1'b0;
        intdelay_1_reg_79[1] <= 1'b0;
        intdelay_1_reg_79[2] <= 1'b0;
        intdelay_1_reg_79[3] <= 1'b0;
        intdelay_1_reg_79[4] <= 1'b0;
        intdelay_1_reg_79[5] <= 1'b0;
        intdelay_1_reg_79[6] <= 1'b0;
        intdelay_1_reg_79[7] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg_64[0] <= intdelay_1_reg_next_64[0];
          intdelay_1_reg_64[1] <= intdelay_1_reg_next_64[1];
          intdelay_1_reg_64[2] <= intdelay_1_reg_next_64[2];
          intdelay_1_reg_64[3] <= intdelay_1_reg_next_64[3];
          intdelay_1_reg_64[4] <= intdelay_1_reg_next_64[4];
          intdelay_1_reg_64[5] <= intdelay_1_reg_next_64[5];
          intdelay_1_reg_64[6] <= intdelay_1_reg_next_64[6];
          intdelay_1_reg_64[7] <= intdelay_1_reg_next_64[7];
          intdelay_1_reg_65[0] <= intdelay_1_reg_next_65[0];
          intdelay_1_reg_65[1] <= intdelay_1_reg_next_65[1];
          intdelay_1_reg_65[2] <= intdelay_1_reg_next_65[2];
          intdelay_1_reg_65[3] <= intdelay_1_reg_next_65[3];
          intdelay_1_reg_65[4] <= intdelay_1_reg_next_65[4];
          intdelay_1_reg_65[5] <= intdelay_1_reg_next_65[5];
          intdelay_1_reg_65[6] <= intdelay_1_reg_next_65[6];
          intdelay_1_reg_65[7] <= intdelay_1_reg_next_65[7];
          intdelay_1_reg_66[0] <= intdelay_1_reg_next_66[0];
          intdelay_1_reg_66[1] <= intdelay_1_reg_next_66[1];
          intdelay_1_reg_66[2] <= intdelay_1_reg_next_66[2];
          intdelay_1_reg_66[3] <= intdelay_1_reg_next_66[3];
          intdelay_1_reg_66[4] <= intdelay_1_reg_next_66[4];
          intdelay_1_reg_66[5] <= intdelay_1_reg_next_66[5];
          intdelay_1_reg_66[6] <= intdelay_1_reg_next_66[6];
          intdelay_1_reg_66[7] <= intdelay_1_reg_next_66[7];
          intdelay_1_reg_67[0] <= intdelay_1_reg_next_67[0];
          intdelay_1_reg_67[1] <= intdelay_1_reg_next_67[1];
          intdelay_1_reg_67[2] <= intdelay_1_reg_next_67[2];
          intdelay_1_reg_67[3] <= intdelay_1_reg_next_67[3];
          intdelay_1_reg_67[4] <= intdelay_1_reg_next_67[4];
          intdelay_1_reg_67[5] <= intdelay_1_reg_next_67[5];
          intdelay_1_reg_67[6] <= intdelay_1_reg_next_67[6];
          intdelay_1_reg_67[7] <= intdelay_1_reg_next_67[7];
          intdelay_1_reg_68[0] <= intdelay_1_reg_next_68[0];
          intdelay_1_reg_68[1] <= intdelay_1_reg_next_68[1];
          intdelay_1_reg_68[2] <= intdelay_1_reg_next_68[2];
          intdelay_1_reg_68[3] <= intdelay_1_reg_next_68[3];
          intdelay_1_reg_68[4] <= intdelay_1_reg_next_68[4];
          intdelay_1_reg_68[5] <= intdelay_1_reg_next_68[5];
          intdelay_1_reg_68[6] <= intdelay_1_reg_next_68[6];
          intdelay_1_reg_68[7] <= intdelay_1_reg_next_68[7];
          intdelay_1_reg_69[0] <= intdelay_1_reg_next_69[0];
          intdelay_1_reg_69[1] <= intdelay_1_reg_next_69[1];
          intdelay_1_reg_69[2] <= intdelay_1_reg_next_69[2];
          intdelay_1_reg_69[3] <= intdelay_1_reg_next_69[3];
          intdelay_1_reg_69[4] <= intdelay_1_reg_next_69[4];
          intdelay_1_reg_69[5] <= intdelay_1_reg_next_69[5];
          intdelay_1_reg_69[6] <= intdelay_1_reg_next_69[6];
          intdelay_1_reg_69[7] <= intdelay_1_reg_next_69[7];
          intdelay_1_reg_70[0] <= intdelay_1_reg_next_70[0];
          intdelay_1_reg_70[1] <= intdelay_1_reg_next_70[1];
          intdelay_1_reg_70[2] <= intdelay_1_reg_next_70[2];
          intdelay_1_reg_70[3] <= intdelay_1_reg_next_70[3];
          intdelay_1_reg_70[4] <= intdelay_1_reg_next_70[4];
          intdelay_1_reg_70[5] <= intdelay_1_reg_next_70[5];
          intdelay_1_reg_70[6] <= intdelay_1_reg_next_70[6];
          intdelay_1_reg_70[7] <= intdelay_1_reg_next_70[7];
          intdelay_1_reg_71[0] <= intdelay_1_reg_next_71[0];
          intdelay_1_reg_71[1] <= intdelay_1_reg_next_71[1];
          intdelay_1_reg_71[2] <= intdelay_1_reg_next_71[2];
          intdelay_1_reg_71[3] <= intdelay_1_reg_next_71[3];
          intdelay_1_reg_71[4] <= intdelay_1_reg_next_71[4];
          intdelay_1_reg_71[5] <= intdelay_1_reg_next_71[5];
          intdelay_1_reg_71[6] <= intdelay_1_reg_next_71[6];
          intdelay_1_reg_71[7] <= intdelay_1_reg_next_71[7];
          intdelay_1_reg_72[0] <= intdelay_1_reg_next_72[0];
          intdelay_1_reg_72[1] <= intdelay_1_reg_next_72[1];
          intdelay_1_reg_72[2] <= intdelay_1_reg_next_72[2];
          intdelay_1_reg_72[3] <= intdelay_1_reg_next_72[3];
          intdelay_1_reg_72[4] <= intdelay_1_reg_next_72[4];
          intdelay_1_reg_72[5] <= intdelay_1_reg_next_72[5];
          intdelay_1_reg_72[6] <= intdelay_1_reg_next_72[6];
          intdelay_1_reg_72[7] <= intdelay_1_reg_next_72[7];
          intdelay_1_reg_73[0] <= intdelay_1_reg_next_73[0];
          intdelay_1_reg_73[1] <= intdelay_1_reg_next_73[1];
          intdelay_1_reg_73[2] <= intdelay_1_reg_next_73[2];
          intdelay_1_reg_73[3] <= intdelay_1_reg_next_73[3];
          intdelay_1_reg_73[4] <= intdelay_1_reg_next_73[4];
          intdelay_1_reg_73[5] <= intdelay_1_reg_next_73[5];
          intdelay_1_reg_73[6] <= intdelay_1_reg_next_73[6];
          intdelay_1_reg_73[7] <= intdelay_1_reg_next_73[7];
          intdelay_1_reg_74[0] <= intdelay_1_reg_next_74[0];
          intdelay_1_reg_74[1] <= intdelay_1_reg_next_74[1];
          intdelay_1_reg_74[2] <= intdelay_1_reg_next_74[2];
          intdelay_1_reg_74[3] <= intdelay_1_reg_next_74[3];
          intdelay_1_reg_74[4] <= intdelay_1_reg_next_74[4];
          intdelay_1_reg_74[5] <= intdelay_1_reg_next_74[5];
          intdelay_1_reg_74[6] <= intdelay_1_reg_next_74[6];
          intdelay_1_reg_74[7] <= intdelay_1_reg_next_74[7];
          intdelay_1_reg_75[0] <= intdelay_1_reg_next_75[0];
          intdelay_1_reg_75[1] <= intdelay_1_reg_next_75[1];
          intdelay_1_reg_75[2] <= intdelay_1_reg_next_75[2];
          intdelay_1_reg_75[3] <= intdelay_1_reg_next_75[3];
          intdelay_1_reg_75[4] <= intdelay_1_reg_next_75[4];
          intdelay_1_reg_75[5] <= intdelay_1_reg_next_75[5];
          intdelay_1_reg_75[6] <= intdelay_1_reg_next_75[6];
          intdelay_1_reg_75[7] <= intdelay_1_reg_next_75[7];
          intdelay_1_reg_76[0] <= intdelay_1_reg_next_76[0];
          intdelay_1_reg_76[1] <= intdelay_1_reg_next_76[1];
          intdelay_1_reg_76[2] <= intdelay_1_reg_next_76[2];
          intdelay_1_reg_76[3] <= intdelay_1_reg_next_76[3];
          intdelay_1_reg_76[4] <= intdelay_1_reg_next_76[4];
          intdelay_1_reg_76[5] <= intdelay_1_reg_next_76[5];
          intdelay_1_reg_76[6] <= intdelay_1_reg_next_76[6];
          intdelay_1_reg_76[7] <= intdelay_1_reg_next_76[7];
          intdelay_1_reg_77[0] <= intdelay_1_reg_next_77[0];
          intdelay_1_reg_77[1] <= intdelay_1_reg_next_77[1];
          intdelay_1_reg_77[2] <= intdelay_1_reg_next_77[2];
          intdelay_1_reg_77[3] <= intdelay_1_reg_next_77[3];
          intdelay_1_reg_77[4] <= intdelay_1_reg_next_77[4];
          intdelay_1_reg_77[5] <= intdelay_1_reg_next_77[5];
          intdelay_1_reg_77[6] <= intdelay_1_reg_next_77[6];
          intdelay_1_reg_77[7] <= intdelay_1_reg_next_77[7];
          intdelay_1_reg_78[0] <= intdelay_1_reg_next_78[0];
          intdelay_1_reg_78[1] <= intdelay_1_reg_next_78[1];
          intdelay_1_reg_78[2] <= intdelay_1_reg_next_78[2];
          intdelay_1_reg_78[3] <= intdelay_1_reg_next_78[3];
          intdelay_1_reg_78[4] <= intdelay_1_reg_next_78[4];
          intdelay_1_reg_78[5] <= intdelay_1_reg_next_78[5];
          intdelay_1_reg_78[6] <= intdelay_1_reg_next_78[6];
          intdelay_1_reg_78[7] <= intdelay_1_reg_next_78[7];
          intdelay_1_reg_79[0] <= intdelay_1_reg_next_79[0];
          intdelay_1_reg_79[1] <= intdelay_1_reg_next_79[1];
          intdelay_1_reg_79[2] <= intdelay_1_reg_next_79[2];
          intdelay_1_reg_79[3] <= intdelay_1_reg_next_79[3];
          intdelay_1_reg_79[4] <= intdelay_1_reg_next_79[4];
          intdelay_1_reg_79[5] <= intdelay_1_reg_next_79[5];
          intdelay_1_reg_79[6] <= intdelay_1_reg_next_79[6];
          intdelay_1_reg_79[7] <= intdelay_1_reg_next_79[7];
        end
      end
    end

  assign intdelay_1_reg_next_64[0] = betaROut_7_0;
  assign intdelay_1_reg_next_64[1] = intdelay_1_reg_64[0];
  assign intdelay_1_reg_next_64[2] = intdelay_1_reg_64[1];
  assign intdelay_1_reg_next_64[3] = intdelay_1_reg_64[2];
  assign intdelay_1_reg_next_64[4] = intdelay_1_reg_64[3];
  assign intdelay_1_reg_next_64[5] = intdelay_1_reg_64[4];
  assign intdelay_1_reg_next_64[6] = intdelay_1_reg_64[5];
  assign intdelay_1_reg_next_64[7] = intdelay_1_reg_64[6];
  assign intdelay_out_1_4 = intdelay_1_reg_64[7];
  assign intdelay_1_reg_next_65[0] = betaROut_7_1;
  assign intdelay_1_reg_next_65[1] = intdelay_1_reg_65[0];
  assign intdelay_1_reg_next_65[2] = intdelay_1_reg_65[1];
  assign intdelay_1_reg_next_65[3] = intdelay_1_reg_65[2];
  assign intdelay_1_reg_next_65[4] = intdelay_1_reg_65[3];
  assign intdelay_1_reg_next_65[5] = intdelay_1_reg_65[4];
  assign intdelay_1_reg_next_65[6] = intdelay_1_reg_65[5];
  assign intdelay_1_reg_next_65[7] = intdelay_1_reg_65[6];
  assign intdelay_out_2_4 = intdelay_1_reg_65[7];
  assign intdelay_1_reg_next_66[0] = betaROut_7_2;
  assign intdelay_1_reg_next_66[1] = intdelay_1_reg_66[0];
  assign intdelay_1_reg_next_66[2] = intdelay_1_reg_66[1];
  assign intdelay_1_reg_next_66[3] = intdelay_1_reg_66[2];
  assign intdelay_1_reg_next_66[4] = intdelay_1_reg_66[3];
  assign intdelay_1_reg_next_66[5] = intdelay_1_reg_66[4];
  assign intdelay_1_reg_next_66[6] = intdelay_1_reg_66[5];
  assign intdelay_1_reg_next_66[7] = intdelay_1_reg_66[6];
  assign intdelay_out_3_4 = intdelay_1_reg_66[7];
  assign intdelay_1_reg_next_67[0] = betaROut_7_3;
  assign intdelay_1_reg_next_67[1] = intdelay_1_reg_67[0];
  assign intdelay_1_reg_next_67[2] = intdelay_1_reg_67[1];
  assign intdelay_1_reg_next_67[3] = intdelay_1_reg_67[2];
  assign intdelay_1_reg_next_67[4] = intdelay_1_reg_67[3];
  assign intdelay_1_reg_next_67[5] = intdelay_1_reg_67[4];
  assign intdelay_1_reg_next_67[6] = intdelay_1_reg_67[5];
  assign intdelay_1_reg_next_67[7] = intdelay_1_reg_67[6];
  assign intdelay_out_4_4 = intdelay_1_reg_67[7];
  assign intdelay_1_reg_next_68[0] = betaROut_7_4;
  assign intdelay_1_reg_next_68[1] = intdelay_1_reg_68[0];
  assign intdelay_1_reg_next_68[2] = intdelay_1_reg_68[1];
  assign intdelay_1_reg_next_68[3] = intdelay_1_reg_68[2];
  assign intdelay_1_reg_next_68[4] = intdelay_1_reg_68[3];
  assign intdelay_1_reg_next_68[5] = intdelay_1_reg_68[4];
  assign intdelay_1_reg_next_68[6] = intdelay_1_reg_68[5];
  assign intdelay_1_reg_next_68[7] = intdelay_1_reg_68[6];
  assign intdelay_out_5_4 = intdelay_1_reg_68[7];
  assign intdelay_1_reg_next_69[0] = betaROut_7_5;
  assign intdelay_1_reg_next_69[1] = intdelay_1_reg_69[0];
  assign intdelay_1_reg_next_69[2] = intdelay_1_reg_69[1];
  assign intdelay_1_reg_next_69[3] = intdelay_1_reg_69[2];
  assign intdelay_1_reg_next_69[4] = intdelay_1_reg_69[3];
  assign intdelay_1_reg_next_69[5] = intdelay_1_reg_69[4];
  assign intdelay_1_reg_next_69[6] = intdelay_1_reg_69[5];
  assign intdelay_1_reg_next_69[7] = intdelay_1_reg_69[6];
  assign intdelay_out_6_4 = intdelay_1_reg_69[7];
  assign intdelay_1_reg_next_70[0] = betaROut_7_6;
  assign intdelay_1_reg_next_70[1] = intdelay_1_reg_70[0];
  assign intdelay_1_reg_next_70[2] = intdelay_1_reg_70[1];
  assign intdelay_1_reg_next_70[3] = intdelay_1_reg_70[2];
  assign intdelay_1_reg_next_70[4] = intdelay_1_reg_70[3];
  assign intdelay_1_reg_next_70[5] = intdelay_1_reg_70[4];
  assign intdelay_1_reg_next_70[6] = intdelay_1_reg_70[5];
  assign intdelay_1_reg_next_70[7] = intdelay_1_reg_70[6];
  assign intdelay_out_7_4 = intdelay_1_reg_70[7];
  assign intdelay_1_reg_next_71[0] = betaROut_7_7;
  assign intdelay_1_reg_next_71[1] = intdelay_1_reg_71[0];
  assign intdelay_1_reg_next_71[2] = intdelay_1_reg_71[1];
  assign intdelay_1_reg_next_71[3] = intdelay_1_reg_71[2];
  assign intdelay_1_reg_next_71[4] = intdelay_1_reg_71[3];
  assign intdelay_1_reg_next_71[5] = intdelay_1_reg_71[4];
  assign intdelay_1_reg_next_71[6] = intdelay_1_reg_71[5];
  assign intdelay_1_reg_next_71[7] = intdelay_1_reg_71[6];
  assign intdelay_out_8_4 = intdelay_1_reg_71[7];
  assign intdelay_1_reg_next_72[0] = betaROut_7_8;
  assign intdelay_1_reg_next_72[1] = intdelay_1_reg_72[0];
  assign intdelay_1_reg_next_72[2] = intdelay_1_reg_72[1];
  assign intdelay_1_reg_next_72[3] = intdelay_1_reg_72[2];
  assign intdelay_1_reg_next_72[4] = intdelay_1_reg_72[3];
  assign intdelay_1_reg_next_72[5] = intdelay_1_reg_72[4];
  assign intdelay_1_reg_next_72[6] = intdelay_1_reg_72[5];
  assign intdelay_1_reg_next_72[7] = intdelay_1_reg_72[6];
  assign intdelay_out_9_4 = intdelay_1_reg_72[7];
  assign intdelay_1_reg_next_73[0] = betaROut_7_9;
  assign intdelay_1_reg_next_73[1] = intdelay_1_reg_73[0];
  assign intdelay_1_reg_next_73[2] = intdelay_1_reg_73[1];
  assign intdelay_1_reg_next_73[3] = intdelay_1_reg_73[2];
  assign intdelay_1_reg_next_73[4] = intdelay_1_reg_73[3];
  assign intdelay_1_reg_next_73[5] = intdelay_1_reg_73[4];
  assign intdelay_1_reg_next_73[6] = intdelay_1_reg_73[5];
  assign intdelay_1_reg_next_73[7] = intdelay_1_reg_73[6];
  assign intdelay_out_10_4 = intdelay_1_reg_73[7];
  assign intdelay_1_reg_next_74[0] = betaROut_7_10;
  assign intdelay_1_reg_next_74[1] = intdelay_1_reg_74[0];
  assign intdelay_1_reg_next_74[2] = intdelay_1_reg_74[1];
  assign intdelay_1_reg_next_74[3] = intdelay_1_reg_74[2];
  assign intdelay_1_reg_next_74[4] = intdelay_1_reg_74[3];
  assign intdelay_1_reg_next_74[5] = intdelay_1_reg_74[4];
  assign intdelay_1_reg_next_74[6] = intdelay_1_reg_74[5];
  assign intdelay_1_reg_next_74[7] = intdelay_1_reg_74[6];
  assign intdelay_out_11_4 = intdelay_1_reg_74[7];
  assign intdelay_1_reg_next_75[0] = betaROut_7_11;
  assign intdelay_1_reg_next_75[1] = intdelay_1_reg_75[0];
  assign intdelay_1_reg_next_75[2] = intdelay_1_reg_75[1];
  assign intdelay_1_reg_next_75[3] = intdelay_1_reg_75[2];
  assign intdelay_1_reg_next_75[4] = intdelay_1_reg_75[3];
  assign intdelay_1_reg_next_75[5] = intdelay_1_reg_75[4];
  assign intdelay_1_reg_next_75[6] = intdelay_1_reg_75[5];
  assign intdelay_1_reg_next_75[7] = intdelay_1_reg_75[6];
  assign intdelay_out_12_4 = intdelay_1_reg_75[7];
  assign intdelay_1_reg_next_76[0] = betaROut_7_12;
  assign intdelay_1_reg_next_76[1] = intdelay_1_reg_76[0];
  assign intdelay_1_reg_next_76[2] = intdelay_1_reg_76[1];
  assign intdelay_1_reg_next_76[3] = intdelay_1_reg_76[2];
  assign intdelay_1_reg_next_76[4] = intdelay_1_reg_76[3];
  assign intdelay_1_reg_next_76[5] = intdelay_1_reg_76[4];
  assign intdelay_1_reg_next_76[6] = intdelay_1_reg_76[5];
  assign intdelay_1_reg_next_76[7] = intdelay_1_reg_76[6];
  assign intdelay_out_13_4 = intdelay_1_reg_76[7];
  assign intdelay_1_reg_next_77[0] = betaROut_7_13;
  assign intdelay_1_reg_next_77[1] = intdelay_1_reg_77[0];
  assign intdelay_1_reg_next_77[2] = intdelay_1_reg_77[1];
  assign intdelay_1_reg_next_77[3] = intdelay_1_reg_77[2];
  assign intdelay_1_reg_next_77[4] = intdelay_1_reg_77[3];
  assign intdelay_1_reg_next_77[5] = intdelay_1_reg_77[4];
  assign intdelay_1_reg_next_77[6] = intdelay_1_reg_77[5];
  assign intdelay_1_reg_next_77[7] = intdelay_1_reg_77[6];
  assign intdelay_out_14_4 = intdelay_1_reg_77[7];
  assign intdelay_1_reg_next_78[0] = betaROut_7_14;
  assign intdelay_1_reg_next_78[1] = intdelay_1_reg_78[0];
  assign intdelay_1_reg_next_78[2] = intdelay_1_reg_78[1];
  assign intdelay_1_reg_next_78[3] = intdelay_1_reg_78[2];
  assign intdelay_1_reg_next_78[4] = intdelay_1_reg_78[3];
  assign intdelay_1_reg_next_78[5] = intdelay_1_reg_78[4];
  assign intdelay_1_reg_next_78[6] = intdelay_1_reg_78[5];
  assign intdelay_1_reg_next_78[7] = intdelay_1_reg_78[6];
  assign intdelay_out_15_4 = intdelay_1_reg_78[7];
  assign intdelay_1_reg_next_79[0] = betaROut_7_15;
  assign intdelay_1_reg_next_79[1] = intdelay_1_reg_79[0];
  assign intdelay_1_reg_next_79[2] = intdelay_1_reg_79[1];
  assign intdelay_1_reg_next_79[3] = intdelay_1_reg_79[2];
  assign intdelay_1_reg_next_79[4] = intdelay_1_reg_79[3];
  assign intdelay_1_reg_next_79[5] = intdelay_1_reg_79[4];
  assign intdelay_1_reg_next_79[6] = intdelay_1_reg_79[5];
  assign intdelay_1_reg_next_79[7] = intdelay_1_reg_79[6];
  assign intdelay_out_16_4 = intdelay_1_reg_79[7];



  assign betaROut_7_1 = betaROut_7[1];

  assign betaROut_7_2 = betaROut_7[2];

  assign betaROut_7_3 = betaROut_7[3];

  assign betaROut_7_4 = betaROut_7[4];

  assign betaROut_7_5 = betaROut_7[5];

  assign betaROut_7_6 = betaROut_7[6];

  assign betaROut_7_7 = betaROut_7[7];

  assign betaROut_7_8 = betaROut_7[8];

  assign betaROut_7_9 = betaROut_7[9];

  assign betaROut_7_10 = betaROut_7[10];

  assign betaROut_7_11 = betaROut_7[11];

  assign betaROut_7_12 = betaROut_7[12];

  assign betaROut_7_13 = betaROut_7[13];

  assign betaROut_7_14 = betaROut_7[14];

  assign betaROut_7_15 = betaROut_7[15];

  assign betaRIn_reg_3[0] = intdelay_out_1_4;
  assign betaRIn_reg_3[1] = intdelay_out_2_4;
  assign betaRIn_reg_3[2] = intdelay_out_3_4;
  assign betaRIn_reg_3[3] = intdelay_out_4_4;
  assign betaRIn_reg_3[4] = intdelay_out_5_4;
  assign betaRIn_reg_3[5] = intdelay_out_6_4;
  assign betaRIn_reg_3[6] = intdelay_out_7_4;
  assign betaRIn_reg_3[7] = intdelay_out_8_4;
  assign betaRIn_reg_3[8] = intdelay_out_9_4;
  assign betaRIn_reg_3[9] = intdelay_out_10_4;
  assign betaRIn_reg_3[10] = intdelay_out_11_4;
  assign betaRIn_reg_3[11] = intdelay_out_12_4;
  assign betaRIn_reg_3[12] = intdelay_out_13_4;
  assign betaRIn_reg_3[13] = intdelay_out_14_4;
  assign betaRIn_reg_3[14] = intdelay_out_15_4;
  assign betaRIn_reg_3[15] = intdelay_out_16_4;

  assign betaROut_8[0] = (betaPass_3 == 1'b0 ? betaXor_7[0] :
              betaRIn_reg_3[0]);
  assign betaROut_8[1] = (betaPass_3 == 1'b0 ? betaXor_7[1] :
              betaRIn_reg_3[1]);
  assign betaROut_8[2] = (betaPass_3 == 1'b0 ? betaXor_7[2] :
              betaRIn_reg_3[2]);
  assign betaROut_8[3] = (betaPass_3 == 1'b0 ? betaXor_7[3] :
              betaRIn_reg_3[3]);
  assign betaROut_8[4] = (betaPass_3 == 1'b0 ? betaXor_7[4] :
              betaRIn_reg_3[4]);
  assign betaROut_8[5] = (betaPass_3 == 1'b0 ? betaXor_7[5] :
              betaRIn_reg_3[5]);
  assign betaROut_8[6] = (betaPass_3 == 1'b0 ? betaXor_7[6] :
              betaRIn_reg_3[6]);
  assign betaROut_8[7] = (betaPass_3 == 1'b0 ? betaXor_7[7] :
              betaRIn_reg_3[7]);
  assign betaROut_8[8] = (betaPass_3 == 1'b0 ? betaXor_7[8] :
              betaRIn_reg_3[8]);
  assign betaROut_8[9] = (betaPass_3 == 1'b0 ? betaXor_7[9] :
              betaRIn_reg_3[9]);
  assign betaROut_8[10] = (betaPass_3 == 1'b0 ? betaXor_7[10] :
              betaRIn_reg_3[10]);
  assign betaROut_8[11] = (betaPass_3 == 1'b0 ? betaXor_7[11] :
              betaRIn_reg_3[11]);
  assign betaROut_8[12] = (betaPass_3 == 1'b0 ? betaXor_7[12] :
              betaRIn_reg_3[12]);
  assign betaROut_8[13] = (betaPass_3 == 1'b0 ? betaXor_7[13] :
              betaRIn_reg_3[13]);
  assign betaROut_8[14] = (betaPass_3 == 1'b0 ? betaXor_7[14] :
              betaRIn_reg_3[14]);
  assign betaROut_8[15] = (betaPass_3 == 1'b0 ? betaXor_7[15] :
              betaRIn_reg_3[15]);



  assign betaSizeMatch_8[0] = betaROut_8[0];
  assign betaSizeMatch_8[1] = betaROut_8[1];
  assign betaSizeMatch_8[2] = betaROut_8[2];
  assign betaSizeMatch_8[3] = betaROut_8[3];
  assign betaSizeMatch_8[4] = betaROut_8[4];
  assign betaSizeMatch_8[5] = betaROut_8[5];
  assign betaSizeMatch_8[6] = betaROut_8[6];
  assign betaSizeMatch_8[7] = betaROut_8[7];
  assign betaSizeMatch_8[8] = betaROut_8[8];
  assign betaSizeMatch_8[9] = betaROut_8[9];
  assign betaSizeMatch_8[10] = betaROut_8[10];
  assign betaSizeMatch_8[11] = betaROut_8[11];
  assign betaSizeMatch_8[12] = betaROut_8[12];
  assign betaSizeMatch_8[13] = betaROut_8[13];
  assign betaSizeMatch_8[14] = betaROut_8[14];
  assign betaSizeMatch_8[15] = betaROut_8[15];

  assign betaPass_4 = rdBlock_reg[4];



  assign betaConcat_7[0] = betaXor_7[0];
  assign betaConcat_7[1] = betaXor_7[1];
  assign betaConcat_7[2] = betaXor_7[2];
  assign betaConcat_7[3] = betaXor_7[3];
  assign betaConcat_7[4] = betaXor_7[4];
  assign betaConcat_7[5] = betaXor_7[5];
  assign betaConcat_7[6] = betaXor_7[6];
  assign betaConcat_7[7] = betaXor_7[7];
  assign betaConcat_7[8] = betaXor_7[8];
  assign betaConcat_7[9] = betaXor_7[9];
  assign betaConcat_7[10] = betaXor_7[10];
  assign betaConcat_7[11] = betaXor_7[11];
  assign betaConcat_7[12] = betaXor_7[12];
  assign betaConcat_7[13] = betaXor_7[13];
  assign betaConcat_7[14] = betaXor_7[14];
  assign betaConcat_7[15] = betaXor_7[15];
  assign betaConcat_7[16] = betaROut_7[0];
  assign betaConcat_7[17] = betaROut_7[1];
  assign betaConcat_7[18] = betaROut_7[2];
  assign betaConcat_7[19] = betaROut_7[3];
  assign betaConcat_7[20] = betaROut_7[4];
  assign betaConcat_7[21] = betaROut_7[5];
  assign betaConcat_7[22] = betaROut_7[6];
  assign betaConcat_7[23] = betaROut_7[7];
  assign betaConcat_7[24] = betaROut_7[8];
  assign betaConcat_7[25] = betaROut_7[9];
  assign betaConcat_7[26] = betaROut_7[10];
  assign betaConcat_7[27] = betaROut_7[11];
  assign betaConcat_7[28] = betaROut_7[12];
  assign betaConcat_7[29] = betaROut_7[13];
  assign betaConcat_7[30] = betaROut_7[14];
  assign betaConcat_7[31] = betaROut_7[15];

  assign betaDin_7 = {betaConcat_7[0], betaConcat_7[1], betaConcat_7[2], betaConcat_7[3], betaConcat_7[4], betaConcat_7[5], betaConcat_7[6], betaConcat_7[7], betaConcat_7[8], betaConcat_7[9], betaConcat_7[10], betaConcat_7[11], betaConcat_7[12], betaConcat_7[13], betaConcat_7[14], betaConcat_7[15], betaConcat_7[16], betaConcat_7[17], betaConcat_7[18], betaConcat_7[19], betaConcat_7[20], betaConcat_7[21], betaConcat_7[22], betaConcat_7[23], betaConcat_7[24], betaConcat_7[25], betaConcat_7[26], betaConcat_7[27], betaConcat_7[28], betaConcat_7[29], betaConcat_7[30], betaConcat_7[31]};



  assign rdBlockSlice_2 = rdBlock_reg[2:0];



  assign betaWrAddr_7 = {rdBlockSlice_2, betaWrPath_reg};



  assign stageEn_8 = rdStage_reg == 4'b1000;



  assign stageWr_8 = stageEn_8 & mode;



  assign rdBlockSlice_2_1 = rdBlock[2:0];



  assign betaRdAddr_7 = {rdBlockSlice_2_1, betaRdPath_8};



  SimpleDualPortRAM_generic #(.AddrWidth(4),
                              .DataWidth(32)
                              )
                            u_stage_8 (.clk(clk),
                                       .enb(enb),
                                       .wr_din(betaDin_7),
                                       .wr_addr(betaWrAddr_7),
                                       .wr_en(stageWr_8),
                                       .rd_addr(betaRdAddr_7),
                                       .rd_dout(betaDout_7)
                                       );

  assign doutSlice_126 = betaDout_7[31];



  assign doutSlice_127 = betaDout_7[30];



  assign doutSlice_128 = betaDout_7[29];



  assign doutSlice_129 = betaDout_7[28];



  assign doutSlice_130 = betaDout_7[27];



  assign doutSlice_131 = betaDout_7[26];



  assign doutSlice_132 = betaDout_7[25];



  assign doutSlice_133 = betaDout_7[24];



  assign doutSlice_134 = betaDout_7[23];



  assign doutSlice_135 = betaDout_7[22];



  assign doutSlice_136 = betaDout_7[21];



  assign doutSlice_137 = betaDout_7[20];



  assign doutSlice_138 = betaDout_7[19];



  assign doutSlice_139 = betaDout_7[18];



  assign doutSlice_140 = betaDout_7[17];



  assign doutSlice_141 = betaDout_7[16];



  assign betaLLower_3[0] = doutSlice_126;
  assign betaLLower_3[1] = doutSlice_127;
  assign betaLLower_3[2] = doutSlice_128;
  assign betaLLower_3[3] = doutSlice_129;
  assign betaLLower_3[4] = doutSlice_130;
  assign betaLLower_3[5] = doutSlice_131;
  assign betaLLower_3[6] = doutSlice_132;
  assign betaLLower_3[7] = doutSlice_133;
  assign betaLLower_3[8] = doutSlice_134;
  assign betaLLower_3[9] = doutSlice_135;
  assign betaLLower_3[10] = doutSlice_136;
  assign betaLLower_3[11] = doutSlice_137;
  assign betaLLower_3[12] = doutSlice_138;
  assign betaLLower_3[13] = doutSlice_139;
  assign betaLLower_3[14] = doutSlice_140;
  assign betaLLower_3[15] = doutSlice_141;

  assign doutSlice_142 = betaDout_7[15];



  always @(posedge clk or posedge reset)
    begin : intdelay_1_6_process
      if (reset == 1'b1) begin
        intdelay_1_reg_80[0] <= 1'b0;
        intdelay_1_reg_80[1] <= 1'b0;
        intdelay_1_reg_80[2] <= 1'b0;
        intdelay_1_reg_80[3] <= 1'b0;
        intdelay_1_reg_80[4] <= 1'b0;
        intdelay_1_reg_80[5] <= 1'b0;
        intdelay_1_reg_80[6] <= 1'b0;
        intdelay_1_reg_80[7] <= 1'b0;
        intdelay_1_reg_81[0] <= 1'b0;
        intdelay_1_reg_81[1] <= 1'b0;
        intdelay_1_reg_81[2] <= 1'b0;
        intdelay_1_reg_81[3] <= 1'b0;
        intdelay_1_reg_81[4] <= 1'b0;
        intdelay_1_reg_81[5] <= 1'b0;
        intdelay_1_reg_81[6] <= 1'b0;
        intdelay_1_reg_81[7] <= 1'b0;
        intdelay_1_reg_82[0] <= 1'b0;
        intdelay_1_reg_82[1] <= 1'b0;
        intdelay_1_reg_82[2] <= 1'b0;
        intdelay_1_reg_82[3] <= 1'b0;
        intdelay_1_reg_82[4] <= 1'b0;
        intdelay_1_reg_82[5] <= 1'b0;
        intdelay_1_reg_82[6] <= 1'b0;
        intdelay_1_reg_82[7] <= 1'b0;
        intdelay_1_reg_83[0] <= 1'b0;
        intdelay_1_reg_83[1] <= 1'b0;
        intdelay_1_reg_83[2] <= 1'b0;
        intdelay_1_reg_83[3] <= 1'b0;
        intdelay_1_reg_83[4] <= 1'b0;
        intdelay_1_reg_83[5] <= 1'b0;
        intdelay_1_reg_83[6] <= 1'b0;
        intdelay_1_reg_83[7] <= 1'b0;
        intdelay_1_reg_84[0] <= 1'b0;
        intdelay_1_reg_84[1] <= 1'b0;
        intdelay_1_reg_84[2] <= 1'b0;
        intdelay_1_reg_84[3] <= 1'b0;
        intdelay_1_reg_84[4] <= 1'b0;
        intdelay_1_reg_84[5] <= 1'b0;
        intdelay_1_reg_84[6] <= 1'b0;
        intdelay_1_reg_84[7] <= 1'b0;
        intdelay_1_reg_85[0] <= 1'b0;
        intdelay_1_reg_85[1] <= 1'b0;
        intdelay_1_reg_85[2] <= 1'b0;
        intdelay_1_reg_85[3] <= 1'b0;
        intdelay_1_reg_85[4] <= 1'b0;
        intdelay_1_reg_85[5] <= 1'b0;
        intdelay_1_reg_85[6] <= 1'b0;
        intdelay_1_reg_85[7] <= 1'b0;
        intdelay_1_reg_86[0] <= 1'b0;
        intdelay_1_reg_86[1] <= 1'b0;
        intdelay_1_reg_86[2] <= 1'b0;
        intdelay_1_reg_86[3] <= 1'b0;
        intdelay_1_reg_86[4] <= 1'b0;
        intdelay_1_reg_86[5] <= 1'b0;
        intdelay_1_reg_86[6] <= 1'b0;
        intdelay_1_reg_86[7] <= 1'b0;
        intdelay_1_reg_87[0] <= 1'b0;
        intdelay_1_reg_87[1] <= 1'b0;
        intdelay_1_reg_87[2] <= 1'b0;
        intdelay_1_reg_87[3] <= 1'b0;
        intdelay_1_reg_87[4] <= 1'b0;
        intdelay_1_reg_87[5] <= 1'b0;
        intdelay_1_reg_87[6] <= 1'b0;
        intdelay_1_reg_87[7] <= 1'b0;
        intdelay_1_reg_88[0] <= 1'b0;
        intdelay_1_reg_88[1] <= 1'b0;
        intdelay_1_reg_88[2] <= 1'b0;
        intdelay_1_reg_88[3] <= 1'b0;
        intdelay_1_reg_88[4] <= 1'b0;
        intdelay_1_reg_88[5] <= 1'b0;
        intdelay_1_reg_88[6] <= 1'b0;
        intdelay_1_reg_88[7] <= 1'b0;
        intdelay_1_reg_89[0] <= 1'b0;
        intdelay_1_reg_89[1] <= 1'b0;
        intdelay_1_reg_89[2] <= 1'b0;
        intdelay_1_reg_89[3] <= 1'b0;
        intdelay_1_reg_89[4] <= 1'b0;
        intdelay_1_reg_89[5] <= 1'b0;
        intdelay_1_reg_89[6] <= 1'b0;
        intdelay_1_reg_89[7] <= 1'b0;
        intdelay_1_reg_90[0] <= 1'b0;
        intdelay_1_reg_90[1] <= 1'b0;
        intdelay_1_reg_90[2] <= 1'b0;
        intdelay_1_reg_90[3] <= 1'b0;
        intdelay_1_reg_90[4] <= 1'b0;
        intdelay_1_reg_90[5] <= 1'b0;
        intdelay_1_reg_90[6] <= 1'b0;
        intdelay_1_reg_90[7] <= 1'b0;
        intdelay_1_reg_91[0] <= 1'b0;
        intdelay_1_reg_91[1] <= 1'b0;
        intdelay_1_reg_91[2] <= 1'b0;
        intdelay_1_reg_91[3] <= 1'b0;
        intdelay_1_reg_91[4] <= 1'b0;
        intdelay_1_reg_91[5] <= 1'b0;
        intdelay_1_reg_91[6] <= 1'b0;
        intdelay_1_reg_91[7] <= 1'b0;
        intdelay_1_reg_92[0] <= 1'b0;
        intdelay_1_reg_92[1] <= 1'b0;
        intdelay_1_reg_92[2] <= 1'b0;
        intdelay_1_reg_92[3] <= 1'b0;
        intdelay_1_reg_92[4] <= 1'b0;
        intdelay_1_reg_92[5] <= 1'b0;
        intdelay_1_reg_92[6] <= 1'b0;
        intdelay_1_reg_92[7] <= 1'b0;
        intdelay_1_reg_93[0] <= 1'b0;
        intdelay_1_reg_93[1] <= 1'b0;
        intdelay_1_reg_93[2] <= 1'b0;
        intdelay_1_reg_93[3] <= 1'b0;
        intdelay_1_reg_93[4] <= 1'b0;
        intdelay_1_reg_93[5] <= 1'b0;
        intdelay_1_reg_93[6] <= 1'b0;
        intdelay_1_reg_93[7] <= 1'b0;
        intdelay_1_reg_94[0] <= 1'b0;
        intdelay_1_reg_94[1] <= 1'b0;
        intdelay_1_reg_94[2] <= 1'b0;
        intdelay_1_reg_94[3] <= 1'b0;
        intdelay_1_reg_94[4] <= 1'b0;
        intdelay_1_reg_94[5] <= 1'b0;
        intdelay_1_reg_94[6] <= 1'b0;
        intdelay_1_reg_94[7] <= 1'b0;
        intdelay_1_reg_95[0] <= 1'b0;
        intdelay_1_reg_95[1] <= 1'b0;
        intdelay_1_reg_95[2] <= 1'b0;
        intdelay_1_reg_95[3] <= 1'b0;
        intdelay_1_reg_95[4] <= 1'b0;
        intdelay_1_reg_95[5] <= 1'b0;
        intdelay_1_reg_95[6] <= 1'b0;
        intdelay_1_reg_95[7] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg_80[0] <= intdelay_1_reg_next_80[0];
          intdelay_1_reg_80[1] <= intdelay_1_reg_next_80[1];
          intdelay_1_reg_80[2] <= intdelay_1_reg_next_80[2];
          intdelay_1_reg_80[3] <= intdelay_1_reg_next_80[3];
          intdelay_1_reg_80[4] <= intdelay_1_reg_next_80[4];
          intdelay_1_reg_80[5] <= intdelay_1_reg_next_80[5];
          intdelay_1_reg_80[6] <= intdelay_1_reg_next_80[6];
          intdelay_1_reg_80[7] <= intdelay_1_reg_next_80[7];
          intdelay_1_reg_81[0] <= intdelay_1_reg_next_81[0];
          intdelay_1_reg_81[1] <= intdelay_1_reg_next_81[1];
          intdelay_1_reg_81[2] <= intdelay_1_reg_next_81[2];
          intdelay_1_reg_81[3] <= intdelay_1_reg_next_81[3];
          intdelay_1_reg_81[4] <= intdelay_1_reg_next_81[4];
          intdelay_1_reg_81[5] <= intdelay_1_reg_next_81[5];
          intdelay_1_reg_81[6] <= intdelay_1_reg_next_81[6];
          intdelay_1_reg_81[7] <= intdelay_1_reg_next_81[7];
          intdelay_1_reg_82[0] <= intdelay_1_reg_next_82[0];
          intdelay_1_reg_82[1] <= intdelay_1_reg_next_82[1];
          intdelay_1_reg_82[2] <= intdelay_1_reg_next_82[2];
          intdelay_1_reg_82[3] <= intdelay_1_reg_next_82[3];
          intdelay_1_reg_82[4] <= intdelay_1_reg_next_82[4];
          intdelay_1_reg_82[5] <= intdelay_1_reg_next_82[5];
          intdelay_1_reg_82[6] <= intdelay_1_reg_next_82[6];
          intdelay_1_reg_82[7] <= intdelay_1_reg_next_82[7];
          intdelay_1_reg_83[0] <= intdelay_1_reg_next_83[0];
          intdelay_1_reg_83[1] <= intdelay_1_reg_next_83[1];
          intdelay_1_reg_83[2] <= intdelay_1_reg_next_83[2];
          intdelay_1_reg_83[3] <= intdelay_1_reg_next_83[3];
          intdelay_1_reg_83[4] <= intdelay_1_reg_next_83[4];
          intdelay_1_reg_83[5] <= intdelay_1_reg_next_83[5];
          intdelay_1_reg_83[6] <= intdelay_1_reg_next_83[6];
          intdelay_1_reg_83[7] <= intdelay_1_reg_next_83[7];
          intdelay_1_reg_84[0] <= intdelay_1_reg_next_84[0];
          intdelay_1_reg_84[1] <= intdelay_1_reg_next_84[1];
          intdelay_1_reg_84[2] <= intdelay_1_reg_next_84[2];
          intdelay_1_reg_84[3] <= intdelay_1_reg_next_84[3];
          intdelay_1_reg_84[4] <= intdelay_1_reg_next_84[4];
          intdelay_1_reg_84[5] <= intdelay_1_reg_next_84[5];
          intdelay_1_reg_84[6] <= intdelay_1_reg_next_84[6];
          intdelay_1_reg_84[7] <= intdelay_1_reg_next_84[7];
          intdelay_1_reg_85[0] <= intdelay_1_reg_next_85[0];
          intdelay_1_reg_85[1] <= intdelay_1_reg_next_85[1];
          intdelay_1_reg_85[2] <= intdelay_1_reg_next_85[2];
          intdelay_1_reg_85[3] <= intdelay_1_reg_next_85[3];
          intdelay_1_reg_85[4] <= intdelay_1_reg_next_85[4];
          intdelay_1_reg_85[5] <= intdelay_1_reg_next_85[5];
          intdelay_1_reg_85[6] <= intdelay_1_reg_next_85[6];
          intdelay_1_reg_85[7] <= intdelay_1_reg_next_85[7];
          intdelay_1_reg_86[0] <= intdelay_1_reg_next_86[0];
          intdelay_1_reg_86[1] <= intdelay_1_reg_next_86[1];
          intdelay_1_reg_86[2] <= intdelay_1_reg_next_86[2];
          intdelay_1_reg_86[3] <= intdelay_1_reg_next_86[3];
          intdelay_1_reg_86[4] <= intdelay_1_reg_next_86[4];
          intdelay_1_reg_86[5] <= intdelay_1_reg_next_86[5];
          intdelay_1_reg_86[6] <= intdelay_1_reg_next_86[6];
          intdelay_1_reg_86[7] <= intdelay_1_reg_next_86[7];
          intdelay_1_reg_87[0] <= intdelay_1_reg_next_87[0];
          intdelay_1_reg_87[1] <= intdelay_1_reg_next_87[1];
          intdelay_1_reg_87[2] <= intdelay_1_reg_next_87[2];
          intdelay_1_reg_87[3] <= intdelay_1_reg_next_87[3];
          intdelay_1_reg_87[4] <= intdelay_1_reg_next_87[4];
          intdelay_1_reg_87[5] <= intdelay_1_reg_next_87[5];
          intdelay_1_reg_87[6] <= intdelay_1_reg_next_87[6];
          intdelay_1_reg_87[7] <= intdelay_1_reg_next_87[7];
          intdelay_1_reg_88[0] <= intdelay_1_reg_next_88[0];
          intdelay_1_reg_88[1] <= intdelay_1_reg_next_88[1];
          intdelay_1_reg_88[2] <= intdelay_1_reg_next_88[2];
          intdelay_1_reg_88[3] <= intdelay_1_reg_next_88[3];
          intdelay_1_reg_88[4] <= intdelay_1_reg_next_88[4];
          intdelay_1_reg_88[5] <= intdelay_1_reg_next_88[5];
          intdelay_1_reg_88[6] <= intdelay_1_reg_next_88[6];
          intdelay_1_reg_88[7] <= intdelay_1_reg_next_88[7];
          intdelay_1_reg_89[0] <= intdelay_1_reg_next_89[0];
          intdelay_1_reg_89[1] <= intdelay_1_reg_next_89[1];
          intdelay_1_reg_89[2] <= intdelay_1_reg_next_89[2];
          intdelay_1_reg_89[3] <= intdelay_1_reg_next_89[3];
          intdelay_1_reg_89[4] <= intdelay_1_reg_next_89[4];
          intdelay_1_reg_89[5] <= intdelay_1_reg_next_89[5];
          intdelay_1_reg_89[6] <= intdelay_1_reg_next_89[6];
          intdelay_1_reg_89[7] <= intdelay_1_reg_next_89[7];
          intdelay_1_reg_90[0] <= intdelay_1_reg_next_90[0];
          intdelay_1_reg_90[1] <= intdelay_1_reg_next_90[1];
          intdelay_1_reg_90[2] <= intdelay_1_reg_next_90[2];
          intdelay_1_reg_90[3] <= intdelay_1_reg_next_90[3];
          intdelay_1_reg_90[4] <= intdelay_1_reg_next_90[4];
          intdelay_1_reg_90[5] <= intdelay_1_reg_next_90[5];
          intdelay_1_reg_90[6] <= intdelay_1_reg_next_90[6];
          intdelay_1_reg_90[7] <= intdelay_1_reg_next_90[7];
          intdelay_1_reg_91[0] <= intdelay_1_reg_next_91[0];
          intdelay_1_reg_91[1] <= intdelay_1_reg_next_91[1];
          intdelay_1_reg_91[2] <= intdelay_1_reg_next_91[2];
          intdelay_1_reg_91[3] <= intdelay_1_reg_next_91[3];
          intdelay_1_reg_91[4] <= intdelay_1_reg_next_91[4];
          intdelay_1_reg_91[5] <= intdelay_1_reg_next_91[5];
          intdelay_1_reg_91[6] <= intdelay_1_reg_next_91[6];
          intdelay_1_reg_91[7] <= intdelay_1_reg_next_91[7];
          intdelay_1_reg_92[0] <= intdelay_1_reg_next_92[0];
          intdelay_1_reg_92[1] <= intdelay_1_reg_next_92[1];
          intdelay_1_reg_92[2] <= intdelay_1_reg_next_92[2];
          intdelay_1_reg_92[3] <= intdelay_1_reg_next_92[3];
          intdelay_1_reg_92[4] <= intdelay_1_reg_next_92[4];
          intdelay_1_reg_92[5] <= intdelay_1_reg_next_92[5];
          intdelay_1_reg_92[6] <= intdelay_1_reg_next_92[6];
          intdelay_1_reg_92[7] <= intdelay_1_reg_next_92[7];
          intdelay_1_reg_93[0] <= intdelay_1_reg_next_93[0];
          intdelay_1_reg_93[1] <= intdelay_1_reg_next_93[1];
          intdelay_1_reg_93[2] <= intdelay_1_reg_next_93[2];
          intdelay_1_reg_93[3] <= intdelay_1_reg_next_93[3];
          intdelay_1_reg_93[4] <= intdelay_1_reg_next_93[4];
          intdelay_1_reg_93[5] <= intdelay_1_reg_next_93[5];
          intdelay_1_reg_93[6] <= intdelay_1_reg_next_93[6];
          intdelay_1_reg_93[7] <= intdelay_1_reg_next_93[7];
          intdelay_1_reg_94[0] <= intdelay_1_reg_next_94[0];
          intdelay_1_reg_94[1] <= intdelay_1_reg_next_94[1];
          intdelay_1_reg_94[2] <= intdelay_1_reg_next_94[2];
          intdelay_1_reg_94[3] <= intdelay_1_reg_next_94[3];
          intdelay_1_reg_94[4] <= intdelay_1_reg_next_94[4];
          intdelay_1_reg_94[5] <= intdelay_1_reg_next_94[5];
          intdelay_1_reg_94[6] <= intdelay_1_reg_next_94[6];
          intdelay_1_reg_94[7] <= intdelay_1_reg_next_94[7];
          intdelay_1_reg_95[0] <= intdelay_1_reg_next_95[0];
          intdelay_1_reg_95[1] <= intdelay_1_reg_next_95[1];
          intdelay_1_reg_95[2] <= intdelay_1_reg_next_95[2];
          intdelay_1_reg_95[3] <= intdelay_1_reg_next_95[3];
          intdelay_1_reg_95[4] <= intdelay_1_reg_next_95[4];
          intdelay_1_reg_95[5] <= intdelay_1_reg_next_95[5];
          intdelay_1_reg_95[6] <= intdelay_1_reg_next_95[6];
          intdelay_1_reg_95[7] <= intdelay_1_reg_next_95[7];
        end
      end
    end

  assign intdelay_1_reg_next_80[0] = doutSlice_142;
  assign intdelay_1_reg_next_80[1] = intdelay_1_reg_80[0];
  assign intdelay_1_reg_next_80[2] = intdelay_1_reg_80[1];
  assign intdelay_1_reg_next_80[3] = intdelay_1_reg_80[2];
  assign intdelay_1_reg_next_80[4] = intdelay_1_reg_80[3];
  assign intdelay_1_reg_next_80[5] = intdelay_1_reg_80[4];
  assign intdelay_1_reg_next_80[6] = intdelay_1_reg_80[5];
  assign intdelay_1_reg_next_80[7] = intdelay_1_reg_80[6];
  assign intdelay_out_1_5 = intdelay_1_reg_80[7];
  assign intdelay_1_reg_next_81[0] = doutSlice_143;
  assign intdelay_1_reg_next_81[1] = intdelay_1_reg_81[0];
  assign intdelay_1_reg_next_81[2] = intdelay_1_reg_81[1];
  assign intdelay_1_reg_next_81[3] = intdelay_1_reg_81[2];
  assign intdelay_1_reg_next_81[4] = intdelay_1_reg_81[3];
  assign intdelay_1_reg_next_81[5] = intdelay_1_reg_81[4];
  assign intdelay_1_reg_next_81[6] = intdelay_1_reg_81[5];
  assign intdelay_1_reg_next_81[7] = intdelay_1_reg_81[6];
  assign intdelay_out_2_5 = intdelay_1_reg_81[7];
  assign intdelay_1_reg_next_82[0] = doutSlice_144;
  assign intdelay_1_reg_next_82[1] = intdelay_1_reg_82[0];
  assign intdelay_1_reg_next_82[2] = intdelay_1_reg_82[1];
  assign intdelay_1_reg_next_82[3] = intdelay_1_reg_82[2];
  assign intdelay_1_reg_next_82[4] = intdelay_1_reg_82[3];
  assign intdelay_1_reg_next_82[5] = intdelay_1_reg_82[4];
  assign intdelay_1_reg_next_82[6] = intdelay_1_reg_82[5];
  assign intdelay_1_reg_next_82[7] = intdelay_1_reg_82[6];
  assign intdelay_out_3_5 = intdelay_1_reg_82[7];
  assign intdelay_1_reg_next_83[0] = doutSlice_145;
  assign intdelay_1_reg_next_83[1] = intdelay_1_reg_83[0];
  assign intdelay_1_reg_next_83[2] = intdelay_1_reg_83[1];
  assign intdelay_1_reg_next_83[3] = intdelay_1_reg_83[2];
  assign intdelay_1_reg_next_83[4] = intdelay_1_reg_83[3];
  assign intdelay_1_reg_next_83[5] = intdelay_1_reg_83[4];
  assign intdelay_1_reg_next_83[6] = intdelay_1_reg_83[5];
  assign intdelay_1_reg_next_83[7] = intdelay_1_reg_83[6];
  assign intdelay_out_4_5 = intdelay_1_reg_83[7];
  assign intdelay_1_reg_next_84[0] = doutSlice_146;
  assign intdelay_1_reg_next_84[1] = intdelay_1_reg_84[0];
  assign intdelay_1_reg_next_84[2] = intdelay_1_reg_84[1];
  assign intdelay_1_reg_next_84[3] = intdelay_1_reg_84[2];
  assign intdelay_1_reg_next_84[4] = intdelay_1_reg_84[3];
  assign intdelay_1_reg_next_84[5] = intdelay_1_reg_84[4];
  assign intdelay_1_reg_next_84[6] = intdelay_1_reg_84[5];
  assign intdelay_1_reg_next_84[7] = intdelay_1_reg_84[6];
  assign intdelay_out_5_5 = intdelay_1_reg_84[7];
  assign intdelay_1_reg_next_85[0] = doutSlice_147;
  assign intdelay_1_reg_next_85[1] = intdelay_1_reg_85[0];
  assign intdelay_1_reg_next_85[2] = intdelay_1_reg_85[1];
  assign intdelay_1_reg_next_85[3] = intdelay_1_reg_85[2];
  assign intdelay_1_reg_next_85[4] = intdelay_1_reg_85[3];
  assign intdelay_1_reg_next_85[5] = intdelay_1_reg_85[4];
  assign intdelay_1_reg_next_85[6] = intdelay_1_reg_85[5];
  assign intdelay_1_reg_next_85[7] = intdelay_1_reg_85[6];
  assign intdelay_out_6_5 = intdelay_1_reg_85[7];
  assign intdelay_1_reg_next_86[0] = doutSlice_148;
  assign intdelay_1_reg_next_86[1] = intdelay_1_reg_86[0];
  assign intdelay_1_reg_next_86[2] = intdelay_1_reg_86[1];
  assign intdelay_1_reg_next_86[3] = intdelay_1_reg_86[2];
  assign intdelay_1_reg_next_86[4] = intdelay_1_reg_86[3];
  assign intdelay_1_reg_next_86[5] = intdelay_1_reg_86[4];
  assign intdelay_1_reg_next_86[6] = intdelay_1_reg_86[5];
  assign intdelay_1_reg_next_86[7] = intdelay_1_reg_86[6];
  assign intdelay_out_7_5 = intdelay_1_reg_86[7];
  assign intdelay_1_reg_next_87[0] = doutSlice_149;
  assign intdelay_1_reg_next_87[1] = intdelay_1_reg_87[0];
  assign intdelay_1_reg_next_87[2] = intdelay_1_reg_87[1];
  assign intdelay_1_reg_next_87[3] = intdelay_1_reg_87[2];
  assign intdelay_1_reg_next_87[4] = intdelay_1_reg_87[3];
  assign intdelay_1_reg_next_87[5] = intdelay_1_reg_87[4];
  assign intdelay_1_reg_next_87[6] = intdelay_1_reg_87[5];
  assign intdelay_1_reg_next_87[7] = intdelay_1_reg_87[6];
  assign intdelay_out_8_5 = intdelay_1_reg_87[7];
  assign intdelay_1_reg_next_88[0] = doutSlice_150;
  assign intdelay_1_reg_next_88[1] = intdelay_1_reg_88[0];
  assign intdelay_1_reg_next_88[2] = intdelay_1_reg_88[1];
  assign intdelay_1_reg_next_88[3] = intdelay_1_reg_88[2];
  assign intdelay_1_reg_next_88[4] = intdelay_1_reg_88[3];
  assign intdelay_1_reg_next_88[5] = intdelay_1_reg_88[4];
  assign intdelay_1_reg_next_88[6] = intdelay_1_reg_88[5];
  assign intdelay_1_reg_next_88[7] = intdelay_1_reg_88[6];
  assign intdelay_out_9_5 = intdelay_1_reg_88[7];
  assign intdelay_1_reg_next_89[0] = doutSlice_151;
  assign intdelay_1_reg_next_89[1] = intdelay_1_reg_89[0];
  assign intdelay_1_reg_next_89[2] = intdelay_1_reg_89[1];
  assign intdelay_1_reg_next_89[3] = intdelay_1_reg_89[2];
  assign intdelay_1_reg_next_89[4] = intdelay_1_reg_89[3];
  assign intdelay_1_reg_next_89[5] = intdelay_1_reg_89[4];
  assign intdelay_1_reg_next_89[6] = intdelay_1_reg_89[5];
  assign intdelay_1_reg_next_89[7] = intdelay_1_reg_89[6];
  assign intdelay_out_10_5 = intdelay_1_reg_89[7];
  assign intdelay_1_reg_next_90[0] = doutSlice_152;
  assign intdelay_1_reg_next_90[1] = intdelay_1_reg_90[0];
  assign intdelay_1_reg_next_90[2] = intdelay_1_reg_90[1];
  assign intdelay_1_reg_next_90[3] = intdelay_1_reg_90[2];
  assign intdelay_1_reg_next_90[4] = intdelay_1_reg_90[3];
  assign intdelay_1_reg_next_90[5] = intdelay_1_reg_90[4];
  assign intdelay_1_reg_next_90[6] = intdelay_1_reg_90[5];
  assign intdelay_1_reg_next_90[7] = intdelay_1_reg_90[6];
  assign intdelay_out_11_5 = intdelay_1_reg_90[7];
  assign intdelay_1_reg_next_91[0] = doutSlice_153;
  assign intdelay_1_reg_next_91[1] = intdelay_1_reg_91[0];
  assign intdelay_1_reg_next_91[2] = intdelay_1_reg_91[1];
  assign intdelay_1_reg_next_91[3] = intdelay_1_reg_91[2];
  assign intdelay_1_reg_next_91[4] = intdelay_1_reg_91[3];
  assign intdelay_1_reg_next_91[5] = intdelay_1_reg_91[4];
  assign intdelay_1_reg_next_91[6] = intdelay_1_reg_91[5];
  assign intdelay_1_reg_next_91[7] = intdelay_1_reg_91[6];
  assign intdelay_out_12_5 = intdelay_1_reg_91[7];
  assign intdelay_1_reg_next_92[0] = doutSlice_154;
  assign intdelay_1_reg_next_92[1] = intdelay_1_reg_92[0];
  assign intdelay_1_reg_next_92[2] = intdelay_1_reg_92[1];
  assign intdelay_1_reg_next_92[3] = intdelay_1_reg_92[2];
  assign intdelay_1_reg_next_92[4] = intdelay_1_reg_92[3];
  assign intdelay_1_reg_next_92[5] = intdelay_1_reg_92[4];
  assign intdelay_1_reg_next_92[6] = intdelay_1_reg_92[5];
  assign intdelay_1_reg_next_92[7] = intdelay_1_reg_92[6];
  assign intdelay_out_13_5 = intdelay_1_reg_92[7];
  assign intdelay_1_reg_next_93[0] = doutSlice_155;
  assign intdelay_1_reg_next_93[1] = intdelay_1_reg_93[0];
  assign intdelay_1_reg_next_93[2] = intdelay_1_reg_93[1];
  assign intdelay_1_reg_next_93[3] = intdelay_1_reg_93[2];
  assign intdelay_1_reg_next_93[4] = intdelay_1_reg_93[3];
  assign intdelay_1_reg_next_93[5] = intdelay_1_reg_93[4];
  assign intdelay_1_reg_next_93[6] = intdelay_1_reg_93[5];
  assign intdelay_1_reg_next_93[7] = intdelay_1_reg_93[6];
  assign intdelay_out_14_5 = intdelay_1_reg_93[7];
  assign intdelay_1_reg_next_94[0] = doutSlice_156;
  assign intdelay_1_reg_next_94[1] = intdelay_1_reg_94[0];
  assign intdelay_1_reg_next_94[2] = intdelay_1_reg_94[1];
  assign intdelay_1_reg_next_94[3] = intdelay_1_reg_94[2];
  assign intdelay_1_reg_next_94[4] = intdelay_1_reg_94[3];
  assign intdelay_1_reg_next_94[5] = intdelay_1_reg_94[4];
  assign intdelay_1_reg_next_94[6] = intdelay_1_reg_94[5];
  assign intdelay_1_reg_next_94[7] = intdelay_1_reg_94[6];
  assign intdelay_out_15_5 = intdelay_1_reg_94[7];
  assign intdelay_1_reg_next_95[0] = doutSlice_157;
  assign intdelay_1_reg_next_95[1] = intdelay_1_reg_95[0];
  assign intdelay_1_reg_next_95[2] = intdelay_1_reg_95[1];
  assign intdelay_1_reg_next_95[3] = intdelay_1_reg_95[2];
  assign intdelay_1_reg_next_95[4] = intdelay_1_reg_95[3];
  assign intdelay_1_reg_next_95[5] = intdelay_1_reg_95[4];
  assign intdelay_1_reg_next_95[6] = intdelay_1_reg_95[5];
  assign intdelay_1_reg_next_95[7] = intdelay_1_reg_95[6];
  assign intdelay_out_16_5 = intdelay_1_reg_95[7];



  assign doutSlice_143 = betaDout_7[14];



  assign doutSlice_144 = betaDout_7[13];



  assign doutSlice_145 = betaDout_7[12];



  assign doutSlice_146 = betaDout_7[11];



  assign doutSlice_147 = betaDout_7[10];



  assign doutSlice_148 = betaDout_7[9];



  assign doutSlice_149 = betaDout_7[8];



  assign doutSlice_150 = betaDout_7[7];



  assign doutSlice_151 = betaDout_7[6];



  assign doutSlice_152 = betaDout_7[5];



  assign doutSlice_153 = betaDout_7[4];



  assign doutSlice_154 = betaDout_7[3];



  assign doutSlice_155 = betaDout_7[2];



  assign doutSlice_156 = betaDout_7[1];



  assign doutSlice_157 = betaDout_7[0];



  assign betaLUpper_reg3[0] = intdelay_out_1_5;
  assign betaLUpper_reg3[1] = intdelay_out_2_5;
  assign betaLUpper_reg3[2] = intdelay_out_3_5;
  assign betaLUpper_reg3[3] = intdelay_out_4_5;
  assign betaLUpper_reg3[4] = intdelay_out_5_5;
  assign betaLUpper_reg3[5] = intdelay_out_6_5;
  assign betaLUpper_reg3[6] = intdelay_out_7_5;
  assign betaLUpper_reg3[7] = intdelay_out_8_5;
  assign betaLUpper_reg3[8] = intdelay_out_9_5;
  assign betaLUpper_reg3[9] = intdelay_out_10_5;
  assign betaLUpper_reg3[10] = intdelay_out_11_5;
  assign betaLUpper_reg3[11] = intdelay_out_12_5;
  assign betaLUpper_reg3[12] = intdelay_out_13_5;
  assign betaLUpper_reg3[13] = intdelay_out_14_5;
  assign betaLUpper_reg3[14] = intdelay_out_15_5;
  assign betaLUpper_reg3[15] = intdelay_out_16_5;

  assign betaLOut_8[0] = (betaPass_3 == 1'b0 ? betaLLower_3[0] :
              betaLUpper_reg3[0]);
  assign betaLOut_8[1] = (betaPass_3 == 1'b0 ? betaLLower_3[1] :
              betaLUpper_reg3[1]);
  assign betaLOut_8[2] = (betaPass_3 == 1'b0 ? betaLLower_3[2] :
              betaLUpper_reg3[2]);
  assign betaLOut_8[3] = (betaPass_3 == 1'b0 ? betaLLower_3[3] :
              betaLUpper_reg3[3]);
  assign betaLOut_8[4] = (betaPass_3 == 1'b0 ? betaLLower_3[4] :
              betaLUpper_reg3[4]);
  assign betaLOut_8[5] = (betaPass_3 == 1'b0 ? betaLLower_3[5] :
              betaLUpper_reg3[5]);
  assign betaLOut_8[6] = (betaPass_3 == 1'b0 ? betaLLower_3[6] :
              betaLUpper_reg3[6]);
  assign betaLOut_8[7] = (betaPass_3 == 1'b0 ? betaLLower_3[7] :
              betaLUpper_reg3[7]);
  assign betaLOut_8[8] = (betaPass_3 == 1'b0 ? betaLLower_3[8] :
              betaLUpper_reg3[8]);
  assign betaLOut_8[9] = (betaPass_3 == 1'b0 ? betaLLower_3[9] :
              betaLUpper_reg3[9]);
  assign betaLOut_8[10] = (betaPass_3 == 1'b0 ? betaLLower_3[10] :
              betaLUpper_reg3[10]);
  assign betaLOut_8[11] = (betaPass_3 == 1'b0 ? betaLLower_3[11] :
              betaLUpper_reg3[11]);
  assign betaLOut_8[12] = (betaPass_3 == 1'b0 ? betaLLower_3[12] :
              betaLUpper_reg3[12]);
  assign betaLOut_8[13] = (betaPass_3 == 1'b0 ? betaLLower_3[13] :
              betaLUpper_reg3[13]);
  assign betaLOut_8[14] = (betaPass_3 == 1'b0 ? betaLLower_3[14] :
              betaLUpper_reg3[14]);
  assign betaLOut_8[15] = (betaPass_3 == 1'b0 ? betaLLower_3[15] :
              betaLUpper_reg3[15]);



  assign betaROut_8_0 = betaROut_8[0];

  always @(posedge clk or posedge reset)
    begin : intdelay_1_7_process
      if (reset == 1'b1) begin
        intdelay_1_reg_96[0] <= 1'b0;
        intdelay_1_reg_96[1] <= 1'b0;
        intdelay_1_reg_96[2] <= 1'b0;
        intdelay_1_reg_96[3] <= 1'b0;
        intdelay_1_reg_96[4] <= 1'b0;
        intdelay_1_reg_96[5] <= 1'b0;
        intdelay_1_reg_96[6] <= 1'b0;
        intdelay_1_reg_96[7] <= 1'b0;
        intdelay_1_reg_96[8] <= 1'b0;
        intdelay_1_reg_96[9] <= 1'b0;
        intdelay_1_reg_96[10] <= 1'b0;
        intdelay_1_reg_96[11] <= 1'b0;
        intdelay_1_reg_96[12] <= 1'b0;
        intdelay_1_reg_96[13] <= 1'b0;
        intdelay_1_reg_96[14] <= 1'b0;
        intdelay_1_reg_96[15] <= 1'b0;
        intdelay_1_reg_97[0] <= 1'b0;
        intdelay_1_reg_97[1] <= 1'b0;
        intdelay_1_reg_97[2] <= 1'b0;
        intdelay_1_reg_97[3] <= 1'b0;
        intdelay_1_reg_97[4] <= 1'b0;
        intdelay_1_reg_97[5] <= 1'b0;
        intdelay_1_reg_97[6] <= 1'b0;
        intdelay_1_reg_97[7] <= 1'b0;
        intdelay_1_reg_97[8] <= 1'b0;
        intdelay_1_reg_97[9] <= 1'b0;
        intdelay_1_reg_97[10] <= 1'b0;
        intdelay_1_reg_97[11] <= 1'b0;
        intdelay_1_reg_97[12] <= 1'b0;
        intdelay_1_reg_97[13] <= 1'b0;
        intdelay_1_reg_97[14] <= 1'b0;
        intdelay_1_reg_97[15] <= 1'b0;
        intdelay_1_reg_98[0] <= 1'b0;
        intdelay_1_reg_98[1] <= 1'b0;
        intdelay_1_reg_98[2] <= 1'b0;
        intdelay_1_reg_98[3] <= 1'b0;
        intdelay_1_reg_98[4] <= 1'b0;
        intdelay_1_reg_98[5] <= 1'b0;
        intdelay_1_reg_98[6] <= 1'b0;
        intdelay_1_reg_98[7] <= 1'b0;
        intdelay_1_reg_98[8] <= 1'b0;
        intdelay_1_reg_98[9] <= 1'b0;
        intdelay_1_reg_98[10] <= 1'b0;
        intdelay_1_reg_98[11] <= 1'b0;
        intdelay_1_reg_98[12] <= 1'b0;
        intdelay_1_reg_98[13] <= 1'b0;
        intdelay_1_reg_98[14] <= 1'b0;
        intdelay_1_reg_98[15] <= 1'b0;
        intdelay_1_reg_99[0] <= 1'b0;
        intdelay_1_reg_99[1] <= 1'b0;
        intdelay_1_reg_99[2] <= 1'b0;
        intdelay_1_reg_99[3] <= 1'b0;
        intdelay_1_reg_99[4] <= 1'b0;
        intdelay_1_reg_99[5] <= 1'b0;
        intdelay_1_reg_99[6] <= 1'b0;
        intdelay_1_reg_99[7] <= 1'b0;
        intdelay_1_reg_99[8] <= 1'b0;
        intdelay_1_reg_99[9] <= 1'b0;
        intdelay_1_reg_99[10] <= 1'b0;
        intdelay_1_reg_99[11] <= 1'b0;
        intdelay_1_reg_99[12] <= 1'b0;
        intdelay_1_reg_99[13] <= 1'b0;
        intdelay_1_reg_99[14] <= 1'b0;
        intdelay_1_reg_99[15] <= 1'b0;
        intdelay_1_reg_100[0] <= 1'b0;
        intdelay_1_reg_100[1] <= 1'b0;
        intdelay_1_reg_100[2] <= 1'b0;
        intdelay_1_reg_100[3] <= 1'b0;
        intdelay_1_reg_100[4] <= 1'b0;
        intdelay_1_reg_100[5] <= 1'b0;
        intdelay_1_reg_100[6] <= 1'b0;
        intdelay_1_reg_100[7] <= 1'b0;
        intdelay_1_reg_100[8] <= 1'b0;
        intdelay_1_reg_100[9] <= 1'b0;
        intdelay_1_reg_100[10] <= 1'b0;
        intdelay_1_reg_100[11] <= 1'b0;
        intdelay_1_reg_100[12] <= 1'b0;
        intdelay_1_reg_100[13] <= 1'b0;
        intdelay_1_reg_100[14] <= 1'b0;
        intdelay_1_reg_100[15] <= 1'b0;
        intdelay_1_reg_101[0] <= 1'b0;
        intdelay_1_reg_101[1] <= 1'b0;
        intdelay_1_reg_101[2] <= 1'b0;
        intdelay_1_reg_101[3] <= 1'b0;
        intdelay_1_reg_101[4] <= 1'b0;
        intdelay_1_reg_101[5] <= 1'b0;
        intdelay_1_reg_101[6] <= 1'b0;
        intdelay_1_reg_101[7] <= 1'b0;
        intdelay_1_reg_101[8] <= 1'b0;
        intdelay_1_reg_101[9] <= 1'b0;
        intdelay_1_reg_101[10] <= 1'b0;
        intdelay_1_reg_101[11] <= 1'b0;
        intdelay_1_reg_101[12] <= 1'b0;
        intdelay_1_reg_101[13] <= 1'b0;
        intdelay_1_reg_101[14] <= 1'b0;
        intdelay_1_reg_101[15] <= 1'b0;
        intdelay_1_reg_102[0] <= 1'b0;
        intdelay_1_reg_102[1] <= 1'b0;
        intdelay_1_reg_102[2] <= 1'b0;
        intdelay_1_reg_102[3] <= 1'b0;
        intdelay_1_reg_102[4] <= 1'b0;
        intdelay_1_reg_102[5] <= 1'b0;
        intdelay_1_reg_102[6] <= 1'b0;
        intdelay_1_reg_102[7] <= 1'b0;
        intdelay_1_reg_102[8] <= 1'b0;
        intdelay_1_reg_102[9] <= 1'b0;
        intdelay_1_reg_102[10] <= 1'b0;
        intdelay_1_reg_102[11] <= 1'b0;
        intdelay_1_reg_102[12] <= 1'b0;
        intdelay_1_reg_102[13] <= 1'b0;
        intdelay_1_reg_102[14] <= 1'b0;
        intdelay_1_reg_102[15] <= 1'b0;
        intdelay_1_reg_103[0] <= 1'b0;
        intdelay_1_reg_103[1] <= 1'b0;
        intdelay_1_reg_103[2] <= 1'b0;
        intdelay_1_reg_103[3] <= 1'b0;
        intdelay_1_reg_103[4] <= 1'b0;
        intdelay_1_reg_103[5] <= 1'b0;
        intdelay_1_reg_103[6] <= 1'b0;
        intdelay_1_reg_103[7] <= 1'b0;
        intdelay_1_reg_103[8] <= 1'b0;
        intdelay_1_reg_103[9] <= 1'b0;
        intdelay_1_reg_103[10] <= 1'b0;
        intdelay_1_reg_103[11] <= 1'b0;
        intdelay_1_reg_103[12] <= 1'b0;
        intdelay_1_reg_103[13] <= 1'b0;
        intdelay_1_reg_103[14] <= 1'b0;
        intdelay_1_reg_103[15] <= 1'b0;
        intdelay_1_reg_104[0] <= 1'b0;
        intdelay_1_reg_104[1] <= 1'b0;
        intdelay_1_reg_104[2] <= 1'b0;
        intdelay_1_reg_104[3] <= 1'b0;
        intdelay_1_reg_104[4] <= 1'b0;
        intdelay_1_reg_104[5] <= 1'b0;
        intdelay_1_reg_104[6] <= 1'b0;
        intdelay_1_reg_104[7] <= 1'b0;
        intdelay_1_reg_104[8] <= 1'b0;
        intdelay_1_reg_104[9] <= 1'b0;
        intdelay_1_reg_104[10] <= 1'b0;
        intdelay_1_reg_104[11] <= 1'b0;
        intdelay_1_reg_104[12] <= 1'b0;
        intdelay_1_reg_104[13] <= 1'b0;
        intdelay_1_reg_104[14] <= 1'b0;
        intdelay_1_reg_104[15] <= 1'b0;
        intdelay_1_reg_105[0] <= 1'b0;
        intdelay_1_reg_105[1] <= 1'b0;
        intdelay_1_reg_105[2] <= 1'b0;
        intdelay_1_reg_105[3] <= 1'b0;
        intdelay_1_reg_105[4] <= 1'b0;
        intdelay_1_reg_105[5] <= 1'b0;
        intdelay_1_reg_105[6] <= 1'b0;
        intdelay_1_reg_105[7] <= 1'b0;
        intdelay_1_reg_105[8] <= 1'b0;
        intdelay_1_reg_105[9] <= 1'b0;
        intdelay_1_reg_105[10] <= 1'b0;
        intdelay_1_reg_105[11] <= 1'b0;
        intdelay_1_reg_105[12] <= 1'b0;
        intdelay_1_reg_105[13] <= 1'b0;
        intdelay_1_reg_105[14] <= 1'b0;
        intdelay_1_reg_105[15] <= 1'b0;
        intdelay_1_reg_106[0] <= 1'b0;
        intdelay_1_reg_106[1] <= 1'b0;
        intdelay_1_reg_106[2] <= 1'b0;
        intdelay_1_reg_106[3] <= 1'b0;
        intdelay_1_reg_106[4] <= 1'b0;
        intdelay_1_reg_106[5] <= 1'b0;
        intdelay_1_reg_106[6] <= 1'b0;
        intdelay_1_reg_106[7] <= 1'b0;
        intdelay_1_reg_106[8] <= 1'b0;
        intdelay_1_reg_106[9] <= 1'b0;
        intdelay_1_reg_106[10] <= 1'b0;
        intdelay_1_reg_106[11] <= 1'b0;
        intdelay_1_reg_106[12] <= 1'b0;
        intdelay_1_reg_106[13] <= 1'b0;
        intdelay_1_reg_106[14] <= 1'b0;
        intdelay_1_reg_106[15] <= 1'b0;
        intdelay_1_reg_107[0] <= 1'b0;
        intdelay_1_reg_107[1] <= 1'b0;
        intdelay_1_reg_107[2] <= 1'b0;
        intdelay_1_reg_107[3] <= 1'b0;
        intdelay_1_reg_107[4] <= 1'b0;
        intdelay_1_reg_107[5] <= 1'b0;
        intdelay_1_reg_107[6] <= 1'b0;
        intdelay_1_reg_107[7] <= 1'b0;
        intdelay_1_reg_107[8] <= 1'b0;
        intdelay_1_reg_107[9] <= 1'b0;
        intdelay_1_reg_107[10] <= 1'b0;
        intdelay_1_reg_107[11] <= 1'b0;
        intdelay_1_reg_107[12] <= 1'b0;
        intdelay_1_reg_107[13] <= 1'b0;
        intdelay_1_reg_107[14] <= 1'b0;
        intdelay_1_reg_107[15] <= 1'b0;
        intdelay_1_reg_108[0] <= 1'b0;
        intdelay_1_reg_108[1] <= 1'b0;
        intdelay_1_reg_108[2] <= 1'b0;
        intdelay_1_reg_108[3] <= 1'b0;
        intdelay_1_reg_108[4] <= 1'b0;
        intdelay_1_reg_108[5] <= 1'b0;
        intdelay_1_reg_108[6] <= 1'b0;
        intdelay_1_reg_108[7] <= 1'b0;
        intdelay_1_reg_108[8] <= 1'b0;
        intdelay_1_reg_108[9] <= 1'b0;
        intdelay_1_reg_108[10] <= 1'b0;
        intdelay_1_reg_108[11] <= 1'b0;
        intdelay_1_reg_108[12] <= 1'b0;
        intdelay_1_reg_108[13] <= 1'b0;
        intdelay_1_reg_108[14] <= 1'b0;
        intdelay_1_reg_108[15] <= 1'b0;
        intdelay_1_reg_109[0] <= 1'b0;
        intdelay_1_reg_109[1] <= 1'b0;
        intdelay_1_reg_109[2] <= 1'b0;
        intdelay_1_reg_109[3] <= 1'b0;
        intdelay_1_reg_109[4] <= 1'b0;
        intdelay_1_reg_109[5] <= 1'b0;
        intdelay_1_reg_109[6] <= 1'b0;
        intdelay_1_reg_109[7] <= 1'b0;
        intdelay_1_reg_109[8] <= 1'b0;
        intdelay_1_reg_109[9] <= 1'b0;
        intdelay_1_reg_109[10] <= 1'b0;
        intdelay_1_reg_109[11] <= 1'b0;
        intdelay_1_reg_109[12] <= 1'b0;
        intdelay_1_reg_109[13] <= 1'b0;
        intdelay_1_reg_109[14] <= 1'b0;
        intdelay_1_reg_109[15] <= 1'b0;
        intdelay_1_reg_110[0] <= 1'b0;
        intdelay_1_reg_110[1] <= 1'b0;
        intdelay_1_reg_110[2] <= 1'b0;
        intdelay_1_reg_110[3] <= 1'b0;
        intdelay_1_reg_110[4] <= 1'b0;
        intdelay_1_reg_110[5] <= 1'b0;
        intdelay_1_reg_110[6] <= 1'b0;
        intdelay_1_reg_110[7] <= 1'b0;
        intdelay_1_reg_110[8] <= 1'b0;
        intdelay_1_reg_110[9] <= 1'b0;
        intdelay_1_reg_110[10] <= 1'b0;
        intdelay_1_reg_110[11] <= 1'b0;
        intdelay_1_reg_110[12] <= 1'b0;
        intdelay_1_reg_110[13] <= 1'b0;
        intdelay_1_reg_110[14] <= 1'b0;
        intdelay_1_reg_110[15] <= 1'b0;
        intdelay_1_reg_111[0] <= 1'b0;
        intdelay_1_reg_111[1] <= 1'b0;
        intdelay_1_reg_111[2] <= 1'b0;
        intdelay_1_reg_111[3] <= 1'b0;
        intdelay_1_reg_111[4] <= 1'b0;
        intdelay_1_reg_111[5] <= 1'b0;
        intdelay_1_reg_111[6] <= 1'b0;
        intdelay_1_reg_111[7] <= 1'b0;
        intdelay_1_reg_111[8] <= 1'b0;
        intdelay_1_reg_111[9] <= 1'b0;
        intdelay_1_reg_111[10] <= 1'b0;
        intdelay_1_reg_111[11] <= 1'b0;
        intdelay_1_reg_111[12] <= 1'b0;
        intdelay_1_reg_111[13] <= 1'b0;
        intdelay_1_reg_111[14] <= 1'b0;
        intdelay_1_reg_111[15] <= 1'b0;
      end
      else begin
        if (enb) begin
          intdelay_1_reg_96[0] <= intdelay_1_reg_next_96[0];
          intdelay_1_reg_96[1] <= intdelay_1_reg_next_96[1];
          intdelay_1_reg_96[2] <= intdelay_1_reg_next_96[2];
          intdelay_1_reg_96[3] <= intdelay_1_reg_next_96[3];
          intdelay_1_reg_96[4] <= intdelay_1_reg_next_96[4];
          intdelay_1_reg_96[5] <= intdelay_1_reg_next_96[5];
          intdelay_1_reg_96[6] <= intdelay_1_reg_next_96[6];
          intdelay_1_reg_96[7] <= intdelay_1_reg_next_96[7];
          intdelay_1_reg_96[8] <= intdelay_1_reg_next_96[8];
          intdelay_1_reg_96[9] <= intdelay_1_reg_next_96[9];
          intdelay_1_reg_96[10] <= intdelay_1_reg_next_96[10];
          intdelay_1_reg_96[11] <= intdelay_1_reg_next_96[11];
          intdelay_1_reg_96[12] <= intdelay_1_reg_next_96[12];
          intdelay_1_reg_96[13] <= intdelay_1_reg_next_96[13];
          intdelay_1_reg_96[14] <= intdelay_1_reg_next_96[14];
          intdelay_1_reg_96[15] <= intdelay_1_reg_next_96[15];
          intdelay_1_reg_97[0] <= intdelay_1_reg_next_97[0];
          intdelay_1_reg_97[1] <= intdelay_1_reg_next_97[1];
          intdelay_1_reg_97[2] <= intdelay_1_reg_next_97[2];
          intdelay_1_reg_97[3] <= intdelay_1_reg_next_97[3];
          intdelay_1_reg_97[4] <= intdelay_1_reg_next_97[4];
          intdelay_1_reg_97[5] <= intdelay_1_reg_next_97[5];
          intdelay_1_reg_97[6] <= intdelay_1_reg_next_97[6];
          intdelay_1_reg_97[7] <= intdelay_1_reg_next_97[7];
          intdelay_1_reg_97[8] <= intdelay_1_reg_next_97[8];
          intdelay_1_reg_97[9] <= intdelay_1_reg_next_97[9];
          intdelay_1_reg_97[10] <= intdelay_1_reg_next_97[10];
          intdelay_1_reg_97[11] <= intdelay_1_reg_next_97[11];
          intdelay_1_reg_97[12] <= intdelay_1_reg_next_97[12];
          intdelay_1_reg_97[13] <= intdelay_1_reg_next_97[13];
          intdelay_1_reg_97[14] <= intdelay_1_reg_next_97[14];
          intdelay_1_reg_97[15] <= intdelay_1_reg_next_97[15];
          intdelay_1_reg_98[0] <= intdelay_1_reg_next_98[0];
          intdelay_1_reg_98[1] <= intdelay_1_reg_next_98[1];
          intdelay_1_reg_98[2] <= intdelay_1_reg_next_98[2];
          intdelay_1_reg_98[3] <= intdelay_1_reg_next_98[3];
          intdelay_1_reg_98[4] <= intdelay_1_reg_next_98[4];
          intdelay_1_reg_98[5] <= intdelay_1_reg_next_98[5];
          intdelay_1_reg_98[6] <= intdelay_1_reg_next_98[6];
          intdelay_1_reg_98[7] <= intdelay_1_reg_next_98[7];
          intdelay_1_reg_98[8] <= intdelay_1_reg_next_98[8];
          intdelay_1_reg_98[9] <= intdelay_1_reg_next_98[9];
          intdelay_1_reg_98[10] <= intdelay_1_reg_next_98[10];
          intdelay_1_reg_98[11] <= intdelay_1_reg_next_98[11];
          intdelay_1_reg_98[12] <= intdelay_1_reg_next_98[12];
          intdelay_1_reg_98[13] <= intdelay_1_reg_next_98[13];
          intdelay_1_reg_98[14] <= intdelay_1_reg_next_98[14];
          intdelay_1_reg_98[15] <= intdelay_1_reg_next_98[15];
          intdelay_1_reg_99[0] <= intdelay_1_reg_next_99[0];
          intdelay_1_reg_99[1] <= intdelay_1_reg_next_99[1];
          intdelay_1_reg_99[2] <= intdelay_1_reg_next_99[2];
          intdelay_1_reg_99[3] <= intdelay_1_reg_next_99[3];
          intdelay_1_reg_99[4] <= intdelay_1_reg_next_99[4];
          intdelay_1_reg_99[5] <= intdelay_1_reg_next_99[5];
          intdelay_1_reg_99[6] <= intdelay_1_reg_next_99[6];
          intdelay_1_reg_99[7] <= intdelay_1_reg_next_99[7];
          intdelay_1_reg_99[8] <= intdelay_1_reg_next_99[8];
          intdelay_1_reg_99[9] <= intdelay_1_reg_next_99[9];
          intdelay_1_reg_99[10] <= intdelay_1_reg_next_99[10];
          intdelay_1_reg_99[11] <= intdelay_1_reg_next_99[11];
          intdelay_1_reg_99[12] <= intdelay_1_reg_next_99[12];
          intdelay_1_reg_99[13] <= intdelay_1_reg_next_99[13];
          intdelay_1_reg_99[14] <= intdelay_1_reg_next_99[14];
          intdelay_1_reg_99[15] <= intdelay_1_reg_next_99[15];
          intdelay_1_reg_100[0] <= intdelay_1_reg_next_100[0];
          intdelay_1_reg_100[1] <= intdelay_1_reg_next_100[1];
          intdelay_1_reg_100[2] <= intdelay_1_reg_next_100[2];
          intdelay_1_reg_100[3] <= intdelay_1_reg_next_100[3];
          intdelay_1_reg_100[4] <= intdelay_1_reg_next_100[4];
          intdelay_1_reg_100[5] <= intdelay_1_reg_next_100[5];
          intdelay_1_reg_100[6] <= intdelay_1_reg_next_100[6];
          intdelay_1_reg_100[7] <= intdelay_1_reg_next_100[7];
          intdelay_1_reg_100[8] <= intdelay_1_reg_next_100[8];
          intdelay_1_reg_100[9] <= intdelay_1_reg_next_100[9];
          intdelay_1_reg_100[10] <= intdelay_1_reg_next_100[10];
          intdelay_1_reg_100[11] <= intdelay_1_reg_next_100[11];
          intdelay_1_reg_100[12] <= intdelay_1_reg_next_100[12];
          intdelay_1_reg_100[13] <= intdelay_1_reg_next_100[13];
          intdelay_1_reg_100[14] <= intdelay_1_reg_next_100[14];
          intdelay_1_reg_100[15] <= intdelay_1_reg_next_100[15];
          intdelay_1_reg_101[0] <= intdelay_1_reg_next_101[0];
          intdelay_1_reg_101[1] <= intdelay_1_reg_next_101[1];
          intdelay_1_reg_101[2] <= intdelay_1_reg_next_101[2];
          intdelay_1_reg_101[3] <= intdelay_1_reg_next_101[3];
          intdelay_1_reg_101[4] <= intdelay_1_reg_next_101[4];
          intdelay_1_reg_101[5] <= intdelay_1_reg_next_101[5];
          intdelay_1_reg_101[6] <= intdelay_1_reg_next_101[6];
          intdelay_1_reg_101[7] <= intdelay_1_reg_next_101[7];
          intdelay_1_reg_101[8] <= intdelay_1_reg_next_101[8];
          intdelay_1_reg_101[9] <= intdelay_1_reg_next_101[9];
          intdelay_1_reg_101[10] <= intdelay_1_reg_next_101[10];
          intdelay_1_reg_101[11] <= intdelay_1_reg_next_101[11];
          intdelay_1_reg_101[12] <= intdelay_1_reg_next_101[12];
          intdelay_1_reg_101[13] <= intdelay_1_reg_next_101[13];
          intdelay_1_reg_101[14] <= intdelay_1_reg_next_101[14];
          intdelay_1_reg_101[15] <= intdelay_1_reg_next_101[15];
          intdelay_1_reg_102[0] <= intdelay_1_reg_next_102[0];
          intdelay_1_reg_102[1] <= intdelay_1_reg_next_102[1];
          intdelay_1_reg_102[2] <= intdelay_1_reg_next_102[2];
          intdelay_1_reg_102[3] <= intdelay_1_reg_next_102[3];
          intdelay_1_reg_102[4] <= intdelay_1_reg_next_102[4];
          intdelay_1_reg_102[5] <= intdelay_1_reg_next_102[5];
          intdelay_1_reg_102[6] <= intdelay_1_reg_next_102[6];
          intdelay_1_reg_102[7] <= intdelay_1_reg_next_102[7];
          intdelay_1_reg_102[8] <= intdelay_1_reg_next_102[8];
          intdelay_1_reg_102[9] <= intdelay_1_reg_next_102[9];
          intdelay_1_reg_102[10] <= intdelay_1_reg_next_102[10];
          intdelay_1_reg_102[11] <= intdelay_1_reg_next_102[11];
          intdelay_1_reg_102[12] <= intdelay_1_reg_next_102[12];
          intdelay_1_reg_102[13] <= intdelay_1_reg_next_102[13];
          intdelay_1_reg_102[14] <= intdelay_1_reg_next_102[14];
          intdelay_1_reg_102[15] <= intdelay_1_reg_next_102[15];
          intdelay_1_reg_103[0] <= intdelay_1_reg_next_103[0];
          intdelay_1_reg_103[1] <= intdelay_1_reg_next_103[1];
          intdelay_1_reg_103[2] <= intdelay_1_reg_next_103[2];
          intdelay_1_reg_103[3] <= intdelay_1_reg_next_103[3];
          intdelay_1_reg_103[4] <= intdelay_1_reg_next_103[4];
          intdelay_1_reg_103[5] <= intdelay_1_reg_next_103[5];
          intdelay_1_reg_103[6] <= intdelay_1_reg_next_103[6];
          intdelay_1_reg_103[7] <= intdelay_1_reg_next_103[7];
          intdelay_1_reg_103[8] <= intdelay_1_reg_next_103[8];
          intdelay_1_reg_103[9] <= intdelay_1_reg_next_103[9];
          intdelay_1_reg_103[10] <= intdelay_1_reg_next_103[10];
          intdelay_1_reg_103[11] <= intdelay_1_reg_next_103[11];
          intdelay_1_reg_103[12] <= intdelay_1_reg_next_103[12];
          intdelay_1_reg_103[13] <= intdelay_1_reg_next_103[13];
          intdelay_1_reg_103[14] <= intdelay_1_reg_next_103[14];
          intdelay_1_reg_103[15] <= intdelay_1_reg_next_103[15];
          intdelay_1_reg_104[0] <= intdelay_1_reg_next_104[0];
          intdelay_1_reg_104[1] <= intdelay_1_reg_next_104[1];
          intdelay_1_reg_104[2] <= intdelay_1_reg_next_104[2];
          intdelay_1_reg_104[3] <= intdelay_1_reg_next_104[3];
          intdelay_1_reg_104[4] <= intdelay_1_reg_next_104[4];
          intdelay_1_reg_104[5] <= intdelay_1_reg_next_104[5];
          intdelay_1_reg_104[6] <= intdelay_1_reg_next_104[6];
          intdelay_1_reg_104[7] <= intdelay_1_reg_next_104[7];
          intdelay_1_reg_104[8] <= intdelay_1_reg_next_104[8];
          intdelay_1_reg_104[9] <= intdelay_1_reg_next_104[9];
          intdelay_1_reg_104[10] <= intdelay_1_reg_next_104[10];
          intdelay_1_reg_104[11] <= intdelay_1_reg_next_104[11];
          intdelay_1_reg_104[12] <= intdelay_1_reg_next_104[12];
          intdelay_1_reg_104[13] <= intdelay_1_reg_next_104[13];
          intdelay_1_reg_104[14] <= intdelay_1_reg_next_104[14];
          intdelay_1_reg_104[15] <= intdelay_1_reg_next_104[15];
          intdelay_1_reg_105[0] <= intdelay_1_reg_next_105[0];
          intdelay_1_reg_105[1] <= intdelay_1_reg_next_105[1];
          intdelay_1_reg_105[2] <= intdelay_1_reg_next_105[2];
          intdelay_1_reg_105[3] <= intdelay_1_reg_next_105[3];
          intdelay_1_reg_105[4] <= intdelay_1_reg_next_105[4];
          intdelay_1_reg_105[5] <= intdelay_1_reg_next_105[5];
          intdelay_1_reg_105[6] <= intdelay_1_reg_next_105[6];
          intdelay_1_reg_105[7] <= intdelay_1_reg_next_105[7];
          intdelay_1_reg_105[8] <= intdelay_1_reg_next_105[8];
          intdelay_1_reg_105[9] <= intdelay_1_reg_next_105[9];
          intdelay_1_reg_105[10] <= intdelay_1_reg_next_105[10];
          intdelay_1_reg_105[11] <= intdelay_1_reg_next_105[11];
          intdelay_1_reg_105[12] <= intdelay_1_reg_next_105[12];
          intdelay_1_reg_105[13] <= intdelay_1_reg_next_105[13];
          intdelay_1_reg_105[14] <= intdelay_1_reg_next_105[14];
          intdelay_1_reg_105[15] <= intdelay_1_reg_next_105[15];
          intdelay_1_reg_106[0] <= intdelay_1_reg_next_106[0];
          intdelay_1_reg_106[1] <= intdelay_1_reg_next_106[1];
          intdelay_1_reg_106[2] <= intdelay_1_reg_next_106[2];
          intdelay_1_reg_106[3] <= intdelay_1_reg_next_106[3];
          intdelay_1_reg_106[4] <= intdelay_1_reg_next_106[4];
          intdelay_1_reg_106[5] <= intdelay_1_reg_next_106[5];
          intdelay_1_reg_106[6] <= intdelay_1_reg_next_106[6];
          intdelay_1_reg_106[7] <= intdelay_1_reg_next_106[7];
          intdelay_1_reg_106[8] <= intdelay_1_reg_next_106[8];
          intdelay_1_reg_106[9] <= intdelay_1_reg_next_106[9];
          intdelay_1_reg_106[10] <= intdelay_1_reg_next_106[10];
          intdelay_1_reg_106[11] <= intdelay_1_reg_next_106[11];
          intdelay_1_reg_106[12] <= intdelay_1_reg_next_106[12];
          intdelay_1_reg_106[13] <= intdelay_1_reg_next_106[13];
          intdelay_1_reg_106[14] <= intdelay_1_reg_next_106[14];
          intdelay_1_reg_106[15] <= intdelay_1_reg_next_106[15];
          intdelay_1_reg_107[0] <= intdelay_1_reg_next_107[0];
          intdelay_1_reg_107[1] <= intdelay_1_reg_next_107[1];
          intdelay_1_reg_107[2] <= intdelay_1_reg_next_107[2];
          intdelay_1_reg_107[3] <= intdelay_1_reg_next_107[3];
          intdelay_1_reg_107[4] <= intdelay_1_reg_next_107[4];
          intdelay_1_reg_107[5] <= intdelay_1_reg_next_107[5];
          intdelay_1_reg_107[6] <= intdelay_1_reg_next_107[6];
          intdelay_1_reg_107[7] <= intdelay_1_reg_next_107[7];
          intdelay_1_reg_107[8] <= intdelay_1_reg_next_107[8];
          intdelay_1_reg_107[9] <= intdelay_1_reg_next_107[9];
          intdelay_1_reg_107[10] <= intdelay_1_reg_next_107[10];
          intdelay_1_reg_107[11] <= intdelay_1_reg_next_107[11];
          intdelay_1_reg_107[12] <= intdelay_1_reg_next_107[12];
          intdelay_1_reg_107[13] <= intdelay_1_reg_next_107[13];
          intdelay_1_reg_107[14] <= intdelay_1_reg_next_107[14];
          intdelay_1_reg_107[15] <= intdelay_1_reg_next_107[15];
          intdelay_1_reg_108[0] <= intdelay_1_reg_next_108[0];
          intdelay_1_reg_108[1] <= intdelay_1_reg_next_108[1];
          intdelay_1_reg_108[2] <= intdelay_1_reg_next_108[2];
          intdelay_1_reg_108[3] <= intdelay_1_reg_next_108[3];
          intdelay_1_reg_108[4] <= intdelay_1_reg_next_108[4];
          intdelay_1_reg_108[5] <= intdelay_1_reg_next_108[5];
          intdelay_1_reg_108[6] <= intdelay_1_reg_next_108[6];
          intdelay_1_reg_108[7] <= intdelay_1_reg_next_108[7];
          intdelay_1_reg_108[8] <= intdelay_1_reg_next_108[8];
          intdelay_1_reg_108[9] <= intdelay_1_reg_next_108[9];
          intdelay_1_reg_108[10] <= intdelay_1_reg_next_108[10];
          intdelay_1_reg_108[11] <= intdelay_1_reg_next_108[11];
          intdelay_1_reg_108[12] <= intdelay_1_reg_next_108[12];
          intdelay_1_reg_108[13] <= intdelay_1_reg_next_108[13];
          intdelay_1_reg_108[14] <= intdelay_1_reg_next_108[14];
          intdelay_1_reg_108[15] <= intdelay_1_reg_next_108[15];
          intdelay_1_reg_109[0] <= intdelay_1_reg_next_109[0];
          intdelay_1_reg_109[1] <= intdelay_1_reg_next_109[1];
          intdelay_1_reg_109[2] <= intdelay_1_reg_next_109[2];
          intdelay_1_reg_109[3] <= intdelay_1_reg_next_109[3];
          intdelay_1_reg_109[4] <= intdelay_1_reg_next_109[4];
          intdelay_1_reg_109[5] <= intdelay_1_reg_next_109[5];
          intdelay_1_reg_109[6] <= intdelay_1_reg_next_109[6];
          intdelay_1_reg_109[7] <= intdelay_1_reg_next_109[7];
          intdelay_1_reg_109[8] <= intdelay_1_reg_next_109[8];
          intdelay_1_reg_109[9] <= intdelay_1_reg_next_109[9];
          intdelay_1_reg_109[10] <= intdelay_1_reg_next_109[10];
          intdelay_1_reg_109[11] <= intdelay_1_reg_next_109[11];
          intdelay_1_reg_109[12] <= intdelay_1_reg_next_109[12];
          intdelay_1_reg_109[13] <= intdelay_1_reg_next_109[13];
          intdelay_1_reg_109[14] <= intdelay_1_reg_next_109[14];
          intdelay_1_reg_109[15] <= intdelay_1_reg_next_109[15];
          intdelay_1_reg_110[0] <= intdelay_1_reg_next_110[0];
          intdelay_1_reg_110[1] <= intdelay_1_reg_next_110[1];
          intdelay_1_reg_110[2] <= intdelay_1_reg_next_110[2];
          intdelay_1_reg_110[3] <= intdelay_1_reg_next_110[3];
          intdelay_1_reg_110[4] <= intdelay_1_reg_next_110[4];
          intdelay_1_reg_110[5] <= intdelay_1_reg_next_110[5];
          intdelay_1_reg_110[6] <= intdelay_1_reg_next_110[6];
          intdelay_1_reg_110[7] <= intdelay_1_reg_next_110[7];
          intdelay_1_reg_110[8] <= intdelay_1_reg_next_110[8];
          intdelay_1_reg_110[9] <= intdelay_1_reg_next_110[9];
          intdelay_1_reg_110[10] <= intdelay_1_reg_next_110[10];
          intdelay_1_reg_110[11] <= intdelay_1_reg_next_110[11];
          intdelay_1_reg_110[12] <= intdelay_1_reg_next_110[12];
          intdelay_1_reg_110[13] <= intdelay_1_reg_next_110[13];
          intdelay_1_reg_110[14] <= intdelay_1_reg_next_110[14];
          intdelay_1_reg_110[15] <= intdelay_1_reg_next_110[15];
          intdelay_1_reg_111[0] <= intdelay_1_reg_next_111[0];
          intdelay_1_reg_111[1] <= intdelay_1_reg_next_111[1];
          intdelay_1_reg_111[2] <= intdelay_1_reg_next_111[2];
          intdelay_1_reg_111[3] <= intdelay_1_reg_next_111[3];
          intdelay_1_reg_111[4] <= intdelay_1_reg_next_111[4];
          intdelay_1_reg_111[5] <= intdelay_1_reg_next_111[5];
          intdelay_1_reg_111[6] <= intdelay_1_reg_next_111[6];
          intdelay_1_reg_111[7] <= intdelay_1_reg_next_111[7];
          intdelay_1_reg_111[8] <= intdelay_1_reg_next_111[8];
          intdelay_1_reg_111[9] <= intdelay_1_reg_next_111[9];
          intdelay_1_reg_111[10] <= intdelay_1_reg_next_111[10];
          intdelay_1_reg_111[11] <= intdelay_1_reg_next_111[11];
          intdelay_1_reg_111[12] <= intdelay_1_reg_next_111[12];
          intdelay_1_reg_111[13] <= intdelay_1_reg_next_111[13];
          intdelay_1_reg_111[14] <= intdelay_1_reg_next_111[14];
          intdelay_1_reg_111[15] <= intdelay_1_reg_next_111[15];
        end
      end
    end

  assign intdelay_1_reg_next_96[0] = betaROut_8_0;
  assign intdelay_1_reg_next_96[1] = intdelay_1_reg_96[0];
  assign intdelay_1_reg_next_96[2] = intdelay_1_reg_96[1];
  assign intdelay_1_reg_next_96[3] = intdelay_1_reg_96[2];
  assign intdelay_1_reg_next_96[4] = intdelay_1_reg_96[3];
  assign intdelay_1_reg_next_96[5] = intdelay_1_reg_96[4];
  assign intdelay_1_reg_next_96[6] = intdelay_1_reg_96[5];
  assign intdelay_1_reg_next_96[7] = intdelay_1_reg_96[6];
  assign intdelay_1_reg_next_96[8] = intdelay_1_reg_96[7];
  assign intdelay_1_reg_next_96[9] = intdelay_1_reg_96[8];
  assign intdelay_1_reg_next_96[10] = intdelay_1_reg_96[9];
  assign intdelay_1_reg_next_96[11] = intdelay_1_reg_96[10];
  assign intdelay_1_reg_next_96[12] = intdelay_1_reg_96[11];
  assign intdelay_1_reg_next_96[13] = intdelay_1_reg_96[12];
  assign intdelay_1_reg_next_96[14] = intdelay_1_reg_96[13];
  assign intdelay_1_reg_next_96[15] = intdelay_1_reg_96[14];
  assign intdelay_out_1_6 = intdelay_1_reg_96[15];
  assign intdelay_1_reg_next_97[0] = betaROut_8_1;
  assign intdelay_1_reg_next_97[1] = intdelay_1_reg_97[0];
  assign intdelay_1_reg_next_97[2] = intdelay_1_reg_97[1];
  assign intdelay_1_reg_next_97[3] = intdelay_1_reg_97[2];
  assign intdelay_1_reg_next_97[4] = intdelay_1_reg_97[3];
  assign intdelay_1_reg_next_97[5] = intdelay_1_reg_97[4];
  assign intdelay_1_reg_next_97[6] = intdelay_1_reg_97[5];
  assign intdelay_1_reg_next_97[7] = intdelay_1_reg_97[6];
  assign intdelay_1_reg_next_97[8] = intdelay_1_reg_97[7];
  assign intdelay_1_reg_next_97[9] = intdelay_1_reg_97[8];
  assign intdelay_1_reg_next_97[10] = intdelay_1_reg_97[9];
  assign intdelay_1_reg_next_97[11] = intdelay_1_reg_97[10];
  assign intdelay_1_reg_next_97[12] = intdelay_1_reg_97[11];
  assign intdelay_1_reg_next_97[13] = intdelay_1_reg_97[12];
  assign intdelay_1_reg_next_97[14] = intdelay_1_reg_97[13];
  assign intdelay_1_reg_next_97[15] = intdelay_1_reg_97[14];
  assign intdelay_out_2_6 = intdelay_1_reg_97[15];
  assign intdelay_1_reg_next_98[0] = betaROut_8_2;
  assign intdelay_1_reg_next_98[1] = intdelay_1_reg_98[0];
  assign intdelay_1_reg_next_98[2] = intdelay_1_reg_98[1];
  assign intdelay_1_reg_next_98[3] = intdelay_1_reg_98[2];
  assign intdelay_1_reg_next_98[4] = intdelay_1_reg_98[3];
  assign intdelay_1_reg_next_98[5] = intdelay_1_reg_98[4];
  assign intdelay_1_reg_next_98[6] = intdelay_1_reg_98[5];
  assign intdelay_1_reg_next_98[7] = intdelay_1_reg_98[6];
  assign intdelay_1_reg_next_98[8] = intdelay_1_reg_98[7];
  assign intdelay_1_reg_next_98[9] = intdelay_1_reg_98[8];
  assign intdelay_1_reg_next_98[10] = intdelay_1_reg_98[9];
  assign intdelay_1_reg_next_98[11] = intdelay_1_reg_98[10];
  assign intdelay_1_reg_next_98[12] = intdelay_1_reg_98[11];
  assign intdelay_1_reg_next_98[13] = intdelay_1_reg_98[12];
  assign intdelay_1_reg_next_98[14] = intdelay_1_reg_98[13];
  assign intdelay_1_reg_next_98[15] = intdelay_1_reg_98[14];
  assign intdelay_out_3_6 = intdelay_1_reg_98[15];
  assign intdelay_1_reg_next_99[0] = betaROut_8_3;
  assign intdelay_1_reg_next_99[1] = intdelay_1_reg_99[0];
  assign intdelay_1_reg_next_99[2] = intdelay_1_reg_99[1];
  assign intdelay_1_reg_next_99[3] = intdelay_1_reg_99[2];
  assign intdelay_1_reg_next_99[4] = intdelay_1_reg_99[3];
  assign intdelay_1_reg_next_99[5] = intdelay_1_reg_99[4];
  assign intdelay_1_reg_next_99[6] = intdelay_1_reg_99[5];
  assign intdelay_1_reg_next_99[7] = intdelay_1_reg_99[6];
  assign intdelay_1_reg_next_99[8] = intdelay_1_reg_99[7];
  assign intdelay_1_reg_next_99[9] = intdelay_1_reg_99[8];
  assign intdelay_1_reg_next_99[10] = intdelay_1_reg_99[9];
  assign intdelay_1_reg_next_99[11] = intdelay_1_reg_99[10];
  assign intdelay_1_reg_next_99[12] = intdelay_1_reg_99[11];
  assign intdelay_1_reg_next_99[13] = intdelay_1_reg_99[12];
  assign intdelay_1_reg_next_99[14] = intdelay_1_reg_99[13];
  assign intdelay_1_reg_next_99[15] = intdelay_1_reg_99[14];
  assign intdelay_out_4_6 = intdelay_1_reg_99[15];
  assign intdelay_1_reg_next_100[0] = betaROut_8_4;
  assign intdelay_1_reg_next_100[1] = intdelay_1_reg_100[0];
  assign intdelay_1_reg_next_100[2] = intdelay_1_reg_100[1];
  assign intdelay_1_reg_next_100[3] = intdelay_1_reg_100[2];
  assign intdelay_1_reg_next_100[4] = intdelay_1_reg_100[3];
  assign intdelay_1_reg_next_100[5] = intdelay_1_reg_100[4];
  assign intdelay_1_reg_next_100[6] = intdelay_1_reg_100[5];
  assign intdelay_1_reg_next_100[7] = intdelay_1_reg_100[6];
  assign intdelay_1_reg_next_100[8] = intdelay_1_reg_100[7];
  assign intdelay_1_reg_next_100[9] = intdelay_1_reg_100[8];
  assign intdelay_1_reg_next_100[10] = intdelay_1_reg_100[9];
  assign intdelay_1_reg_next_100[11] = intdelay_1_reg_100[10];
  assign intdelay_1_reg_next_100[12] = intdelay_1_reg_100[11];
  assign intdelay_1_reg_next_100[13] = intdelay_1_reg_100[12];
  assign intdelay_1_reg_next_100[14] = intdelay_1_reg_100[13];
  assign intdelay_1_reg_next_100[15] = intdelay_1_reg_100[14];
  assign intdelay_out_5_6 = intdelay_1_reg_100[15];
  assign intdelay_1_reg_next_101[0] = betaROut_8_5;
  assign intdelay_1_reg_next_101[1] = intdelay_1_reg_101[0];
  assign intdelay_1_reg_next_101[2] = intdelay_1_reg_101[1];
  assign intdelay_1_reg_next_101[3] = intdelay_1_reg_101[2];
  assign intdelay_1_reg_next_101[4] = intdelay_1_reg_101[3];
  assign intdelay_1_reg_next_101[5] = intdelay_1_reg_101[4];
  assign intdelay_1_reg_next_101[6] = intdelay_1_reg_101[5];
  assign intdelay_1_reg_next_101[7] = intdelay_1_reg_101[6];
  assign intdelay_1_reg_next_101[8] = intdelay_1_reg_101[7];
  assign intdelay_1_reg_next_101[9] = intdelay_1_reg_101[8];
  assign intdelay_1_reg_next_101[10] = intdelay_1_reg_101[9];
  assign intdelay_1_reg_next_101[11] = intdelay_1_reg_101[10];
  assign intdelay_1_reg_next_101[12] = intdelay_1_reg_101[11];
  assign intdelay_1_reg_next_101[13] = intdelay_1_reg_101[12];
  assign intdelay_1_reg_next_101[14] = intdelay_1_reg_101[13];
  assign intdelay_1_reg_next_101[15] = intdelay_1_reg_101[14];
  assign intdelay_out_6_6 = intdelay_1_reg_101[15];
  assign intdelay_1_reg_next_102[0] = betaROut_8_6;
  assign intdelay_1_reg_next_102[1] = intdelay_1_reg_102[0];
  assign intdelay_1_reg_next_102[2] = intdelay_1_reg_102[1];
  assign intdelay_1_reg_next_102[3] = intdelay_1_reg_102[2];
  assign intdelay_1_reg_next_102[4] = intdelay_1_reg_102[3];
  assign intdelay_1_reg_next_102[5] = intdelay_1_reg_102[4];
  assign intdelay_1_reg_next_102[6] = intdelay_1_reg_102[5];
  assign intdelay_1_reg_next_102[7] = intdelay_1_reg_102[6];
  assign intdelay_1_reg_next_102[8] = intdelay_1_reg_102[7];
  assign intdelay_1_reg_next_102[9] = intdelay_1_reg_102[8];
  assign intdelay_1_reg_next_102[10] = intdelay_1_reg_102[9];
  assign intdelay_1_reg_next_102[11] = intdelay_1_reg_102[10];
  assign intdelay_1_reg_next_102[12] = intdelay_1_reg_102[11];
  assign intdelay_1_reg_next_102[13] = intdelay_1_reg_102[12];
  assign intdelay_1_reg_next_102[14] = intdelay_1_reg_102[13];
  assign intdelay_1_reg_next_102[15] = intdelay_1_reg_102[14];
  assign intdelay_out_7_6 = intdelay_1_reg_102[15];
  assign intdelay_1_reg_next_103[0] = betaROut_8_7;
  assign intdelay_1_reg_next_103[1] = intdelay_1_reg_103[0];
  assign intdelay_1_reg_next_103[2] = intdelay_1_reg_103[1];
  assign intdelay_1_reg_next_103[3] = intdelay_1_reg_103[2];
  assign intdelay_1_reg_next_103[4] = intdelay_1_reg_103[3];
  assign intdelay_1_reg_next_103[5] = intdelay_1_reg_103[4];
  assign intdelay_1_reg_next_103[6] = intdelay_1_reg_103[5];
  assign intdelay_1_reg_next_103[7] = intdelay_1_reg_103[6];
  assign intdelay_1_reg_next_103[8] = intdelay_1_reg_103[7];
  assign intdelay_1_reg_next_103[9] = intdelay_1_reg_103[8];
  assign intdelay_1_reg_next_103[10] = intdelay_1_reg_103[9];
  assign intdelay_1_reg_next_103[11] = intdelay_1_reg_103[10];
  assign intdelay_1_reg_next_103[12] = intdelay_1_reg_103[11];
  assign intdelay_1_reg_next_103[13] = intdelay_1_reg_103[12];
  assign intdelay_1_reg_next_103[14] = intdelay_1_reg_103[13];
  assign intdelay_1_reg_next_103[15] = intdelay_1_reg_103[14];
  assign intdelay_out_8_6 = intdelay_1_reg_103[15];
  assign intdelay_1_reg_next_104[0] = betaROut_8_8;
  assign intdelay_1_reg_next_104[1] = intdelay_1_reg_104[0];
  assign intdelay_1_reg_next_104[2] = intdelay_1_reg_104[1];
  assign intdelay_1_reg_next_104[3] = intdelay_1_reg_104[2];
  assign intdelay_1_reg_next_104[4] = intdelay_1_reg_104[3];
  assign intdelay_1_reg_next_104[5] = intdelay_1_reg_104[4];
  assign intdelay_1_reg_next_104[6] = intdelay_1_reg_104[5];
  assign intdelay_1_reg_next_104[7] = intdelay_1_reg_104[6];
  assign intdelay_1_reg_next_104[8] = intdelay_1_reg_104[7];
  assign intdelay_1_reg_next_104[9] = intdelay_1_reg_104[8];
  assign intdelay_1_reg_next_104[10] = intdelay_1_reg_104[9];
  assign intdelay_1_reg_next_104[11] = intdelay_1_reg_104[10];
  assign intdelay_1_reg_next_104[12] = intdelay_1_reg_104[11];
  assign intdelay_1_reg_next_104[13] = intdelay_1_reg_104[12];
  assign intdelay_1_reg_next_104[14] = intdelay_1_reg_104[13];
  assign intdelay_1_reg_next_104[15] = intdelay_1_reg_104[14];
  assign intdelay_out_9_6 = intdelay_1_reg_104[15];
  assign intdelay_1_reg_next_105[0] = betaROut_8_9;
  assign intdelay_1_reg_next_105[1] = intdelay_1_reg_105[0];
  assign intdelay_1_reg_next_105[2] = intdelay_1_reg_105[1];
  assign intdelay_1_reg_next_105[3] = intdelay_1_reg_105[2];
  assign intdelay_1_reg_next_105[4] = intdelay_1_reg_105[3];
  assign intdelay_1_reg_next_105[5] = intdelay_1_reg_105[4];
  assign intdelay_1_reg_next_105[6] = intdelay_1_reg_105[5];
  assign intdelay_1_reg_next_105[7] = intdelay_1_reg_105[6];
  assign intdelay_1_reg_next_105[8] = intdelay_1_reg_105[7];
  assign intdelay_1_reg_next_105[9] = intdelay_1_reg_105[8];
  assign intdelay_1_reg_next_105[10] = intdelay_1_reg_105[9];
  assign intdelay_1_reg_next_105[11] = intdelay_1_reg_105[10];
  assign intdelay_1_reg_next_105[12] = intdelay_1_reg_105[11];
  assign intdelay_1_reg_next_105[13] = intdelay_1_reg_105[12];
  assign intdelay_1_reg_next_105[14] = intdelay_1_reg_105[13];
  assign intdelay_1_reg_next_105[15] = intdelay_1_reg_105[14];
  assign intdelay_out_10_6 = intdelay_1_reg_105[15];
  assign intdelay_1_reg_next_106[0] = betaROut_8_10;
  assign intdelay_1_reg_next_106[1] = intdelay_1_reg_106[0];
  assign intdelay_1_reg_next_106[2] = intdelay_1_reg_106[1];
  assign intdelay_1_reg_next_106[3] = intdelay_1_reg_106[2];
  assign intdelay_1_reg_next_106[4] = intdelay_1_reg_106[3];
  assign intdelay_1_reg_next_106[5] = intdelay_1_reg_106[4];
  assign intdelay_1_reg_next_106[6] = intdelay_1_reg_106[5];
  assign intdelay_1_reg_next_106[7] = intdelay_1_reg_106[6];
  assign intdelay_1_reg_next_106[8] = intdelay_1_reg_106[7];
  assign intdelay_1_reg_next_106[9] = intdelay_1_reg_106[8];
  assign intdelay_1_reg_next_106[10] = intdelay_1_reg_106[9];
  assign intdelay_1_reg_next_106[11] = intdelay_1_reg_106[10];
  assign intdelay_1_reg_next_106[12] = intdelay_1_reg_106[11];
  assign intdelay_1_reg_next_106[13] = intdelay_1_reg_106[12];
  assign intdelay_1_reg_next_106[14] = intdelay_1_reg_106[13];
  assign intdelay_1_reg_next_106[15] = intdelay_1_reg_106[14];
  assign intdelay_out_11_6 = intdelay_1_reg_106[15];
  assign intdelay_1_reg_next_107[0] = betaROut_8_11;
  assign intdelay_1_reg_next_107[1] = intdelay_1_reg_107[0];
  assign intdelay_1_reg_next_107[2] = intdelay_1_reg_107[1];
  assign intdelay_1_reg_next_107[3] = intdelay_1_reg_107[2];
  assign intdelay_1_reg_next_107[4] = intdelay_1_reg_107[3];
  assign intdelay_1_reg_next_107[5] = intdelay_1_reg_107[4];
  assign intdelay_1_reg_next_107[6] = intdelay_1_reg_107[5];
  assign intdelay_1_reg_next_107[7] = intdelay_1_reg_107[6];
  assign intdelay_1_reg_next_107[8] = intdelay_1_reg_107[7];
  assign intdelay_1_reg_next_107[9] = intdelay_1_reg_107[8];
  assign intdelay_1_reg_next_107[10] = intdelay_1_reg_107[9];
  assign intdelay_1_reg_next_107[11] = intdelay_1_reg_107[10];
  assign intdelay_1_reg_next_107[12] = intdelay_1_reg_107[11];
  assign intdelay_1_reg_next_107[13] = intdelay_1_reg_107[12];
  assign intdelay_1_reg_next_107[14] = intdelay_1_reg_107[13];
  assign intdelay_1_reg_next_107[15] = intdelay_1_reg_107[14];
  assign intdelay_out_12_6 = intdelay_1_reg_107[15];
  assign intdelay_1_reg_next_108[0] = betaROut_8_12;
  assign intdelay_1_reg_next_108[1] = intdelay_1_reg_108[0];
  assign intdelay_1_reg_next_108[2] = intdelay_1_reg_108[1];
  assign intdelay_1_reg_next_108[3] = intdelay_1_reg_108[2];
  assign intdelay_1_reg_next_108[4] = intdelay_1_reg_108[3];
  assign intdelay_1_reg_next_108[5] = intdelay_1_reg_108[4];
  assign intdelay_1_reg_next_108[6] = intdelay_1_reg_108[5];
  assign intdelay_1_reg_next_108[7] = intdelay_1_reg_108[6];
  assign intdelay_1_reg_next_108[8] = intdelay_1_reg_108[7];
  assign intdelay_1_reg_next_108[9] = intdelay_1_reg_108[8];
  assign intdelay_1_reg_next_108[10] = intdelay_1_reg_108[9];
  assign intdelay_1_reg_next_108[11] = intdelay_1_reg_108[10];
  assign intdelay_1_reg_next_108[12] = intdelay_1_reg_108[11];
  assign intdelay_1_reg_next_108[13] = intdelay_1_reg_108[12];
  assign intdelay_1_reg_next_108[14] = intdelay_1_reg_108[13];
  assign intdelay_1_reg_next_108[15] = intdelay_1_reg_108[14];
  assign intdelay_out_13_6 = intdelay_1_reg_108[15];
  assign intdelay_1_reg_next_109[0] = betaROut_8_13;
  assign intdelay_1_reg_next_109[1] = intdelay_1_reg_109[0];
  assign intdelay_1_reg_next_109[2] = intdelay_1_reg_109[1];
  assign intdelay_1_reg_next_109[3] = intdelay_1_reg_109[2];
  assign intdelay_1_reg_next_109[4] = intdelay_1_reg_109[3];
  assign intdelay_1_reg_next_109[5] = intdelay_1_reg_109[4];
  assign intdelay_1_reg_next_109[6] = intdelay_1_reg_109[5];
  assign intdelay_1_reg_next_109[7] = intdelay_1_reg_109[6];
  assign intdelay_1_reg_next_109[8] = intdelay_1_reg_109[7];
  assign intdelay_1_reg_next_109[9] = intdelay_1_reg_109[8];
  assign intdelay_1_reg_next_109[10] = intdelay_1_reg_109[9];
  assign intdelay_1_reg_next_109[11] = intdelay_1_reg_109[10];
  assign intdelay_1_reg_next_109[12] = intdelay_1_reg_109[11];
  assign intdelay_1_reg_next_109[13] = intdelay_1_reg_109[12];
  assign intdelay_1_reg_next_109[14] = intdelay_1_reg_109[13];
  assign intdelay_1_reg_next_109[15] = intdelay_1_reg_109[14];
  assign intdelay_out_14_6 = intdelay_1_reg_109[15];
  assign intdelay_1_reg_next_110[0] = betaROut_8_14;
  assign intdelay_1_reg_next_110[1] = intdelay_1_reg_110[0];
  assign intdelay_1_reg_next_110[2] = intdelay_1_reg_110[1];
  assign intdelay_1_reg_next_110[3] = intdelay_1_reg_110[2];
  assign intdelay_1_reg_next_110[4] = intdelay_1_reg_110[3];
  assign intdelay_1_reg_next_110[5] = intdelay_1_reg_110[4];
  assign intdelay_1_reg_next_110[6] = intdelay_1_reg_110[5];
  assign intdelay_1_reg_next_110[7] = intdelay_1_reg_110[6];
  assign intdelay_1_reg_next_110[8] = intdelay_1_reg_110[7];
  assign intdelay_1_reg_next_110[9] = intdelay_1_reg_110[8];
  assign intdelay_1_reg_next_110[10] = intdelay_1_reg_110[9];
  assign intdelay_1_reg_next_110[11] = intdelay_1_reg_110[10];
  assign intdelay_1_reg_next_110[12] = intdelay_1_reg_110[11];
  assign intdelay_1_reg_next_110[13] = intdelay_1_reg_110[12];
  assign intdelay_1_reg_next_110[14] = intdelay_1_reg_110[13];
  assign intdelay_1_reg_next_110[15] = intdelay_1_reg_110[14];
  assign intdelay_out_15_6 = intdelay_1_reg_110[15];
  assign intdelay_1_reg_next_111[0] = betaROut_8_15;
  assign intdelay_1_reg_next_111[1] = intdelay_1_reg_111[0];
  assign intdelay_1_reg_next_111[2] = intdelay_1_reg_111[1];
  assign intdelay_1_reg_next_111[3] = intdelay_1_reg_111[2];
  assign intdelay_1_reg_next_111[4] = intdelay_1_reg_111[3];
  assign intdelay_1_reg_next_111[5] = intdelay_1_reg_111[4];
  assign intdelay_1_reg_next_111[6] = intdelay_1_reg_111[5];
  assign intdelay_1_reg_next_111[7] = intdelay_1_reg_111[6];
  assign intdelay_1_reg_next_111[8] = intdelay_1_reg_111[7];
  assign intdelay_1_reg_next_111[9] = intdelay_1_reg_111[8];
  assign intdelay_1_reg_next_111[10] = intdelay_1_reg_111[9];
  assign intdelay_1_reg_next_111[11] = intdelay_1_reg_111[10];
  assign intdelay_1_reg_next_111[12] = intdelay_1_reg_111[11];
  assign intdelay_1_reg_next_111[13] = intdelay_1_reg_111[12];
  assign intdelay_1_reg_next_111[14] = intdelay_1_reg_111[13];
  assign intdelay_1_reg_next_111[15] = intdelay_1_reg_111[14];
  assign intdelay_out_16_6 = intdelay_1_reg_111[15];



  assign betaROut_8_1 = betaROut_8[1];

  assign betaROut_8_2 = betaROut_8[2];

  assign betaROut_8_3 = betaROut_8[3];

  assign betaROut_8_4 = betaROut_8[4];

  assign betaROut_8_5 = betaROut_8[5];

  assign betaROut_8_6 = betaROut_8[6];

  assign betaROut_8_7 = betaROut_8[7];

  assign betaROut_8_8 = betaROut_8[8];

  assign betaROut_8_9 = betaROut_8[9];

  assign betaROut_8_10 = betaROut_8[10];

  assign betaROut_8_11 = betaROut_8[11];

  assign betaROut_8_12 = betaROut_8[12];

  assign betaROut_8_13 = betaROut_8[13];

  assign betaROut_8_14 = betaROut_8[14];

  assign betaROut_8_15 = betaROut_8[15];

  assign betaXor_8[0] = betaLOut_8[0] ^ betaROut_8[0];
  assign betaXor_8[1] = betaLOut_8[1] ^ betaROut_8[1];
  assign betaXor_8[2] = betaLOut_8[2] ^ betaROut_8[2];
  assign betaXor_8[3] = betaLOut_8[3] ^ betaROut_8[3];
  assign betaXor_8[4] = betaLOut_8[4] ^ betaROut_8[4];
  assign betaXor_8[5] = betaLOut_8[5] ^ betaROut_8[5];
  assign betaXor_8[6] = betaLOut_8[6] ^ betaROut_8[6];
  assign betaXor_8[7] = betaLOut_8[7] ^ betaROut_8[7];
  assign betaXor_8[8] = betaLOut_8[8] ^ betaROut_8[8];
  assign betaXor_8[9] = betaLOut_8[9] ^ betaROut_8[9];
  assign betaXor_8[10] = betaLOut_8[10] ^ betaROut_8[10];
  assign betaXor_8[11] = betaLOut_8[11] ^ betaROut_8[11];
  assign betaXor_8[12] = betaLOut_8[12] ^ betaROut_8[12];
  assign betaXor_8[13] = betaLOut_8[13] ^ betaROut_8[13];
  assign betaXor_8[14] = betaLOut_8[14] ^ betaROut_8[14];
  assign betaXor_8[15] = betaLOut_8[15] ^ betaROut_8[15];



  assign betaRIn_reg_4[0] = intdelay_out_1_6;
  assign betaRIn_reg_4[1] = intdelay_out_2_6;
  assign betaRIn_reg_4[2] = intdelay_out_3_6;
  assign betaRIn_reg_4[3] = intdelay_out_4_6;
  assign betaRIn_reg_4[4] = intdelay_out_5_6;
  assign betaRIn_reg_4[5] = intdelay_out_6_6;
  assign betaRIn_reg_4[6] = intdelay_out_7_6;
  assign betaRIn_reg_4[7] = intdelay_out_8_6;
  assign betaRIn_reg_4[8] = intdelay_out_9_6;
  assign betaRIn_reg_4[9] = intdelay_out_10_6;
  assign betaRIn_reg_4[10] = intdelay_out_11_6;
  assign betaRIn_reg_4[11] = intdelay_out_12_6;
  assign betaRIn_reg_4[12] = intdelay_out_13_6;
  assign betaRIn_reg_4[13] = intdelay_out_14_6;
  assign betaRIn_reg_4[14] = intdelay_out_15_6;
  assign betaRIn_reg_4[15] = intdelay_out_16_6;

  assign betaROut_9[0] = (betaPass_4 == 1'b0 ? betaXor_8[0] :
              betaRIn_reg_4[0]);
  assign betaROut_9[1] = (betaPass_4 == 1'b0 ? betaXor_8[1] :
              betaRIn_reg_4[1]);
  assign betaROut_9[2] = (betaPass_4 == 1'b0 ? betaXor_8[2] :
              betaRIn_reg_4[2]);
  assign betaROut_9[3] = (betaPass_4 == 1'b0 ? betaXor_8[3] :
              betaRIn_reg_4[3]);
  assign betaROut_9[4] = (betaPass_4 == 1'b0 ? betaXor_8[4] :
              betaRIn_reg_4[4]);
  assign betaROut_9[5] = (betaPass_4 == 1'b0 ? betaXor_8[5] :
              betaRIn_reg_4[5]);
  assign betaROut_9[6] = (betaPass_4 == 1'b0 ? betaXor_8[6] :
              betaRIn_reg_4[6]);
  assign betaROut_9[7] = (betaPass_4 == 1'b0 ? betaXor_8[7] :
              betaRIn_reg_4[7]);
  assign betaROut_9[8] = (betaPass_4 == 1'b0 ? betaXor_8[8] :
              betaRIn_reg_4[8]);
  assign betaROut_9[9] = (betaPass_4 == 1'b0 ? betaXor_8[9] :
              betaRIn_reg_4[9]);
  assign betaROut_9[10] = (betaPass_4 == 1'b0 ? betaXor_8[10] :
              betaRIn_reg_4[10]);
  assign betaROut_9[11] = (betaPass_4 == 1'b0 ? betaXor_8[11] :
              betaRIn_reg_4[11]);
  assign betaROut_9[12] = (betaPass_4 == 1'b0 ? betaXor_8[12] :
              betaRIn_reg_4[12]);
  assign betaROut_9[13] = (betaPass_4 == 1'b0 ? betaXor_8[13] :
              betaRIn_reg_4[13]);
  assign betaROut_9[14] = (betaPass_4 == 1'b0 ? betaXor_8[14] :
              betaRIn_reg_4[14]);
  assign betaROut_9[15] = (betaPass_4 == 1'b0 ? betaXor_8[15] :
              betaRIn_reg_4[15]);



  assign betaSzMatch_9[0] = betaROut_9[0];
  assign betaSzMatch_9[1] = betaROut_9[1];
  assign betaSzMatch_9[2] = betaROut_9[2];
  assign betaSzMatch_9[3] = betaROut_9[3];
  assign betaSzMatch_9[4] = betaROut_9[4];
  assign betaSzMatch_9[5] = betaROut_9[5];
  assign betaSzMatch_9[6] = betaROut_9[6];
  assign betaSzMatch_9[7] = betaROut_9[7];
  assign betaSzMatch_9[8] = betaROut_9[8];
  assign betaSzMatch_9[9] = betaROut_9[9];
  assign betaSzMatch_9[10] = betaROut_9[10];
  assign betaSzMatch_9[11] = betaROut_9[11];
  assign betaSzMatch_9[12] = betaROut_9[12];
  assign betaSzMatch_9[13] = betaROut_9[13];
  assign betaSzMatch_9[14] = betaROut_9[14];
  assign betaSzMatch_9[15] = betaROut_9[15];

  assign betaOut[0] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[0] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[0] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[0] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[0] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[0] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[0] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[0] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[0] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[0] :
              betaSzMatch_9[0])))))))));
  assign betaOut[1] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[1] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[1] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[1] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[1] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[1] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[1] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[1] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[1] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[1] :
              betaSzMatch_9[1])))))))));
  assign betaOut[2] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[2] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[2] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[2] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[2] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[2] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[2] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[2] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[2] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[2] :
              betaSzMatch_9[2])))))))));
  assign betaOut[3] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[3] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[3] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[3] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[3] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[3] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[3] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[3] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[3] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[3] :
              betaSzMatch_9[3])))))))));
  assign betaOut[4] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[4] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[4] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[4] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[4] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[4] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[4] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[4] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[4] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[4] :
              betaSzMatch_9[4])))))))));
  assign betaOut[5] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[5] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[5] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[5] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[5] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[5] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[5] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[5] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[5] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[5] :
              betaSzMatch_9[5])))))))));
  assign betaOut[6] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[6] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[6] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[6] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[6] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[6] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[6] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[6] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[6] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[6] :
              betaSzMatch_9[6])))))))));
  assign betaOut[7] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[7] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[7] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[7] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[7] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[7] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[7] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[7] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[7] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[7] :
              betaSzMatch_9[7])))))))));
  assign betaOut[8] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[8] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[8] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[8] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[8] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[8] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[8] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[8] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[8] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[8] :
              betaSzMatch_9[8])))))))));
  assign betaOut[9] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[9] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[9] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[9] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[9] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[9] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[9] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[9] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[9] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[9] :
              betaSzMatch_9[9])))))))));
  assign betaOut[10] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[10] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[10] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[10] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[10] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[10] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[10] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[10] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[10] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[10] :
              betaSzMatch_9[10])))))))));
  assign betaOut[11] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[11] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[11] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[11] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[11] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[11] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[11] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[11] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[11] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[11] :
              betaSzMatch_9[11])))))))));
  assign betaOut[12] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[12] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[12] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[12] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[12] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[12] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[12] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[12] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[12] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[12] :
              betaSzMatch_9[12])))))))));
  assign betaOut[13] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[13] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[13] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[13] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[13] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[13] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[13] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[13] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[13] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[13] :
              betaSzMatch_9[13])))))))));
  assign betaOut[14] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[14] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[14] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[14] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[14] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[14] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[14] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[14] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[14] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[14] :
              betaSzMatch_9[14])))))))));
  assign betaOut[15] = (rdStage_reg == 4'b0000 ? betaSzMatch_0[15] :
              (rdStage_reg == 4'b0001 ? betaSizeMatch_1[15] :
              (rdStage_reg == 4'b0010 ? betaSizeMatch_2[15] :
              (rdStage_reg == 4'b0011 ? betaSizeMatch_3[15] :
              (rdStage_reg == 4'b0100 ? betaSizeMatch_4[15] :
              (rdStage_reg == 4'b0101 ? betaSizeMatch_5[15] :
              (rdStage_reg == 4'b0110 ? betaSizeMatch_6[15] :
              (rdStage_reg == 4'b0111 ? betaSizeMatch_7[15] :
              (rdStage_reg == 4'b1000 ? betaSizeMatch_8[15] :
              betaSzMatch_9[15])))))))));



  assign betaOut_0 = betaOut[0];

  assign betaOut_1 = betaOut[1];

  assign betaOut_2 = betaOut[2];

  assign betaOut_3 = betaOut[3];

  assign betaOut_4 = betaOut[4];

  assign betaOut_5 = betaOut[5];

  assign betaOut_6 = betaOut[6];

  assign betaOut_7 = betaOut[7];

  assign betaOut_8 = betaOut[8];

  assign betaOut_9 = betaOut[9];

  assign betaOut_10 = betaOut[10];

  assign betaOut_11 = betaOut[11];

  assign betaOut_12 = betaOut[12];

  assign betaOut_13 = betaOut[13];

  assign betaOut_14 = betaOut[14];

  assign betaOut_15 = betaOut[15];

endmodule  // TreeMemory

