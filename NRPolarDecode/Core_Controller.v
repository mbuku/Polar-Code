`timescale 1 ns / 1 ns

module Core_Controller
          (clk,
           reset,
           enb,
           startIn_reg,
           startDecode,
           nSub1,
           NSub1_1,
           F,
           contPaths_0,
           contPaths_1,
           decWrStage,
           decWrBlock,
           decLowerWrEn,
           decUpperWrEn,
           rdStage,
           rdBlock,
           makeDec,
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
           wrPath,
           pathCnt,
           mode,
           betaSrc,
           startOutput,
           leafIdx);


  input   clk;
  input   reset;
  input   enb;
  input   startIn_reg;
  input   startDecode;
  input   [3:0] nSub1;  // ufix4
  input   [9:0] NSub1_1;  // ufix10
  input   F;
  input   contPaths_0;  // ufix1
  input   contPaths_1;  // ufix1
  output  [3:0] decWrStage;  // ufix4
  output  [4:0] decWrBlock;  // ufix5
  output  decLowerWrEn;
  output  decUpperWrEn;
  output  [3:0] rdStage;  // ufix4
  output  [4:0] rdBlock;  // ufix5
  output  makeDec;
  output  alphaRdPath;  // ufix1
  output  betaRdPath_0;  // ufix1
  output  betaRdPath_1;  // ufix1
  output  betaRdPath_2;  // ufix1
  output  betaRdPath_3;  // ufix1
  output  betaRdPath_4;  // ufix1
  output  betaRdPath_5;  // ufix1
  output  betaRdPath_6;  // ufix1
  output  betaRdPath_7;  // ufix1
  output  betaRdPath_8;  // ufix1
  output  betaRdPath_9;  // ufix1
  output  wrPath;  // ufix1
  output  pathCnt;  // ufix1
  output  mode;
  output  betaSrc;
  output  startOutput;
  output  [9:0] leafIdx;  // ufix10


  wire [0:1] contPaths;  // ufix1 [2]
  reg [1:0] coreController_reg_state;  // ufix2
  reg [3:0] coreController_reg_wrStage;  // ufix4
  reg [4:0] coreController_reg_wrBlkAddr;  // ufix5
  reg  coreController_reg_wrEnLower;
  reg  coreController_reg_wrEnUpper;
  reg [3:0] coreController_reg_rdStage;  // ufix4
  reg [4:0] coreController_reg_rdBlkAddr;  // ufix5
  reg  coreController_reg_upper;
  reg  coreController_reg_mode;
  reg  coreController_reg_decisionEn;
  reg  coreController_reg_reconfig;
  reg  coreController_reg_startOutput;
  reg  coreController_reg_endIn;
  reg  [0:19] coreController_reg_alphaPathPtrs;  // ufix1 [20]
  reg  [0:19] coreController_reg_betaPathPtrs;  // ufix1 [20]
  reg  coreController_reg_pathIdx;  // ufix1
  reg  coreController_reg_activePaths;  // ufix1
  reg [9:0] coreController_reg_leafIdx;  // ufix10
  reg [7:0] coreController_reg_stageCounter;  // ufix8
  reg [1:0] coreController_reg_state_next;  // ufix2
  reg [3:0] coreController_reg_wrStage_next;  // ufix4
  reg [4:0] coreController_reg_wrBlkAddr_next;  // ufix5
  reg  coreController_reg_wrEnLower_next;
  reg  coreController_reg_wrEnUpper_next;
  reg [3:0] coreController_reg_rdStage_next;  // ufix4
  reg [4:0] coreController_reg_rdBlkAddr_next;  // ufix5
  reg  coreController_reg_upper_next;
  reg  coreController_reg_mode_next;
  reg  coreController_reg_decisionEn_next;
  reg  coreController_reg_reconfig_next;
  reg  coreController_reg_startOutput_next;
  reg  coreController_reg_endIn_next;
  reg  [0:19] coreController_reg_alphaPathPtrs_next;  // ufix1 [20]
  reg  [0:19] coreController_reg_betaPathPtrs_next;  // ufix1 [20]
  reg  coreController_reg_pathIdx_next;  // ufix1
  reg  coreController_reg_activePaths_next;  // ufix1
  reg [9:0] coreController_reg_leafIdx_next;  // ufix10
  reg [7:0] coreController_reg_stageCounter_next;  // ufix8
  reg [3:0] decWrStage_1;  // ufix4
  reg [4:0] decWrBlock_1;  // ufix5
  reg  decLowerWrEn_1;
  reg  decUpperWrEn_1;
  reg [3:0] rdStage_1;  // ufix4
  reg [4:0] rdBlock_1;  // ufix5
  reg  makeDec_1;
  reg  alphaRdPath_1;  // ufix1
  reg  [0:9] betaRdPath;  // ufix1 [10]
  reg  wrPath_1;  // ufix1
  reg  pathCnt_1;  // ufix1
  reg  mode_1;
  reg  betaSrc_1;
  reg  startOutput_1;
  reg [9:0] leafIdx_1;  // ufix10
  reg  [0:19] coreController_next_alphaPathPtrs;  // ufix1 [20]
  reg  [0:19] coreController_next_betaPathPtrs;  // ufix1 [20]
  reg  coreController_decMade;
  reg [3:0] coreController_stage;  // ufix4
  reg signed [31:0] coreController_sub_temp;  // int32
  reg [5:0] coreController_t_0_0 [0:9];  // ufix6 [10]
  reg [4:0] coreController_add_temp;  // ufix5
  reg [1:0] coreController_add_temp_0;  // ufix2
  reg signed [31:0] coreController_sub_temp_0;  // int32
  reg signed [63:0] coreController_mul_temp;  // sfix64
  reg signed [31:0] coreController_add_temp_1;  // int32
  reg [1:0] coreController_add_temp_2;  // ufix2
  reg [4:0] coreController_add_temp_3;  // ufix5
  reg [4:0] coreController_add_temp_4;  // ufix5
  reg [1:0] coreController_add_temp_5;  // ufix2
  reg signed [31:0] coreController_sub_temp_1;  // int32
  reg signed [63:0] coreController_mul_temp_0;  // sfix64
  reg signed [31:0] coreController_add_temp_6;  // int32
  reg [4:0] coreController_add_temp_7;  // ufix5
  reg [1:0] coreController_add_temp_8;  // ufix2
  reg signed [31:0] coreController_sub_temp_2;  // int32
  reg signed [63:0] coreController_mul_temp_1;  // sfix64
  reg signed [31:0] coreController_add_temp_9;  // int32
  reg signed [5:0] coreController_sub_temp_3;  // sfix6
  reg [4:0] coreController_cast;  // ufix5
  reg [1:0] coreController_add_temp_10;  // ufix2
  reg [1:0] coreController_add_temp_11;  // ufix2
  reg signed [31:0] coreController_sub_temp_4;  // int32
  reg  coreController_add_cast;  // ufix1
  reg [1:0] coreController_add_temp_12;  // ufix2
  reg [1:0] coreController_add_temp_13;  // ufix2
  reg signed [31:0] coreController_sub_temp_5;  // int32
  reg signed [63:0] coreController_mul_temp_2;  // sfix64
  reg [1:0] coreController_add_temp_14;  // ufix2
  reg signed [31:0] coreController_sub_temp_6;  // int32
  reg signed [63:0] coreController_mul_temp_3;  // sfix64
  reg [1:0] coreController_add_temp_15;  // ufix2
  reg signed [31:0] coreController_sub_temp_7;  // int32
  reg signed [63:0] coreController_mul_temp_4;  // sfix64
  reg [1:0] coreController_add_temp_16;  // ufix2
  reg signed [31:0] coreController_sub_temp_8;  // int32
  reg signed [63:0] coreController_mul_temp_5;  // sfix64
  reg [4:0] coreController_sub_temp_9;  // ufix5
  reg [1:0] coreController_add_temp_17;  // ufix2
  reg signed [31:0] coreController_sub_temp_10;  // int32
  reg signed [63:0] coreController_mul_temp_6;  // sfix64
  reg [1:0] coreController_add_temp_18;  // ufix2
  reg signed [31:0] coreController_sub_temp_11;  // int32
  reg signed [63:0] coreController_mul_temp_7;  // sfix64
  reg [1:0] coreController_add_temp_19;  // ufix2
  reg signed [31:0] coreController_sub_temp_12;  // int32
  reg signed [63:0] coreController_mul_temp_8;  // sfix64
  reg [1:0] coreController_add_temp_20;  // ufix2
  reg signed [31:0] coreController_sub_temp_13;  // int32
  reg signed [63:0] coreController_mul_temp_9;  // sfix64
  reg signed [5:0] coreController_sub_temp_14;  // sfix6
  reg [4:0] coreController_cast_0;  // ufix5
  reg [1:0] coreController_add_temp_21;  // ufix2
  reg signed [31:0] coreController_sub_temp_15;  // int32
  reg signed [63:0] coreController_mul_temp_10;  // sfix64
  reg [1:0] coreController_add_temp_22;  // ufix2
  reg signed [31:0] coreController_sub_temp_16;  // int32
  reg [1:0] coreController_add_temp_23;  // ufix2
  reg signed [31:0] coreController_sub_temp_17;  // int32
  reg signed [63:0] coreController_mul_temp_11;  // sfix64
  reg [1:0] coreController_add_temp_24;  // ufix2
  reg signed [31:0] coreController_sub_temp_18;  // int32
  reg signed [63:0] coreController_mul_temp_12;  // sfix64
  reg [1:0] coreController_add_temp_25;  // ufix2
  reg signed [31:0] coreController_sub_temp_19;  // int32
  reg signed [63:0] coreController_mul_temp_13;  // sfix64
  reg [1:0] coreController_add_temp_26;  // ufix2
  reg signed [31:0] coreController_sub_temp_20;  // int32
  reg signed [63:0] coreController_mul_temp_14;  // sfix64
  reg [1:0] coreController_add_temp_27;  // ufix2
  reg signed [31:0] coreController_sub_temp_21;  // int32
  reg signed [63:0] coreController_mul_temp_15;  // sfix64
  reg [1:0] coreController_add_temp_28;  // ufix2
  reg signed [31:0] coreController_sub_temp_22;  // int32
  reg signed [63:0] coreController_mul_temp_16;  // sfix64
  reg [1:0] coreController_add_temp_29;  // ufix2
  reg signed [31:0] coreController_sub_temp_23;  // int32
  reg signed [63:0] coreController_mul_temp_17;  // sfix64
  reg [1:0] coreController_add_temp_30;  // ufix2
  reg signed [31:0] coreController_sub_temp_24;  // int32
  reg signed [63:0] coreController_mul_temp_18;  // sfix64
  reg [1:0] coreController_add_temp_31;  // ufix2
  reg signed [31:0] coreController_sub_temp_25;  // int32
  reg signed [63:0] coreController_mul_temp_19;  // sfix64
  reg [1:0] coreController_add_temp_32;  // ufix2
  reg signed [31:0] coreController_sub_temp_26;  // int32
  reg [1:0] coreController_add_temp_33;  // ufix2
  reg signed [31:0] coreController_sub_temp_27;  // int32
  reg signed [63:0] coreController_mul_temp_20;  // sfix64
  reg [1:0] coreController_add_temp_34;  // ufix2
  reg signed [31:0] coreController_sub_temp_28;  // int32
  reg signed [63:0] coreController_mul_temp_21;  // sfix64
  reg [1:0] coreController_add_temp_35;  // ufix2
  reg signed [31:0] coreController_sub_temp_29;  // int32
  reg signed [63:0] coreController_mul_temp_22;  // sfix64
  reg [1:0] coreController_add_temp_36;  // ufix2
  reg signed [31:0] coreController_sub_temp_30;  // int32
  reg signed [63:0] coreController_mul_temp_23;  // sfix64
  reg [1:0] coreController_add_temp_37;  // ufix2
  reg signed [31:0] coreController_sub_temp_31;  // int32
  reg signed [63:0] coreController_mul_temp_24;  // sfix64
  reg [1:0] coreController_add_temp_38;  // ufix2
  reg signed [31:0] coreController_sub_temp_32;  // int32
  reg signed [63:0] coreController_mul_temp_25;  // sfix64
  reg [1:0] coreController_add_temp_39;  // ufix2
  reg signed [31:0] coreController_sub_temp_33;  // int32
  reg signed [63:0] coreController_mul_temp_26;  // sfix64
  reg [1:0] coreController_add_temp_40;  // ufix2
  reg signed [31:0] coreController_sub_temp_34;  // int32
  reg signed [63:0] coreController_mul_temp_27;  // sfix64
  reg [1:0] coreController_add_temp_41;  // ufix2
  reg signed [31:0] coreController_sub_temp_35;  // int32
  reg signed [63:0] coreController_mul_temp_28;  // sfix64
  reg [1:0] coreController_add_temp_42;  // ufix2
  reg signed [31:0] coreController_sub_temp_36;  // int32
  reg [1:0] coreController_add_temp_43;  // ufix2
  reg signed [31:0] coreController_sub_temp_37;  // int32
  reg signed [63:0] coreController_mul_temp_29;  // sfix64
  reg [1:0] coreController_add_temp_44;  // ufix2
  reg signed [31:0] coreController_sub_temp_38;  // int32
  reg signed [63:0] coreController_mul_temp_30;  // sfix64
  reg [1:0] coreController_add_temp_45;  // ufix2
  reg signed [31:0] coreController_sub_temp_39;  // int32
  reg signed [63:0] coreController_mul_temp_31;  // sfix64
  reg [1:0] coreController_add_temp_46;  // ufix2
  reg signed [31:0] coreController_sub_temp_40;  // int32
  reg signed [63:0] coreController_mul_temp_32;  // sfix64
  reg [1:0] coreController_add_temp_47;  // ufix2
  reg signed [31:0] coreController_sub_temp_41;  // int32
  reg signed [63:0] coreController_mul_temp_33;  // sfix64
  reg [1:0] coreController_add_temp_48;  // ufix2
  reg signed [31:0] coreController_sub_temp_42;  // int32
  reg signed [63:0] coreController_mul_temp_34;  // sfix64
  reg [1:0] coreController_add_temp_49;  // ufix2
  reg signed [31:0] coreController_sub_temp_43;  // int32
  reg signed [63:0] coreController_mul_temp_35;  // sfix64
  reg [1:0] coreController_add_temp_50;  // ufix2
  reg signed [31:0] coreController_sub_temp_44;  // int32
  reg signed [63:0] coreController_mul_temp_36;  // sfix64
  reg [1:0] coreController_add_temp_51;  // ufix2
  reg signed [31:0] coreController_sub_temp_45;  // int32
  reg signed [63:0] coreController_mul_temp_37;  // sfix64
  reg signed [63:0] coreController_mul_temp_38;  // sfix64
  reg signed [63:0] coreController_mul_temp_39;  // sfix64
  reg signed [63:0] coreController_mul_temp_40;  // sfix64
  reg signed [63:0] coreController_mul_temp_41;  // sfix64
  reg signed [63:0] coreController_mul_temp_42;  // sfix64
  reg signed [63:0] coreController_mul_temp_43;  // sfix64
  reg signed [63:0] coreController_mul_temp_44;  // sfix64
  reg signed [63:0] coreController_mul_temp_45;  // sfix64
  reg signed [63:0] coreController_mul_temp_46;  // sfix64
  reg [5:0] coreController_t_1;  // ufix6
  reg [5:0] coreController_t_2_0;  // ufix6
  reg signed [31:0] coreController_t_3;  // int32
  reg [4:0] coreController_t_4_0;  // ufix5
  reg [1:0] coreController_t_5;  // ufix2
  reg signed [31:0] coreController_t_6;  // int32
  reg signed [31:0] coreController_t_7;  // int32
  reg signed [31:0] coreController_t_8;  // int32
  reg [1:0] coreController_t_9;  // ufix2
  reg [4:0] coreController_t_10;  // ufix5
  reg [4:0] coreController_t_11;  // ufix5
  reg [1:0] coreController_t_12;  // ufix2
  reg signed [31:0] coreController_t_13;  // int32
  reg signed [31:0] coreController_t_14;  // int32
  reg signed [31:0] coreController_t_15;  // int32
  reg [4:0] coreController_t_16;  // ufix5
  reg [1:0] coreController_t_17;  // ufix2
  reg signed [31:0] coreController_t_18;  // int32
  reg signed [31:0] coreController_t_19;  // int32
  reg signed [31:0] coreController_t_20;  // int32
  reg [4:0] coreController_t_21;  // ufix5
  reg signed [5:0] coreController_t_22;  // sfix6
  reg [1:0] coreController_t_23;  // ufix2
  reg [1:0] coreController_t_24;  // ufix2
  reg signed [31:0] coreController_t_25;  // int32
  reg [1:0] coreController_t_26;  // ufix2
  reg [1:0] coreController_t_27;  // ufix2
  reg signed [31:0] coreController_t_28;  // int32
  reg [1:0] coreController_t_29;  // ufix2
  reg signed [31:0] coreController_t_30;  // int32
  reg [1:0] coreController_t_31;  // ufix2
  reg signed [31:0] coreController_t_32;  // int32
  reg [1:0] coreController_t_33;  // ufix2
  reg signed [31:0] coreController_t_34;  // int32
  reg [4:0] coreController_t_35;  // ufix5
  reg [1:0] coreController_t_36;  // ufix2
  reg signed [31:0] coreController_t_37;  // int32
  reg [1:0] coreController_t_38;  // ufix2
  reg signed [31:0] coreController_t_39;  // int32
  reg [1:0] coreController_t_40;  // ufix2
  reg signed [31:0] coreController_t_41;  // int32
  reg [1:0] coreController_t_42;  // ufix2
  reg signed [31:0] coreController_t_43;  // int32
  reg [4:0] coreController_t_44;  // ufix5
  reg signed [5:0] coreController_t_45;  // sfix6
  reg [1:0] coreController_t_46;  // ufix2
  reg signed [31:0] coreController_t_47;  // int32
  reg [1:0] coreController_t_48;  // ufix2
  reg signed [31:0] coreController_t_49;  // int32
  reg [1:0] coreController_t_50;  // ufix2
  reg signed [31:0] coreController_t_51;  // int32
  reg [1:0] coreController_t_52;  // ufix2
  reg signed [31:0] coreController_t_53;  // int32
  reg [1:0] coreController_t_54;  // ufix2
  reg signed [31:0] coreController_t_55;  // int32
  reg [1:0] coreController_t_56;  // ufix2
  reg signed [31:0] coreController_t_57;  // int32
  reg [1:0] coreController_t_58;  // ufix2
  reg signed [31:0] coreController_t_59;  // int32
  reg [1:0] coreController_t_60;  // ufix2
  reg signed [31:0] coreController_t_61;  // int32
  reg [1:0] coreController_t_62;  // ufix2
  reg signed [31:0] coreController_t_63;  // int32
  reg [1:0] coreController_t_64;  // ufix2
  reg signed [31:0] coreController_t_65;  // int32
  reg [1:0] coreController_t_66;  // ufix2
  reg signed [31:0] coreController_t_67;  // int32
  reg [1:0] coreController_t_68;  // ufix2
  reg signed [31:0] coreController_t_69;  // int32
  reg [1:0] coreController_t_70;  // ufix2
  reg signed [31:0] coreController_t_71;  // int32
  reg [1:0] coreController_t_72;  // ufix2
  reg signed [31:0] coreController_t_73;  // int32
  reg [1:0] coreController_t_74;  // ufix2
  reg signed [31:0] coreController_t_75;  // int32
  reg [1:0] coreController_t_76;  // ufix2
  reg signed [31:0] coreController_t_77;  // int32
  reg [1:0] coreController_t_78;  // ufix2
  reg signed [31:0] coreController_t_79;  // int32
  reg [1:0] coreController_t_80;  // ufix2
  reg signed [31:0] coreController_t_81;  // int32
  reg [1:0] coreController_t_82;  // ufix2
  reg signed [31:0] coreController_t_83;  // int32
  reg [1:0] coreController_t_84;  // ufix2
  reg signed [31:0] coreController_t_85;  // int32
  reg [1:0] coreController_t_86;  // ufix2
  reg signed [31:0] coreController_t_87;  // int32
  reg [1:0] coreController_t_88;  // ufix2
  reg signed [31:0] coreController_t_89;  // int32
  reg [1:0] coreController_t_90;  // ufix2
  reg signed [31:0] coreController_t_91;  // int32
  reg [1:0] coreController_t_92;  // ufix2
  reg signed [31:0] coreController_t_93;  // int32
  reg [1:0] coreController_t_94;  // ufix2
  reg signed [31:0] coreController_t_95;  // int32
  reg [1:0] coreController_t_96;  // ufix2
  reg signed [31:0] coreController_t_97;  // int32
  reg [1:0] coreController_t_98;  // ufix2
  reg signed [31:0] coreController_t_99;  // int32
  reg [1:0] coreController_t_100;  // ufix2
  reg signed [31:0] coreController_t_101;  // int32
  reg [1:0] coreController_t_102;  // ufix2
  reg signed [31:0] coreController_t_103;  // int32
  reg [1:0] coreController_t_104;  // ufix2
  reg signed [31:0] coreController_t_105;  // int32
  reg [1:0] coreController_t_106;  // ufix2
  reg signed [31:0] coreController_t_107;  // int32


  assign contPaths[0] = contPaths_0;
  assign contPaths[1] = contPaths_1;

  // coreController - control the operation of core,tree memory and decisions
  always @(posedge clk or posedge reset)
    begin : coreController_1_process
      if (reset == 1'b1) begin
        coreController_reg_state <= 2'b00;
        coreController_reg_wrStage <= 4'b0000;
        coreController_reg_wrBlkAddr <= 5'b00000;
        coreController_reg_wrEnLower <= 1'b0;
        coreController_reg_wrEnUpper <= 1'b0;
        coreController_reg_rdStage <= 4'b0000;
        coreController_reg_rdBlkAddr <= 5'b00000;
        coreController_reg_upper <= 1'b0;
        coreController_reg_mode <= 1'b0;
        coreController_reg_decisionEn <= 1'b0;
        coreController_reg_reconfig <= 1'b0;
        coreController_reg_startOutput <= 1'b0;
        coreController_reg_endIn <= 1'b0;
        coreController_reg_alphaPathPtrs[0] <= 1'b0;
        coreController_reg_alphaPathPtrs[1] <= 1'b0;
        coreController_reg_alphaPathPtrs[2] <= 1'b0;
        coreController_reg_alphaPathPtrs[3] <= 1'b0;
        coreController_reg_alphaPathPtrs[4] <= 1'b0;
        coreController_reg_alphaPathPtrs[5] <= 1'b0;
        coreController_reg_alphaPathPtrs[6] <= 1'b0;
        coreController_reg_alphaPathPtrs[7] <= 1'b0;
        coreController_reg_alphaPathPtrs[8] <= 1'b0;
        coreController_reg_alphaPathPtrs[9] <= 1'b0;
        coreController_reg_alphaPathPtrs[10] <= 1'b0;
        coreController_reg_alphaPathPtrs[11] <= 1'b0;
        coreController_reg_alphaPathPtrs[12] <= 1'b0;
        coreController_reg_alphaPathPtrs[13] <= 1'b0;
        coreController_reg_alphaPathPtrs[14] <= 1'b0;
        coreController_reg_alphaPathPtrs[15] <= 1'b0;
        coreController_reg_alphaPathPtrs[16] <= 1'b0;
        coreController_reg_alphaPathPtrs[17] <= 1'b0;
        coreController_reg_alphaPathPtrs[18] <= 1'b0;
        coreController_reg_alphaPathPtrs[19] <= 1'b0;
        coreController_reg_betaPathPtrs[0] <= 1'b0;
        coreController_reg_betaPathPtrs[1] <= 1'b0;
        coreController_reg_betaPathPtrs[2] <= 1'b0;
        coreController_reg_betaPathPtrs[3] <= 1'b0;
        coreController_reg_betaPathPtrs[4] <= 1'b0;
        coreController_reg_betaPathPtrs[5] <= 1'b0;
        coreController_reg_betaPathPtrs[6] <= 1'b0;
        coreController_reg_betaPathPtrs[7] <= 1'b0;
        coreController_reg_betaPathPtrs[8] <= 1'b0;
        coreController_reg_betaPathPtrs[9] <= 1'b0;
        coreController_reg_betaPathPtrs[10] <= 1'b0;
        coreController_reg_betaPathPtrs[11] <= 1'b0;
        coreController_reg_betaPathPtrs[12] <= 1'b0;
        coreController_reg_betaPathPtrs[13] <= 1'b0;
        coreController_reg_betaPathPtrs[14] <= 1'b0;
        coreController_reg_betaPathPtrs[15] <= 1'b0;
        coreController_reg_betaPathPtrs[16] <= 1'b0;
        coreController_reg_betaPathPtrs[17] <= 1'b0;
        coreController_reg_betaPathPtrs[18] <= 1'b0;
        coreController_reg_betaPathPtrs[19] <= 1'b0;
        coreController_reg_pathIdx <= 1'b0;
        coreController_reg_activePaths <= 1'b0;
        coreController_reg_leafIdx <= 10'b0000000000;
        coreController_reg_stageCounter <= 8'b00000000;
      end
      else begin
        if (enb) begin
          coreController_reg_state <= coreController_reg_state_next;
          coreController_reg_wrStage <= coreController_reg_wrStage_next;
          coreController_reg_wrBlkAddr <= coreController_reg_wrBlkAddr_next;
          coreController_reg_wrEnLower <= coreController_reg_wrEnLower_next;
          coreController_reg_wrEnUpper <= coreController_reg_wrEnUpper_next;
          coreController_reg_rdStage <= coreController_reg_rdStage_next;
          coreController_reg_rdBlkAddr <= coreController_reg_rdBlkAddr_next;
          coreController_reg_upper <= coreController_reg_upper_next;
          coreController_reg_mode <= coreController_reg_mode_next;
          coreController_reg_decisionEn <= coreController_reg_decisionEn_next;
          coreController_reg_reconfig <= coreController_reg_reconfig_next;
          coreController_reg_startOutput <= coreController_reg_startOutput_next;
          coreController_reg_endIn <= coreController_reg_endIn_next;
          coreController_reg_alphaPathPtrs[0] <= coreController_reg_alphaPathPtrs_next[0];
          coreController_reg_alphaPathPtrs[1] <= coreController_reg_alphaPathPtrs_next[1];
          coreController_reg_alphaPathPtrs[2] <= coreController_reg_alphaPathPtrs_next[2];
          coreController_reg_alphaPathPtrs[3] <= coreController_reg_alphaPathPtrs_next[3];
          coreController_reg_alphaPathPtrs[4] <= coreController_reg_alphaPathPtrs_next[4];
          coreController_reg_alphaPathPtrs[5] <= coreController_reg_alphaPathPtrs_next[5];
          coreController_reg_alphaPathPtrs[6] <= coreController_reg_alphaPathPtrs_next[6];
          coreController_reg_alphaPathPtrs[7] <= coreController_reg_alphaPathPtrs_next[7];
          coreController_reg_alphaPathPtrs[8] <= coreController_reg_alphaPathPtrs_next[8];
          coreController_reg_alphaPathPtrs[9] <= coreController_reg_alphaPathPtrs_next[9];
          coreController_reg_alphaPathPtrs[10] <= coreController_reg_alphaPathPtrs_next[10];
          coreController_reg_alphaPathPtrs[11] <= coreController_reg_alphaPathPtrs_next[11];
          coreController_reg_alphaPathPtrs[12] <= coreController_reg_alphaPathPtrs_next[12];
          coreController_reg_alphaPathPtrs[13] <= coreController_reg_alphaPathPtrs_next[13];
          coreController_reg_alphaPathPtrs[14] <= coreController_reg_alphaPathPtrs_next[14];
          coreController_reg_alphaPathPtrs[15] <= coreController_reg_alphaPathPtrs_next[15];
          coreController_reg_alphaPathPtrs[16] <= coreController_reg_alphaPathPtrs_next[16];
          coreController_reg_alphaPathPtrs[17] <= coreController_reg_alphaPathPtrs_next[17];
          coreController_reg_alphaPathPtrs[18] <= coreController_reg_alphaPathPtrs_next[18];
          coreController_reg_alphaPathPtrs[19] <= coreController_reg_alphaPathPtrs_next[19];
          coreController_reg_betaPathPtrs[0] <= coreController_reg_betaPathPtrs_next[0];
          coreController_reg_betaPathPtrs[1] <= coreController_reg_betaPathPtrs_next[1];
          coreController_reg_betaPathPtrs[2] <= coreController_reg_betaPathPtrs_next[2];
          coreController_reg_betaPathPtrs[3] <= coreController_reg_betaPathPtrs_next[3];
          coreController_reg_betaPathPtrs[4] <= coreController_reg_betaPathPtrs_next[4];
          coreController_reg_betaPathPtrs[5] <= coreController_reg_betaPathPtrs_next[5];
          coreController_reg_betaPathPtrs[6] <= coreController_reg_betaPathPtrs_next[6];
          coreController_reg_betaPathPtrs[7] <= coreController_reg_betaPathPtrs_next[7];
          coreController_reg_betaPathPtrs[8] <= coreController_reg_betaPathPtrs_next[8];
          coreController_reg_betaPathPtrs[9] <= coreController_reg_betaPathPtrs_next[9];
          coreController_reg_betaPathPtrs[10] <= coreController_reg_betaPathPtrs_next[10];
          coreController_reg_betaPathPtrs[11] <= coreController_reg_betaPathPtrs_next[11];
          coreController_reg_betaPathPtrs[12] <= coreController_reg_betaPathPtrs_next[12];
          coreController_reg_betaPathPtrs[13] <= coreController_reg_betaPathPtrs_next[13];
          coreController_reg_betaPathPtrs[14] <= coreController_reg_betaPathPtrs_next[14];
          coreController_reg_betaPathPtrs[15] <= coreController_reg_betaPathPtrs_next[15];
          coreController_reg_betaPathPtrs[16] <= coreController_reg_betaPathPtrs_next[16];
          coreController_reg_betaPathPtrs[17] <= coreController_reg_betaPathPtrs_next[17];
          coreController_reg_betaPathPtrs[18] <= coreController_reg_betaPathPtrs_next[18];
          coreController_reg_betaPathPtrs[19] <= coreController_reg_betaPathPtrs_next[19];
          coreController_reg_pathIdx <= coreController_reg_pathIdx_next;
          coreController_reg_activePaths <= coreController_reg_activePaths_next;
          coreController_reg_leafIdx <= coreController_reg_leafIdx_next;
          coreController_reg_stageCounter <= coreController_reg_stageCounter_next;
        end
      end
    end

  always @* begin
    coreController_t_0_0[0] = 6'b000000;
    coreController_t_0_0[1] = 6'b000000;
    coreController_t_0_0[2] = 6'b000000;
    coreController_t_0_0[3] = 6'b000000;
    coreController_t_0_0[4] = 6'b000000;
    coreController_t_0_0[5] = 6'b000001;
    coreController_t_0_0[6] = 6'b000011;
    coreController_t_0_0[7] = 6'b000111;
    coreController_t_0_0[8] = 6'b001111;
    coreController_t_0_0[9] = 6'b011111;
    coreController_decMade = 1'b0;
    coreController_add_temp_3 = 5'b00000;
    coreController_add_temp_4 = 5'b00000;
    coreController_add_temp_5 = 2'b00;
    coreController_sub_temp_1 = 32'sd0;
    coreController_mul_temp_0 = 64'sh0000000000000000;
    coreController_add_temp_6 = 32'sd0;
    coreController_add_temp_7 = 5'b00000;
    coreController_add_temp_8 = 2'b00;
    coreController_sub_temp_2 = 32'sd0;
    coreController_mul_temp_1 = 64'sh0000000000000000;
    coreController_add_temp_9 = 32'sd0;
    coreController_sub_temp_3 = 6'sb000000;
    coreController_add_temp_10 = 2'b00;
    coreController_add_temp_11 = 2'b00;
    coreController_sub_temp_4 = 32'sd0;
    coreController_add_temp_12 = 2'b00;
    coreController_add_temp_13 = 2'b00;
    coreController_sub_temp_5 = 32'sd0;
    coreController_mul_temp_2 = 64'sh0000000000000000;
    coreController_add_temp_14 = 2'b00;
    coreController_sub_temp_6 = 32'sd0;
    coreController_mul_temp_3 = 64'sh0000000000000000;
    coreController_add_temp_15 = 2'b00;
    coreController_sub_temp_7 = 32'sd0;
    coreController_mul_temp_4 = 64'sh0000000000000000;
    coreController_add_temp_16 = 2'b00;
    coreController_sub_temp_8 = 32'sd0;
    coreController_mul_temp_5 = 64'sh0000000000000000;
    coreController_sub_temp_9 = 5'b00000;
    coreController_add_temp_17 = 2'b00;
    coreController_sub_temp_10 = 32'sd0;
    coreController_mul_temp_6 = 64'sh0000000000000000;
    coreController_add_temp_18 = 2'b00;
    coreController_sub_temp_11 = 32'sd0;
    coreController_mul_temp_7 = 64'sh0000000000000000;
    coreController_add_temp_19 = 2'b00;
    coreController_sub_temp_12 = 32'sd0;
    coreController_mul_temp_8 = 64'sh0000000000000000;
    coreController_add_temp_20 = 2'b00;
    coreController_sub_temp_13 = 32'sd0;
    coreController_mul_temp_9 = 64'sh0000000000000000;
    coreController_sub_temp_14 = 6'sb000000;
    coreController_add_temp_21 = 2'b00;
    coreController_sub_temp_15 = 32'sd0;
    coreController_mul_temp_10 = 64'sh0000000000000000;
    coreController_add_temp_22 = 2'b00;
    coreController_sub_temp_16 = 32'sd0;
    coreController_add_temp_23 = 2'b00;
    coreController_sub_temp_17 = 32'sd0;
    coreController_mul_temp_11 = 64'sh0000000000000000;
    coreController_add_temp_24 = 2'b00;
    coreController_sub_temp_18 = 32'sd0;
    coreController_mul_temp_12 = 64'sh0000000000000000;
    coreController_add_temp_25 = 2'b00;
    coreController_sub_temp_19 = 32'sd0;
    coreController_mul_temp_13 = 64'sh0000000000000000;
    coreController_add_temp_26 = 2'b00;
    coreController_sub_temp_20 = 32'sd0;
    coreController_mul_temp_14 = 64'sh0000000000000000;
    coreController_add_temp_27 = 2'b00;
    coreController_sub_temp_21 = 32'sd0;
    coreController_mul_temp_15 = 64'sh0000000000000000;
    coreController_add_temp_28 = 2'b00;
    coreController_sub_temp_22 = 32'sd0;
    coreController_mul_temp_16 = 64'sh0000000000000000;
    coreController_add_temp_29 = 2'b00;
    coreController_sub_temp_23 = 32'sd0;
    coreController_mul_temp_17 = 64'sh0000000000000000;
    coreController_add_temp_30 = 2'b00;
    coreController_sub_temp_24 = 32'sd0;
    coreController_mul_temp_18 = 64'sh0000000000000000;
    coreController_add_temp_31 = 2'b00;
    coreController_sub_temp_25 = 32'sd0;
    coreController_mul_temp_19 = 64'sh0000000000000000;
    coreController_add_temp_32 = 2'b00;
    coreController_sub_temp_26 = 32'sd0;
    coreController_add_temp_33 = 2'b00;
    coreController_sub_temp_27 = 32'sd0;
    coreController_mul_temp_20 = 64'sh0000000000000000;
    coreController_add_temp_34 = 2'b00;
    coreController_sub_temp_28 = 32'sd0;
    coreController_mul_temp_21 = 64'sh0000000000000000;
    coreController_add_temp_35 = 2'b00;
    coreController_sub_temp_29 = 32'sd0;
    coreController_mul_temp_22 = 64'sh0000000000000000;
    coreController_add_temp_36 = 2'b00;
    coreController_sub_temp_30 = 32'sd0;
    coreController_mul_temp_23 = 64'sh0000000000000000;
    coreController_add_temp_37 = 2'b00;
    coreController_sub_temp_31 = 32'sd0;
    coreController_mul_temp_24 = 64'sh0000000000000000;
    coreController_add_temp_38 = 2'b00;
    coreController_sub_temp_32 = 32'sd0;
    coreController_mul_temp_25 = 64'sh0000000000000000;
    coreController_add_temp_39 = 2'b00;
    coreController_sub_temp_33 = 32'sd0;
    coreController_mul_temp_26 = 64'sh0000000000000000;
    coreController_add_temp_40 = 2'b00;
    coreController_sub_temp_34 = 32'sd0;
    coreController_mul_temp_27 = 64'sh0000000000000000;
    coreController_add_temp_41 = 2'b00;
    coreController_sub_temp_35 = 32'sd0;
    coreController_mul_temp_28 = 64'sh0000000000000000;
    coreController_add_temp_42 = 2'b00;
    coreController_sub_temp_36 = 32'sd0;
    coreController_add_temp_43 = 2'b00;
    coreController_sub_temp_37 = 32'sd0;
    coreController_mul_temp_29 = 64'sh0000000000000000;
    coreController_add_temp_44 = 2'b00;
    coreController_sub_temp_38 = 32'sd0;
    coreController_mul_temp_30 = 64'sh0000000000000000;
    coreController_add_temp_45 = 2'b00;
    coreController_sub_temp_39 = 32'sd0;
    coreController_mul_temp_31 = 64'sh0000000000000000;
    coreController_add_temp_46 = 2'b00;
    coreController_sub_temp_40 = 32'sd0;
    coreController_mul_temp_32 = 64'sh0000000000000000;
    coreController_add_temp_47 = 2'b00;
    coreController_sub_temp_41 = 32'sd0;
    coreController_mul_temp_33 = 64'sh0000000000000000;
    coreController_add_temp_48 = 2'b00;
    coreController_sub_temp_42 = 32'sd0;
    coreController_mul_temp_34 = 64'sh0000000000000000;
    coreController_add_temp_49 = 2'b00;
    coreController_sub_temp_43 = 32'sd0;
    coreController_mul_temp_35 = 64'sh0000000000000000;
    coreController_add_temp_50 = 2'b00;
    coreController_sub_temp_44 = 32'sd0;
    coreController_mul_temp_36 = 64'sh0000000000000000;
    coreController_add_temp_51 = 2'b00;
    coreController_sub_temp_45 = 32'sd0;
    coreController_mul_temp_37 = 64'sh0000000000000000;
    coreController_add_cast = 1'b0;
    coreController_t_1 = 6'b000000;
    coreController_t_2_0 = 6'b000000;
    coreController_t_10 = 5'b00000;
    coreController_t_11 = 5'b00000;
    coreController_t_12 = 2'b00;
    coreController_t_13 = 32'sd0;
    coreController_t_14 = 32'sd0;
    coreController_t_15 = 32'sd0;
    coreController_t_16 = 5'b00000;
    coreController_t_17 = 2'b00;
    coreController_t_18 = 32'sd0;
    coreController_t_19 = 32'sd0;
    coreController_t_20 = 32'sd0;
    coreController_t_21 = 5'b00000;
    coreController_t_22 = 6'sb000000;
    coreController_t_23 = 2'b00;
    coreController_t_24 = 2'b00;
    coreController_t_25 = 32'sd0;
    coreController_t_26 = 2'b00;
    coreController_t_27 = 2'b00;
    coreController_t_28 = 32'sd0;
    coreController_t_29 = 2'b00;
    coreController_t_30 = 32'sd0;
    coreController_t_31 = 2'b00;
    coreController_t_32 = 32'sd0;
    coreController_t_33 = 2'b00;
    coreController_t_34 = 32'sd0;
    coreController_t_35 = 5'b00000;
    coreController_t_36 = 2'b00;
    coreController_t_37 = 32'sd0;
    coreController_t_38 = 2'b00;
    coreController_t_39 = 32'sd0;
    coreController_t_40 = 2'b00;
    coreController_t_41 = 32'sd0;
    coreController_t_42 = 2'b00;
    coreController_t_43 = 32'sd0;
    coreController_t_44 = 5'b00000;
    coreController_t_45 = 6'sb000000;
    coreController_t_46 = 2'b00;
    coreController_t_47 = 32'sd0;
    coreController_t_48 = 2'b00;
    coreController_t_49 = 32'sd0;
    coreController_t_50 = 2'b00;
    coreController_t_51 = 32'sd0;
    coreController_t_52 = 2'b00;
    coreController_t_53 = 32'sd0;
    coreController_t_54 = 2'b00;
    coreController_t_55 = 32'sd0;
    coreController_t_56 = 2'b00;
    coreController_t_57 = 32'sd0;
    coreController_t_58 = 2'b00;
    coreController_t_59 = 32'sd0;
    coreController_t_60 = 2'b00;
    coreController_t_61 = 32'sd0;
    coreController_t_62 = 2'b00;
    coreController_t_63 = 32'sd0;
    coreController_t_64 = 2'b00;
    coreController_t_65 = 32'sd0;
    coreController_t_66 = 2'b00;
    coreController_t_67 = 32'sd0;
    coreController_t_68 = 2'b00;
    coreController_t_69 = 32'sd0;
    coreController_t_70 = 2'b00;
    coreController_t_71 = 32'sd0;
    coreController_t_72 = 2'b00;
    coreController_t_73 = 32'sd0;
    coreController_t_74 = 2'b00;
    coreController_t_75 = 32'sd0;
    coreController_t_76 = 2'b00;
    coreController_t_77 = 32'sd0;
    coreController_t_78 = 2'b00;
    coreController_t_79 = 32'sd0;
    coreController_t_80 = 2'b00;
    coreController_t_81 = 32'sd0;
    coreController_t_82 = 2'b00;
    coreController_t_83 = 32'sd0;
    coreController_t_84 = 2'b00;
    coreController_t_85 = 32'sd0;
    coreController_t_86 = 2'b00;
    coreController_t_87 = 32'sd0;
    coreController_t_88 = 2'b00;
    coreController_t_89 = 32'sd0;
    coreController_t_90 = 2'b00;
    coreController_t_91 = 32'sd0;
    coreController_t_92 = 2'b00;
    coreController_t_93 = 32'sd0;
    coreController_t_94 = 2'b00;
    coreController_t_95 = 32'sd0;
    coreController_t_96 = 2'b00;
    coreController_t_97 = 32'sd0;
    coreController_t_98 = 2'b00;
    coreController_t_99 = 32'sd0;
    coreController_t_100 = 2'b00;
    coreController_t_101 = 32'sd0;
    coreController_t_102 = 2'b00;
    coreController_t_103 = 32'sd0;
    coreController_t_104 = 2'b00;
    coreController_t_105 = 32'sd0;
    coreController_t_106 = 2'b00;
    coreController_t_107 = 32'sd0;
    coreController_cast = 5'b00000;
    coreController_cast_0 = 5'b00000;
    coreController_reg_alphaPathPtrs_next[0] = coreController_reg_alphaPathPtrs[0];
    coreController_reg_alphaPathPtrs_next[1] = coreController_reg_alphaPathPtrs[1];
    coreController_reg_alphaPathPtrs_next[2] = coreController_reg_alphaPathPtrs[2];
    coreController_reg_alphaPathPtrs_next[3] = coreController_reg_alphaPathPtrs[3];
    coreController_reg_alphaPathPtrs_next[4] = coreController_reg_alphaPathPtrs[4];
    coreController_reg_alphaPathPtrs_next[5] = coreController_reg_alphaPathPtrs[5];
    coreController_reg_alphaPathPtrs_next[6] = coreController_reg_alphaPathPtrs[6];
    coreController_reg_alphaPathPtrs_next[7] = coreController_reg_alphaPathPtrs[7];
    coreController_reg_alphaPathPtrs_next[8] = coreController_reg_alphaPathPtrs[8];
    coreController_reg_alphaPathPtrs_next[9] = coreController_reg_alphaPathPtrs[9];
    coreController_reg_alphaPathPtrs_next[10] = coreController_reg_alphaPathPtrs[10];
    coreController_reg_alphaPathPtrs_next[11] = coreController_reg_alphaPathPtrs[11];
    coreController_reg_alphaPathPtrs_next[12] = coreController_reg_alphaPathPtrs[12];
    coreController_reg_alphaPathPtrs_next[13] = coreController_reg_alphaPathPtrs[13];
    coreController_reg_alphaPathPtrs_next[14] = coreController_reg_alphaPathPtrs[14];
    coreController_reg_alphaPathPtrs_next[15] = coreController_reg_alphaPathPtrs[15];
    coreController_reg_alphaPathPtrs_next[16] = coreController_reg_alphaPathPtrs[16];
    coreController_reg_alphaPathPtrs_next[17] = coreController_reg_alphaPathPtrs[17];
    coreController_reg_alphaPathPtrs_next[18] = coreController_reg_alphaPathPtrs[18];
    coreController_reg_alphaPathPtrs_next[19] = coreController_reg_alphaPathPtrs[19];
    coreController_reg_betaPathPtrs_next[0] = coreController_reg_betaPathPtrs[0];
    coreController_reg_betaPathPtrs_next[1] = coreController_reg_betaPathPtrs[1];
    coreController_reg_betaPathPtrs_next[2] = coreController_reg_betaPathPtrs[2];
    coreController_reg_betaPathPtrs_next[3] = coreController_reg_betaPathPtrs[3];
    coreController_reg_betaPathPtrs_next[4] = coreController_reg_betaPathPtrs[4];
    coreController_reg_betaPathPtrs_next[5] = coreController_reg_betaPathPtrs[5];
    coreController_reg_betaPathPtrs_next[6] = coreController_reg_betaPathPtrs[6];
    coreController_reg_betaPathPtrs_next[7] = coreController_reg_betaPathPtrs[7];
    coreController_reg_betaPathPtrs_next[8] = coreController_reg_betaPathPtrs[8];
    coreController_reg_betaPathPtrs_next[9] = coreController_reg_betaPathPtrs[9];
    coreController_reg_betaPathPtrs_next[10] = coreController_reg_betaPathPtrs[10];
    coreController_reg_betaPathPtrs_next[11] = coreController_reg_betaPathPtrs[11];
    coreController_reg_betaPathPtrs_next[12] = coreController_reg_betaPathPtrs[12];
    coreController_reg_betaPathPtrs_next[13] = coreController_reg_betaPathPtrs[13];
    coreController_reg_betaPathPtrs_next[14] = coreController_reg_betaPathPtrs[14];
    coreController_reg_betaPathPtrs_next[15] = coreController_reg_betaPathPtrs[15];
    coreController_reg_betaPathPtrs_next[16] = coreController_reg_betaPathPtrs[16];
    coreController_reg_betaPathPtrs_next[17] = coreController_reg_betaPathPtrs[17];
    coreController_reg_betaPathPtrs_next[18] = coreController_reg_betaPathPtrs[18];
    coreController_reg_betaPathPtrs_next[19] = coreController_reg_betaPathPtrs[19];
    coreController_t_4_0 = {1'b0, coreController_reg_rdStage};
    coreController_add_temp = coreController_t_4_0 + 5'b00001;
    coreController_t_5 = {1'b0, coreController_reg_pathIdx};
    coreController_add_temp_0 = coreController_t_5 + 2'b01;
    coreController_t_6 = {30'b0, coreController_add_temp_0};
    coreController_sub_temp_0 = coreController_t_6 - 32'sd1;
    coreController_mul_temp = 32'sd10 * coreController_sub_temp_0;
    coreController_t_7 = {27'b0, coreController_add_temp};
    coreController_t_8 = coreController_mul_temp[31:0];
    coreController_add_temp_1 = coreController_t_7 + coreController_t_8;
    alphaRdPath_1 = coreController_reg_alphaPathPtrs[coreController_add_temp_1 - 32'sd1];
    coreController_t_9 = {1'b0, coreController_reg_pathIdx};
    coreController_add_temp_2 = coreController_t_9 + 2'b01;
    coreController_t_3 = {30'b0, coreController_add_temp_2};
    coreController_sub_temp = coreController_t_3 - 32'sd1;
    coreController_reg_state_next = coreController_reg_state;
    coreController_reg_wrStage_next = coreController_reg_wrStage;
    coreController_reg_wrBlkAddr_next = coreController_reg_wrBlkAddr;
    coreController_reg_wrEnLower_next = coreController_reg_wrEnLower;
    coreController_reg_wrEnUpper_next = coreController_reg_wrEnUpper;
    coreController_stage = coreController_reg_rdStage;
    coreController_reg_rdBlkAddr_next = coreController_reg_rdBlkAddr;
    coreController_reg_mode_next = coreController_reg_mode;
    coreController_reg_decisionEn_next = coreController_reg_decisionEn;
    coreController_reg_reconfig_next = coreController_reg_reconfig;
    coreController_reg_startOutput_next = coreController_reg_startOutput;
    coreController_next_alphaPathPtrs[0] = coreController_reg_alphaPathPtrs[0];
    coreController_next_alphaPathPtrs[1] = coreController_reg_alphaPathPtrs[1];
    coreController_next_alphaPathPtrs[2] = coreController_reg_alphaPathPtrs[2];
    coreController_next_alphaPathPtrs[3] = coreController_reg_alphaPathPtrs[3];
    coreController_next_alphaPathPtrs[4] = coreController_reg_alphaPathPtrs[4];
    coreController_next_alphaPathPtrs[5] = coreController_reg_alphaPathPtrs[5];
    coreController_next_alphaPathPtrs[6] = coreController_reg_alphaPathPtrs[6];
    coreController_next_alphaPathPtrs[7] = coreController_reg_alphaPathPtrs[7];
    coreController_next_alphaPathPtrs[8] = coreController_reg_alphaPathPtrs[8];
    coreController_next_alphaPathPtrs[9] = coreController_reg_alphaPathPtrs[9];
    coreController_next_alphaPathPtrs[10] = coreController_reg_alphaPathPtrs[10];
    coreController_next_alphaPathPtrs[11] = coreController_reg_alphaPathPtrs[11];
    coreController_next_alphaPathPtrs[12] = coreController_reg_alphaPathPtrs[12];
    coreController_next_alphaPathPtrs[13] = coreController_reg_alphaPathPtrs[13];
    coreController_next_alphaPathPtrs[14] = coreController_reg_alphaPathPtrs[14];
    coreController_next_alphaPathPtrs[15] = coreController_reg_alphaPathPtrs[15];
    coreController_next_alphaPathPtrs[16] = coreController_reg_alphaPathPtrs[16];
    coreController_next_alphaPathPtrs[17] = coreController_reg_alphaPathPtrs[17];
    coreController_next_alphaPathPtrs[18] = coreController_reg_alphaPathPtrs[18];
    coreController_next_alphaPathPtrs[19] = coreController_reg_alphaPathPtrs[19];
    coreController_next_betaPathPtrs[0] = coreController_reg_betaPathPtrs[0];
    coreController_next_betaPathPtrs[1] = coreController_reg_betaPathPtrs[1];
    coreController_next_betaPathPtrs[2] = coreController_reg_betaPathPtrs[2];
    coreController_next_betaPathPtrs[3] = coreController_reg_betaPathPtrs[3];
    coreController_next_betaPathPtrs[4] = coreController_reg_betaPathPtrs[4];
    coreController_next_betaPathPtrs[5] = coreController_reg_betaPathPtrs[5];
    coreController_next_betaPathPtrs[6] = coreController_reg_betaPathPtrs[6];
    coreController_next_betaPathPtrs[7] = coreController_reg_betaPathPtrs[7];
    coreController_next_betaPathPtrs[8] = coreController_reg_betaPathPtrs[8];
    coreController_next_betaPathPtrs[9] = coreController_reg_betaPathPtrs[9];
    coreController_next_betaPathPtrs[10] = coreController_reg_betaPathPtrs[10];
    coreController_next_betaPathPtrs[11] = coreController_reg_betaPathPtrs[11];
    coreController_next_betaPathPtrs[12] = coreController_reg_betaPathPtrs[12];
    coreController_next_betaPathPtrs[13] = coreController_reg_betaPathPtrs[13];
    coreController_next_betaPathPtrs[14] = coreController_reg_betaPathPtrs[14];
    coreController_next_betaPathPtrs[15] = coreController_reg_betaPathPtrs[15];
    coreController_next_betaPathPtrs[16] = coreController_reg_betaPathPtrs[16];
    coreController_next_betaPathPtrs[17] = coreController_reg_betaPathPtrs[17];
    coreController_next_betaPathPtrs[18] = coreController_reg_betaPathPtrs[18];
    coreController_next_betaPathPtrs[19] = coreController_reg_betaPathPtrs[19];
    coreController_reg_pathIdx_next = coreController_reg_pathIdx;
    coreController_reg_activePaths_next = coreController_reg_activePaths;
    coreController_reg_leafIdx_next = coreController_reg_leafIdx;
    coreController_reg_stageCounter_next = coreController_reg_stageCounter;
    if (startIn_reg) begin
      coreController_reg_state_next = 2'b00;
      coreController_reg_wrEnLower_next = 1'b0;
      coreController_reg_wrEnUpper_next = 1'b0;
      coreController_reg_decisionEn_next = 1'b0;
      coreController_reg_mode_next = 1'b0;
      coreController_next_alphaPathPtrs[0] = 1'b0;
      coreController_next_alphaPathPtrs[1] = 1'b0;
      coreController_next_alphaPathPtrs[2] = 1'b0;
      coreController_next_alphaPathPtrs[3] = 1'b0;
      coreController_next_alphaPathPtrs[4] = 1'b0;
      coreController_next_alphaPathPtrs[5] = 1'b0;
      coreController_next_alphaPathPtrs[6] = 1'b0;
      coreController_next_alphaPathPtrs[7] = 1'b0;
      coreController_next_alphaPathPtrs[8] = 1'b0;
      coreController_next_alphaPathPtrs[9] = 1'b0;
      coreController_next_alphaPathPtrs[10] = 1'b0;
      coreController_next_alphaPathPtrs[11] = 1'b0;
      coreController_next_alphaPathPtrs[12] = 1'b0;
      coreController_next_alphaPathPtrs[13] = 1'b0;
      coreController_next_alphaPathPtrs[14] = 1'b0;
      coreController_next_alphaPathPtrs[15] = 1'b0;
      coreController_next_alphaPathPtrs[16] = 1'b0;
      coreController_next_alphaPathPtrs[17] = 1'b0;
      coreController_next_alphaPathPtrs[18] = 1'b0;
      coreController_next_alphaPathPtrs[19] = 1'b0;
      coreController_next_betaPathPtrs[0] = 1'b0;
      coreController_next_betaPathPtrs[1] = 1'b0;
      coreController_next_betaPathPtrs[2] = 1'b0;
      coreController_next_betaPathPtrs[3] = 1'b0;
      coreController_next_betaPathPtrs[4] = 1'b0;
      coreController_next_betaPathPtrs[5] = 1'b0;
      coreController_next_betaPathPtrs[6] = 1'b0;
      coreController_next_betaPathPtrs[7] = 1'b0;
      coreController_next_betaPathPtrs[8] = 1'b0;
      coreController_next_betaPathPtrs[9] = 1'b0;
      coreController_next_betaPathPtrs[10] = 1'b0;
      coreController_next_betaPathPtrs[11] = 1'b0;
      coreController_next_betaPathPtrs[12] = 1'b0;
      coreController_next_betaPathPtrs[13] = 1'b0;
      coreController_next_betaPathPtrs[14] = 1'b0;
      coreController_next_betaPathPtrs[15] = 1'b0;
      coreController_next_betaPathPtrs[16] = 1'b0;
      coreController_next_betaPathPtrs[17] = 1'b0;
      coreController_next_betaPathPtrs[18] = 1'b0;
      coreController_next_betaPathPtrs[19] = 1'b0;
      coreController_reg_pathIdx_next = 1'b0;
      coreController_reg_activePaths_next = 1'b0;
      coreController_reg_leafIdx_next = 10'b0000000000;
      coreController_reg_stageCounter_next = 8'b00000000;
    end
    else begin
      case ( coreController_reg_state)
        2'b00 :
          begin
            coreController_reg_startOutput_next = 1'b0;
            if (startDecode) begin
              coreController_reg_reconfig_next = 1'b0;
              coreController_reg_state_next = 2'b01;
              coreController_stage = coreController_reg_wrStage;
              coreController_reg_wrBlkAddr_next = 5'b00000;
              coreController_reg_rdBlkAddr_next = 5'b00000;
              coreController_t_21 = {1'b0, coreController_reg_wrStage};
              coreController_t_22 = {1'b0, coreController_t_21};
              coreController_sub_temp_3 = coreController_t_22 - 6'sb000001;
              if (coreController_sub_temp_3[5] == 1'b1) begin
                coreController_cast = 5'b00000;
              end
              else begin
                coreController_cast = coreController_sub_temp_3[4:0];
              end
              if (coreController_cast[4] != 1'b0) begin
                coreController_reg_wrStage_next = 4'b1111;
              end
              else begin
                coreController_reg_wrStage_next = coreController_cast[3:0];
              end
              coreController_reg_wrEnLower_next = 1'b1;
              if (coreController_reg_wrStage == 4'b0100) begin
                coreController_reg_wrEnUpper_next = 1'b1;
              end
            end
            else begin
              coreController_reg_wrStage_next = nSub1;
            end
          end
        2'b01 :
          begin
            coreController_t_10 = {1'b0, coreController_reg_rdStage};
            coreController_add_temp_3 = coreController_t_10 + 5'b00001;
            coreController_t_1 = {1'b0, coreController_reg_rdBlkAddr};
            if (coreController_t_1 == coreController_t_0_0[$signed({1'b0, coreController_add_temp_3}) - 32'sd1]) begin
              if (coreController_reg_rdStage != 4'b0000) begin
                coreController_t_11 = {1'b0, coreController_reg_wrStage};
                coreController_add_temp_4 = coreController_t_11 + 5'b00001;
                coreController_t_12 = {1'b0, coreController_reg_pathIdx};
                coreController_add_temp_5 = coreController_t_12 + 2'b01;
                coreController_t_13 = {30'b0, coreController_add_temp_5};
                coreController_sub_temp_1 = coreController_t_13 - 32'sd1;
                coreController_mul_temp_0 = 32'sd10 * coreController_sub_temp_1;
                coreController_t_14 = {27'b0, coreController_add_temp_4};
                coreController_t_15 = coreController_mul_temp_0[31:0];
                coreController_add_temp_6 = coreController_t_14 + coreController_t_15;
                coreController_next_alphaPathPtrs[coreController_add_temp_6 - 32'sd1] = coreController_reg_pathIdx;
              end
              if (coreController_reg_mode) begin
                coreController_t_16 = {1'b0, coreController_reg_rdStage};
                coreController_add_temp_7 = coreController_t_16 + 5'b00001;
                coreController_t_17 = {1'b0, coreController_reg_pathIdx};
                coreController_add_temp_8 = coreController_t_17 + 2'b01;
                coreController_t_18 = {30'b0, coreController_add_temp_8};
                coreController_sub_temp_2 = coreController_t_18 - 32'sd1;
                coreController_mul_temp_1 = 32'sd10 * coreController_sub_temp_2;
                coreController_t_19 = {27'b0, coreController_add_temp_7};
                coreController_t_20 = coreController_mul_temp_1[31:0];
                coreController_add_temp_9 = coreController_t_19 + coreController_t_20;
                coreController_next_betaPathPtrs[coreController_add_temp_9 - 32'sd1] = coreController_reg_pathIdx;
              end
              coreController_reg_stageCounter_next = coreController_reg_stageCounter + 8'b00000001;
              if (coreController_reg_pathIdx == coreController_reg_activePaths) begin
                if ((((coreController_reg_rdStage == 4'b0110) && (coreController_reg_stageCounter != 8'b00000100)) || (((coreController_reg_rdStage < 4'b0110) && (coreController_reg_rdStage != 4'b0000)) && (coreController_reg_stageCounter != 8'b00000011))) || ((coreController_reg_rdStage == 4'b0000) && (coreController_reg_stageCounter != 8'b00000001))) begin
                  coreController_reg_wrEnLower_next = 1'b0;
                  coreController_reg_wrEnUpper_next = 1'b0;
                end
                else begin
                  coreController_reg_stageCounter_next = 8'b00000000;
                  coreController_reg_pathIdx_next = 1'b0;
                  coreController_reg_mode_next = 1'b0;
                  coreController_reg_wrBlkAddr_next = 5'b00000;
                  coreController_reg_rdBlkAddr_next = 5'b00000;
                  if (coreController_reg_rdStage == 4'b0000) begin
                    coreController_reg_state_next = 2'b10;
                    coreController_reg_decisionEn_next = 1'b1;
                  end
                  else begin
                    if (coreController_reg_rdStage == 4'b0001) begin
                      coreController_reg_wrEnLower_next = 1'b0;
                      coreController_reg_wrEnUpper_next = 1'b0;
                    end
                    else begin
                      coreController_reg_wrEnLower_next = 1'b1;
                      coreController_reg_wrEnUpper_next = coreController_reg_rdStage <= 4'b0101;
                    end
                    coreController_stage = coreController_reg_wrStage;
                    coreController_t_44 = {1'b0, coreController_reg_wrStage};
                    coreController_t_45 = {1'b0, coreController_t_44};
                    coreController_sub_temp_14 = coreController_t_45 - 6'sb000001;
                    if (coreController_sub_temp_14[5] == 1'b1) begin
                      coreController_cast_0 = 5'b00000;
                    end
                    else begin
                      coreController_cast_0 = coreController_sub_temp_14[4:0];
                    end
                    if (coreController_cast_0[4] != 1'b0) begin
                      coreController_reg_wrStage_next = 4'b1111;
                    end
                    else begin
                      coreController_reg_wrStage_next = coreController_cast_0[3:0];
                    end
                  end
                end
              end
              else begin
                coreController_t_23 = {1'b0, coreController_reg_pathIdx};
                coreController_add_temp_10 = coreController_t_23 + 2'b01;
                coreController_reg_pathIdx_next = coreController_add_temp_10[0];
                coreController_reg_wrBlkAddr_next = 5'b00000;
                coreController_reg_rdBlkAddr_next = 5'b00000;
                if (coreController_reg_rdStage > 4'b0100) begin
                  coreController_reg_wrEnLower_next = 1'b1;
                  coreController_reg_wrEnUpper_next = 1'b0;
                end
              end
            end
            else begin
              coreController_t_2_0 = {1'b0, coreController_reg_rdBlkAddr};
              if (coreController_t_2_0 == coreController_t_0_0[$signed({1'b0, coreController_reg_rdStage}) - 32'sd1]) begin
                if (coreController_reg_pathIdx <= coreController_reg_activePaths) begin
                  coreController_reg_wrEnLower_next = 1'b0;
                  coreController_reg_wrEnUpper_next = 1'b1;
                end
                coreController_reg_wrBlkAddr_next = 5'b00000;
              end
              else begin
                coreController_reg_wrBlkAddr_next = coreController_reg_wrBlkAddr + 5'b00001;
              end
              coreController_reg_rdBlkAddr_next = coreController_reg_rdBlkAddr + 5'b00001;
            end
          end
        2'b10 :
          begin
            coreController_reg_decisionEn_next = 1'b0;
            if (coreController_reg_stageCounter == 8'b00000010) begin
              coreController_decMade = 1'b1;
            end
            else if ( ! F) begin
              coreController_decMade = 1'b1;
            end
            else begin
              coreController_decMade = 1'b0;
              coreController_reg_stageCounter_next = coreController_reg_stageCounter + 8'b00000001;
            end
            if (coreController_decMade) begin
              coreController_reg_state_next = 2'b01;
              coreController_reg_stageCounter_next = 8'b00000000;
              if (coreController_reg_leafIdx == NSub1_1) begin
                coreController_reg_state_next = 2'b00;
                coreController_reg_startOutput_next = 1'b1;
                coreController_reg_mode_next = 1'b0;
                coreController_reg_leafIdx_next = 10'b0000000000;
                coreController_reg_activePaths_next = 1'b0;
              end
              else begin
                if (F) begin
                  if (coreController_reg_activePaths != 1'b1) begin
                    coreController_add_cast = 1'b0;
                    coreController_t_26 = {1'b0, coreController_add_cast};
                    coreController_add_temp_12 = coreController_t_26 + 2'b01;
                    coreController_reg_activePaths_next = coreController_add_temp_12[0];
                  end
                  else begin
                    coreController_t_24 = {1'b0, contPaths[0]};
                    coreController_add_temp_11 = coreController_t_24 + 2'b01;
                    coreController_t_25 = {30'b0, coreController_add_temp_11};
                    coreController_sub_temp_4 = coreController_t_25 - 32'sd1;
                    coreController_next_alphaPathPtrs[0] = coreController_reg_alphaPathPtrs[32'sd10 * coreController_sub_temp_4];
                    coreController_t_27 = {1'b0, contPaths[0]};
                    coreController_add_temp_13 = coreController_t_27 + 2'b01;
                    coreController_t_28 = {30'b0, coreController_add_temp_13};
                    coreController_sub_temp_5 = coreController_t_28 - 32'sd1;
                    coreController_mul_temp_2 = 32'sd10 * coreController_sub_temp_5;
                    coreController_next_alphaPathPtrs[1] = coreController_reg_alphaPathPtrs[32'sd1 + coreController_mul_temp_2];
                    coreController_t_29 = {1'b0, contPaths[0]};
                    coreController_add_temp_14 = coreController_t_29 + 2'b01;
                    coreController_t_30 = {30'b0, coreController_add_temp_14};
                    coreController_sub_temp_6 = coreController_t_30 - 32'sd1;
                    coreController_mul_temp_3 = 32'sd10 * coreController_sub_temp_6;
                    coreController_next_alphaPathPtrs[2] = coreController_reg_alphaPathPtrs[32'sd2 + coreController_mul_temp_3];
                    coreController_t_31 = {1'b0, contPaths[0]};
                    coreController_add_temp_15 = coreController_t_31 + 2'b01;
                    coreController_t_32 = {30'b0, coreController_add_temp_15};
                    coreController_sub_temp_7 = coreController_t_32 - 32'sd1;
                    coreController_mul_temp_4 = 32'sd10 * coreController_sub_temp_7;
                    coreController_next_alphaPathPtrs[3] = coreController_reg_alphaPathPtrs[32'sd3 + coreController_mul_temp_4];
                    coreController_t_33 = {1'b0, contPaths[0]};
                    coreController_add_temp_16 = coreController_t_33 + 2'b01;
                    coreController_t_34 = {30'b0, coreController_add_temp_16};
                    coreController_sub_temp_8 = coreController_t_34 - 32'sd1;
                    coreController_mul_temp_5 = 32'sd10 * coreController_sub_temp_8;
                    coreController_next_alphaPathPtrs[4] = coreController_reg_alphaPathPtrs[32'sd4 + coreController_mul_temp_5];
                    coreController_t_36 = {1'b0, contPaths[0]};
                    coreController_add_temp_17 = coreController_t_36 + 2'b01;
                    coreController_t_37 = {30'b0, coreController_add_temp_17};
                    coreController_sub_temp_10 = coreController_t_37 - 32'sd1;
                    coreController_mul_temp_6 = 32'sd10 * coreController_sub_temp_10;
                    coreController_next_alphaPathPtrs[5] = coreController_reg_alphaPathPtrs[32'sd5 + coreController_mul_temp_6];
                    coreController_t_38 = {1'b0, contPaths[0]};
                    coreController_add_temp_18 = coreController_t_38 + 2'b01;
                    coreController_t_39 = {30'b0, coreController_add_temp_18};
                    coreController_sub_temp_11 = coreController_t_39 - 32'sd1;
                    coreController_mul_temp_7 = 32'sd10 * coreController_sub_temp_11;
                    coreController_next_alphaPathPtrs[6] = coreController_reg_alphaPathPtrs[32'sd6 + coreController_mul_temp_7];
                    coreController_t_40 = {1'b0, contPaths[0]};
                    coreController_add_temp_19 = coreController_t_40 + 2'b01;
                    coreController_t_41 = {30'b0, coreController_add_temp_19};
                    coreController_sub_temp_12 = coreController_t_41 - 32'sd1;
                    coreController_mul_temp_8 = 32'sd10 * coreController_sub_temp_12;
                    coreController_next_alphaPathPtrs[7] = coreController_reg_alphaPathPtrs[32'sd7 + coreController_mul_temp_8];
                    coreController_t_42 = {1'b0, contPaths[0]};
                    coreController_add_temp_20 = coreController_t_42 + 2'b01;
                    coreController_t_43 = {30'b0, coreController_add_temp_20};
                    coreController_sub_temp_13 = coreController_t_43 - 32'sd1;
                    coreController_mul_temp_9 = 32'sd10 * coreController_sub_temp_13;
                    coreController_next_alphaPathPtrs[8] = coreController_reg_alphaPathPtrs[32'sd8 + coreController_mul_temp_9];
                    coreController_t_46 = {1'b0, contPaths[0]};
                    coreController_add_temp_21 = coreController_t_46 + 2'b01;
                    coreController_t_47 = {30'b0, coreController_add_temp_21};
                    coreController_sub_temp_15 = coreController_t_47 - 32'sd1;
                    coreController_mul_temp_10 = 32'sd10 * coreController_sub_temp_15;
                    coreController_next_alphaPathPtrs[9] = coreController_reg_alphaPathPtrs[32'sd9 + coreController_mul_temp_10];
                    coreController_t_48 = {1'b0, contPaths[1]};
                    coreController_add_temp_22 = coreController_t_48 + 2'b01;
                    coreController_t_49 = {30'b0, coreController_add_temp_22};
                    coreController_sub_temp_16 = coreController_t_49 - 32'sd1;
                    coreController_next_alphaPathPtrs[10] = coreController_reg_alphaPathPtrs[32'sd10 * coreController_sub_temp_16];
                    coreController_t_50 = {1'b0, contPaths[1]};
                    coreController_add_temp_23 = coreController_t_50 + 2'b01;
                    coreController_t_51 = {30'b0, coreController_add_temp_23};
                    coreController_sub_temp_17 = coreController_t_51 - 32'sd1;
                    coreController_mul_temp_11 = 32'sd10 * coreController_sub_temp_17;
                    coreController_next_alphaPathPtrs[11] = coreController_reg_alphaPathPtrs[32'sd1 + coreController_mul_temp_11];
                    coreController_t_52 = {1'b0, contPaths[1]};
                    coreController_add_temp_24 = coreController_t_52 + 2'b01;
                    coreController_t_53 = {30'b0, coreController_add_temp_24};
                    coreController_sub_temp_18 = coreController_t_53 - 32'sd1;
                    coreController_mul_temp_12 = 32'sd10 * coreController_sub_temp_18;
                    coreController_next_alphaPathPtrs[12] = coreController_reg_alphaPathPtrs[32'sd2 + coreController_mul_temp_12];
                    coreController_t_54 = {1'b0, contPaths[1]};
                    coreController_add_temp_25 = coreController_t_54 + 2'b01;
                    coreController_t_55 = {30'b0, coreController_add_temp_25};
                    coreController_sub_temp_19 = coreController_t_55 - 32'sd1;
                    coreController_mul_temp_13 = 32'sd10 * coreController_sub_temp_19;
                    coreController_next_alphaPathPtrs[13] = coreController_reg_alphaPathPtrs[32'sd3 + coreController_mul_temp_13];
                    coreController_t_56 = {1'b0, contPaths[1]};
                    coreController_add_temp_26 = coreController_t_56 + 2'b01;
                    coreController_t_57 = {30'b0, coreController_add_temp_26};
                    coreController_sub_temp_20 = coreController_t_57 - 32'sd1;
                    coreController_mul_temp_14 = 32'sd10 * coreController_sub_temp_20;
                    coreController_next_alphaPathPtrs[14] = coreController_reg_alphaPathPtrs[32'sd4 + coreController_mul_temp_14];
                    coreController_t_58 = {1'b0, contPaths[1]};
                    coreController_add_temp_27 = coreController_t_58 + 2'b01;
                    coreController_t_59 = {30'b0, coreController_add_temp_27};
                    coreController_sub_temp_21 = coreController_t_59 - 32'sd1;
                    coreController_mul_temp_15 = 32'sd10 * coreController_sub_temp_21;
                    coreController_next_alphaPathPtrs[15] = coreController_reg_alphaPathPtrs[32'sd5 + coreController_mul_temp_15];
                    coreController_t_60 = {1'b0, contPaths[1]};
                    coreController_add_temp_28 = coreController_t_60 + 2'b01;
                    coreController_t_61 = {30'b0, coreController_add_temp_28};
                    coreController_sub_temp_22 = coreController_t_61 - 32'sd1;
                    coreController_mul_temp_16 = 32'sd10 * coreController_sub_temp_22;
                    coreController_next_alphaPathPtrs[16] = coreController_reg_alphaPathPtrs[32'sd6 + coreController_mul_temp_16];
                    coreController_t_62 = {1'b0, contPaths[1]};
                    coreController_add_temp_29 = coreController_t_62 + 2'b01;
                    coreController_t_63 = {30'b0, coreController_add_temp_29};
                    coreController_sub_temp_23 = coreController_t_63 - 32'sd1;
                    coreController_mul_temp_17 = 32'sd10 * coreController_sub_temp_23;
                    coreController_next_alphaPathPtrs[17] = coreController_reg_alphaPathPtrs[32'sd7 + coreController_mul_temp_17];
                    coreController_t_64 = {1'b0, contPaths[1]};
                    coreController_add_temp_30 = coreController_t_64 + 2'b01;
                    coreController_t_65 = {30'b0, coreController_add_temp_30};
                    coreController_sub_temp_24 = coreController_t_65 - 32'sd1;
                    coreController_mul_temp_18 = 32'sd10 * coreController_sub_temp_24;
                    coreController_next_alphaPathPtrs[18] = coreController_reg_alphaPathPtrs[32'sd8 + coreController_mul_temp_18];
                    coreController_t_66 = {1'b0, contPaths[1]};
                    coreController_add_temp_31 = coreController_t_66 + 2'b01;
                    coreController_t_67 = {30'b0, coreController_add_temp_31};
                    coreController_sub_temp_25 = coreController_t_67 - 32'sd1;
                    coreController_mul_temp_19 = 32'sd10 * coreController_sub_temp_25;
                    coreController_next_alphaPathPtrs[19] = coreController_reg_alphaPathPtrs[32'sd9 + coreController_mul_temp_19];
                    coreController_t_68 = {1'b0, contPaths[0]};
                    coreController_add_temp_32 = coreController_t_68 + 2'b01;
                    coreController_t_69 = {30'b0, coreController_add_temp_32};
                    coreController_sub_temp_26 = coreController_t_69 - 32'sd1;
                    coreController_next_betaPathPtrs[0] = coreController_reg_betaPathPtrs[32'sd10 * coreController_sub_temp_26];
                    coreController_t_70 = {1'b0, contPaths[0]};
                    coreController_add_temp_33 = coreController_t_70 + 2'b01;
                    coreController_t_71 = {30'b0, coreController_add_temp_33};
                    coreController_sub_temp_27 = coreController_t_71 - 32'sd1;
                    coreController_mul_temp_20 = 32'sd10 * coreController_sub_temp_27;
                    coreController_next_betaPathPtrs[1] = coreController_reg_betaPathPtrs[32'sd1 + coreController_mul_temp_20];
                    coreController_t_72 = {1'b0, contPaths[0]};
                    coreController_add_temp_34 = coreController_t_72 + 2'b01;
                    coreController_t_73 = {30'b0, coreController_add_temp_34};
                    coreController_sub_temp_28 = coreController_t_73 - 32'sd1;
                    coreController_mul_temp_21 = 32'sd10 * coreController_sub_temp_28;
                    coreController_next_betaPathPtrs[2] = coreController_reg_betaPathPtrs[32'sd2 + coreController_mul_temp_21];
                    coreController_t_74 = {1'b0, contPaths[0]};
                    coreController_add_temp_35 = coreController_t_74 + 2'b01;
                    coreController_t_75 = {30'b0, coreController_add_temp_35};
                    coreController_sub_temp_29 = coreController_t_75 - 32'sd1;
                    coreController_mul_temp_22 = 32'sd10 * coreController_sub_temp_29;
                    coreController_next_betaPathPtrs[3] = coreController_reg_betaPathPtrs[32'sd3 + coreController_mul_temp_22];
                    coreController_t_76 = {1'b0, contPaths[0]};
                    coreController_add_temp_36 = coreController_t_76 + 2'b01;
                    coreController_t_77 = {30'b0, coreController_add_temp_36};
                    coreController_sub_temp_30 = coreController_t_77 - 32'sd1;
                    coreController_mul_temp_23 = 32'sd10 * coreController_sub_temp_30;
                    coreController_next_betaPathPtrs[4] = coreController_reg_betaPathPtrs[32'sd4 + coreController_mul_temp_23];
                    coreController_t_78 = {1'b0, contPaths[0]};
                    coreController_add_temp_37 = coreController_t_78 + 2'b01;
                    coreController_t_79 = {30'b0, coreController_add_temp_37};
                    coreController_sub_temp_31 = coreController_t_79 - 32'sd1;
                    coreController_mul_temp_24 = 32'sd10 * coreController_sub_temp_31;
                    coreController_next_betaPathPtrs[5] = coreController_reg_betaPathPtrs[32'sd5 + coreController_mul_temp_24];
                    coreController_t_80 = {1'b0, contPaths[0]};
                    coreController_add_temp_38 = coreController_t_80 + 2'b01;
                    coreController_t_81 = {30'b0, coreController_add_temp_38};
                    coreController_sub_temp_32 = coreController_t_81 - 32'sd1;
                    coreController_mul_temp_25 = 32'sd10 * coreController_sub_temp_32;
                    coreController_next_betaPathPtrs[6] = coreController_reg_betaPathPtrs[32'sd6 + coreController_mul_temp_25];
                    coreController_t_82 = {1'b0, contPaths[0]};
                    coreController_add_temp_39 = coreController_t_82 + 2'b01;
                    coreController_t_83 = {30'b0, coreController_add_temp_39};
                    coreController_sub_temp_33 = coreController_t_83 - 32'sd1;
                    coreController_mul_temp_26 = 32'sd10 * coreController_sub_temp_33;
                    coreController_next_betaPathPtrs[7] = coreController_reg_betaPathPtrs[32'sd7 + coreController_mul_temp_26];
                    coreController_t_84 = {1'b0, contPaths[0]};
                    coreController_add_temp_40 = coreController_t_84 + 2'b01;
                    coreController_t_85 = {30'b0, coreController_add_temp_40};
                    coreController_sub_temp_34 = coreController_t_85 - 32'sd1;
                    coreController_mul_temp_27 = 32'sd10 * coreController_sub_temp_34;
                    coreController_next_betaPathPtrs[8] = coreController_reg_betaPathPtrs[32'sd8 + coreController_mul_temp_27];
                    coreController_t_86 = {1'b0, contPaths[0]};
                    coreController_add_temp_41 = coreController_t_86 + 2'b01;
                    coreController_t_87 = {30'b0, coreController_add_temp_41};
                    coreController_sub_temp_35 = coreController_t_87 - 32'sd1;
                    coreController_mul_temp_28 = 32'sd10 * coreController_sub_temp_35;
                    coreController_next_betaPathPtrs[9] = coreController_reg_betaPathPtrs[32'sd9 + coreController_mul_temp_28];
                    coreController_t_88 = {1'b0, contPaths[1]};
                    coreController_add_temp_42 = coreController_t_88 + 2'b01;
                    coreController_t_89 = {30'b0, coreController_add_temp_42};
                    coreController_sub_temp_36 = coreController_t_89 - 32'sd1;
                    coreController_next_betaPathPtrs[10] = coreController_reg_betaPathPtrs[32'sd10 * coreController_sub_temp_36];
                    coreController_t_90 = {1'b0, contPaths[1]};
                    coreController_add_temp_43 = coreController_t_90 + 2'b01;
                    coreController_t_91 = {30'b0, coreController_add_temp_43};
                    coreController_sub_temp_37 = coreController_t_91 - 32'sd1;
                    coreController_mul_temp_29 = 32'sd10 * coreController_sub_temp_37;
                    coreController_next_betaPathPtrs[11] = coreController_reg_betaPathPtrs[32'sd1 + coreController_mul_temp_29];
                    coreController_t_92 = {1'b0, contPaths[1]};
                    coreController_add_temp_44 = coreController_t_92 + 2'b01;
                    coreController_t_93 = {30'b0, coreController_add_temp_44};
                    coreController_sub_temp_38 = coreController_t_93 - 32'sd1;
                    coreController_mul_temp_30 = 32'sd10 * coreController_sub_temp_38;
                    coreController_next_betaPathPtrs[12] = coreController_reg_betaPathPtrs[32'sd2 + coreController_mul_temp_30];
                    coreController_t_94 = {1'b0, contPaths[1]};
                    coreController_add_temp_45 = coreController_t_94 + 2'b01;
                    coreController_t_95 = {30'b0, coreController_add_temp_45};
                    coreController_sub_temp_39 = coreController_t_95 - 32'sd1;
                    coreController_mul_temp_31 = 32'sd10 * coreController_sub_temp_39;
                    coreController_next_betaPathPtrs[13] = coreController_reg_betaPathPtrs[32'sd3 + coreController_mul_temp_31];
                    coreController_t_96 = {1'b0, contPaths[1]};
                    coreController_add_temp_46 = coreController_t_96 + 2'b01;
                    coreController_t_97 = {30'b0, coreController_add_temp_46};
                    coreController_sub_temp_40 = coreController_t_97 - 32'sd1;
                    coreController_mul_temp_32 = 32'sd10 * coreController_sub_temp_40;
                    coreController_next_betaPathPtrs[14] = coreController_reg_betaPathPtrs[32'sd4 + coreController_mul_temp_32];
                    coreController_t_98 = {1'b0, contPaths[1]};
                    coreController_add_temp_47 = coreController_t_98 + 2'b01;
                    coreController_t_99 = {30'b0, coreController_add_temp_47};
                    coreController_sub_temp_41 = coreController_t_99 - 32'sd1;
                    coreController_mul_temp_33 = 32'sd10 * coreController_sub_temp_41;
                    coreController_next_betaPathPtrs[15] = coreController_reg_betaPathPtrs[32'sd5 + coreController_mul_temp_33];
                    coreController_t_100 = {1'b0, contPaths[1]};
                    coreController_add_temp_48 = coreController_t_100 + 2'b01;
                    coreController_t_101 = {30'b0, coreController_add_temp_48};
                    coreController_sub_temp_42 = coreController_t_101 - 32'sd1;
                    coreController_mul_temp_34 = 32'sd10 * coreController_sub_temp_42;
                    coreController_next_betaPathPtrs[16] = coreController_reg_betaPathPtrs[32'sd6 + coreController_mul_temp_34];
                    coreController_t_102 = {1'b0, contPaths[1]};
                    coreController_add_temp_49 = coreController_t_102 + 2'b01;
                    coreController_t_103 = {30'b0, coreController_add_temp_49};
                    coreController_sub_temp_43 = coreController_t_103 - 32'sd1;
                    coreController_mul_temp_35 = 32'sd10 * coreController_sub_temp_43;
                    coreController_next_betaPathPtrs[17] = coreController_reg_betaPathPtrs[32'sd7 + coreController_mul_temp_35];
                    coreController_t_104 = {1'b0, contPaths[1]};
                    coreController_add_temp_50 = coreController_t_104 + 2'b01;
                    coreController_t_105 = {30'b0, coreController_add_temp_50};
                    coreController_sub_temp_44 = coreController_t_105 - 32'sd1;
                    coreController_mul_temp_36 = 32'sd10 * coreController_sub_temp_44;
                    coreController_next_betaPathPtrs[18] = coreController_reg_betaPathPtrs[32'sd8 + coreController_mul_temp_36];
                    coreController_t_106 = {1'b0, contPaths[1]};
                    coreController_add_temp_51 = coreController_t_106 + 2'b01;
                    coreController_t_107 = {30'b0, coreController_add_temp_51};
                    coreController_sub_temp_45 = coreController_t_107 - 32'sd1;
                    coreController_mul_temp_37 = 32'sd10 * coreController_sub_temp_45;
                    coreController_next_betaPathPtrs[19] = coreController_reg_betaPathPtrs[32'sd9 + coreController_mul_temp_37];
                  end
                end
                coreController_reg_mode_next = 1'b1;
                if (coreController_reg_leafIdx[0] == 1'b0) begin
                  coreController_stage = 4'b0000;
                end
                else if (coreController_reg_leafIdx[1] == 1'b0) begin
                  coreController_stage = 4'b0001;
                end
                else if (coreController_reg_leafIdx[2] == 1'b0) begin
                  coreController_stage = 4'b0010;
                end
                else if (coreController_reg_leafIdx[3] == 1'b0) begin
                  coreController_stage = 4'b0011;
                end
                else if (coreController_reg_leafIdx[4] == 1'b0) begin
                  coreController_stage = 4'b0100;
                end
                else if (coreController_reg_leafIdx[5] == 1'b0) begin
                  coreController_stage = 4'b0101;
                end
                else if (coreController_reg_leafIdx[6] == 1'b0) begin
                  coreController_stage = 4'b0110;
                end
                else if (coreController_reg_leafIdx[7] == 1'b0) begin
                  coreController_stage = 4'b0111;
                end
                else if (coreController_reg_leafIdx[8] == 1'b0) begin
                  coreController_stage = 4'b1000;
                end
                else begin
                  coreController_stage = 4'b1001;
                end
                if (coreController_stage == 4'b0000) begin
                  coreController_reg_wrStage_next = 4'b0000;
                end
                else begin
                  coreController_t_35 = {1'b0, coreController_stage};
                  coreController_sub_temp_9 = coreController_t_35 - 5'b00001;
                  if (coreController_sub_temp_9[4] != 1'b0) begin
                    coreController_reg_wrStage_next = 4'b1111;
                  end
                  else begin
                    coreController_reg_wrStage_next = coreController_sub_temp_9[3:0];
                  end
                end
                if (coreController_stage != 4'b0000) begin
                  coreController_reg_wrEnLower_next = 1'b1;
                  if (coreController_stage <= 4'b0100) begin
                    coreController_reg_wrEnUpper_next = 1'b1;
                  end
                end
                coreController_reg_leafIdx_next = coreController_reg_leafIdx + 10'b0000000001;
              end
            end
          end
      endcase
    end
    coreController_reg_rdStage_next = coreController_stage;
    coreController_reg_upper_next = coreController_reg_upper;
    coreController_reg_endIn_next = coreController_reg_endIn;
    coreController_reg_alphaPathPtrs_next[0] = coreController_next_alphaPathPtrs[0];
    coreController_reg_alphaPathPtrs_next[1] = coreController_next_alphaPathPtrs[1];
    coreController_reg_alphaPathPtrs_next[2] = coreController_next_alphaPathPtrs[2];
    coreController_reg_alphaPathPtrs_next[3] = coreController_next_alphaPathPtrs[3];
    coreController_reg_alphaPathPtrs_next[4] = coreController_next_alphaPathPtrs[4];
    coreController_reg_alphaPathPtrs_next[5] = coreController_next_alphaPathPtrs[5];
    coreController_reg_alphaPathPtrs_next[6] = coreController_next_alphaPathPtrs[6];
    coreController_reg_alphaPathPtrs_next[7] = coreController_next_alphaPathPtrs[7];
    coreController_reg_alphaPathPtrs_next[8] = coreController_next_alphaPathPtrs[8];
    coreController_reg_alphaPathPtrs_next[9] = coreController_next_alphaPathPtrs[9];
    coreController_reg_alphaPathPtrs_next[10] = coreController_next_alphaPathPtrs[10];
    coreController_reg_alphaPathPtrs_next[11] = coreController_next_alphaPathPtrs[11];
    coreController_reg_alphaPathPtrs_next[12] = coreController_next_alphaPathPtrs[12];
    coreController_reg_alphaPathPtrs_next[13] = coreController_next_alphaPathPtrs[13];
    coreController_reg_alphaPathPtrs_next[14] = coreController_next_alphaPathPtrs[14];
    coreController_reg_alphaPathPtrs_next[15] = coreController_next_alphaPathPtrs[15];
    coreController_reg_alphaPathPtrs_next[16] = coreController_next_alphaPathPtrs[16];
    coreController_reg_alphaPathPtrs_next[17] = coreController_next_alphaPathPtrs[17];
    coreController_reg_alphaPathPtrs_next[18] = coreController_next_alphaPathPtrs[18];
    coreController_reg_alphaPathPtrs_next[19] = coreController_next_alphaPathPtrs[19];
    coreController_reg_betaPathPtrs_next[0] = coreController_next_betaPathPtrs[0];
    coreController_reg_betaPathPtrs_next[1] = coreController_next_betaPathPtrs[1];
    coreController_reg_betaPathPtrs_next[2] = coreController_next_betaPathPtrs[2];
    coreController_reg_betaPathPtrs_next[3] = coreController_next_betaPathPtrs[3];
    coreController_reg_betaPathPtrs_next[4] = coreController_next_betaPathPtrs[4];
    coreController_reg_betaPathPtrs_next[5] = coreController_next_betaPathPtrs[5];
    coreController_reg_betaPathPtrs_next[6] = coreController_next_betaPathPtrs[6];
    coreController_reg_betaPathPtrs_next[7] = coreController_next_betaPathPtrs[7];
    coreController_reg_betaPathPtrs_next[8] = coreController_next_betaPathPtrs[8];
    coreController_reg_betaPathPtrs_next[9] = coreController_next_betaPathPtrs[9];
    coreController_reg_betaPathPtrs_next[10] = coreController_next_betaPathPtrs[10];
    coreController_reg_betaPathPtrs_next[11] = coreController_next_betaPathPtrs[11];
    coreController_reg_betaPathPtrs_next[12] = coreController_next_betaPathPtrs[12];
    coreController_reg_betaPathPtrs_next[13] = coreController_next_betaPathPtrs[13];
    coreController_reg_betaPathPtrs_next[14] = coreController_next_betaPathPtrs[14];
    coreController_reg_betaPathPtrs_next[15] = coreController_next_betaPathPtrs[15];
    coreController_reg_betaPathPtrs_next[16] = coreController_next_betaPathPtrs[16];
    coreController_reg_betaPathPtrs_next[17] = coreController_next_betaPathPtrs[17];
    coreController_reg_betaPathPtrs_next[18] = coreController_next_betaPathPtrs[18];
    coreController_reg_betaPathPtrs_next[19] = coreController_next_betaPathPtrs[19];
    decWrStage_1 = coreController_reg_wrStage;
    decWrBlock_1 = coreController_reg_wrBlkAddr;
    decLowerWrEn_1 = coreController_reg_wrEnLower;
    decUpperWrEn_1 = coreController_reg_wrEnUpper;
    rdStage_1 = coreController_reg_rdStage;
    rdBlock_1 = coreController_reg_rdBlkAddr;
    makeDec_1 = coreController_reg_decisionEn;
    betaRdPath[0] = coreController_reg_betaPathPtrs[32'sd10 * coreController_sub_temp];
    coreController_mul_temp_38 = 32'sd10 * coreController_sub_temp;
    betaRdPath[1] = coreController_reg_betaPathPtrs[32'sd1 + coreController_mul_temp_38];
    coreController_mul_temp_39 = 32'sd10 * coreController_sub_temp;
    betaRdPath[2] = coreController_reg_betaPathPtrs[32'sd2 + coreController_mul_temp_39];
    coreController_mul_temp_40 = 32'sd10 * coreController_sub_temp;
    betaRdPath[3] = coreController_reg_betaPathPtrs[32'sd3 + coreController_mul_temp_40];
    coreController_mul_temp_41 = 32'sd10 * coreController_sub_temp;
    betaRdPath[4] = coreController_reg_betaPathPtrs[32'sd4 + coreController_mul_temp_41];
    coreController_mul_temp_42 = 32'sd10 * coreController_sub_temp;
    betaRdPath[5] = coreController_reg_betaPathPtrs[32'sd5 + coreController_mul_temp_42];
    coreController_mul_temp_43 = 32'sd10 * coreController_sub_temp;
    betaRdPath[6] = coreController_reg_betaPathPtrs[32'sd6 + coreController_mul_temp_43];
    coreController_mul_temp_44 = 32'sd10 * coreController_sub_temp;
    betaRdPath[7] = coreController_reg_betaPathPtrs[32'sd7 + coreController_mul_temp_44];
    coreController_mul_temp_45 = 32'sd10 * coreController_sub_temp;
    betaRdPath[8] = coreController_reg_betaPathPtrs[32'sd8 + coreController_mul_temp_45];
    coreController_mul_temp_46 = 32'sd10 * coreController_sub_temp;
    betaRdPath[9] = coreController_reg_betaPathPtrs[32'sd9 + coreController_mul_temp_46];
    wrPath_1 = coreController_reg_pathIdx;
    pathCnt_1 = coreController_reg_activePaths;
    mode_1 = coreController_reg_mode;
    betaSrc_1 = coreController_reg_rdStage >= 4'b0100;
    startOutput_1 = coreController_reg_startOutput;
    leafIdx_1 = coreController_reg_leafIdx;
  end



  assign betaRdPath_0 = betaRdPath[0];

  assign betaRdPath_1 = betaRdPath[1];

  assign betaRdPath_2 = betaRdPath[2];

  assign betaRdPath_3 = betaRdPath[3];

  assign betaRdPath_4 = betaRdPath[4];

  assign betaRdPath_5 = betaRdPath[5];

  assign betaRdPath_6 = betaRdPath[6];

  assign betaRdPath_7 = betaRdPath[7];

  assign betaRdPath_8 = betaRdPath[8];

  assign betaRdPath_9 = betaRdPath[9];

  assign decWrStage = decWrStage_1;

  assign decWrBlock = decWrBlock_1;

  assign decLowerWrEn = decLowerWrEn_1;

  assign decUpperWrEn = decUpperWrEn_1;

  assign rdStage = rdStage_1;

  assign rdBlock = rdBlock_1;

  assign makeDec = makeDec_1;

  assign alphaRdPath = alphaRdPath_1;

  assign wrPath = wrPath_1;

  assign pathCnt = pathCnt_1;

  assign mode = mode_1;

  assign betaSrc = betaSrc_1;

  assign startOutput = startOutput_1;

  assign leafIdx = leafIdx_1;

endmodule  // coreController

