`timescale 1 ns / 1 ns

module LLR_Loader
          (clk,
           reset,
           enb,
           dataIn,
           startIn,
           endIn,
           validIn,
           NSub1,
           startOutput,
           configValid,
           rxBuffer_0,
           rxBuffer_1,
           rxBuffer_2,
           rxBuffer_3,
           rxBuffer_4,
           rxBuffer_5,
           rxBuffer_6,
           rxBuffer_7,
           rxBuffer_8,
           rxBuffer_9,
           rxBuffer_10,
           rxBuffer_11,
           rxBuffer_12,
           rxBuffer_13,
           rxBuffer_14,
           rxBuffer_15,
           rxSel,
           chnlBlock,
           chnlLowerWrEn,
           chnlUpperWrEn,
           nextFrame);


  input   clk;
  input   reset;
  input   enb;
  input   signed [7:0] dataIn;  // sfix8_En5
  input   startIn;
  input   endIn;
  input   validIn;
  input   [9:0] NSub1;  // ufix10
  input   startOutput;
  input   configValid;
  output  signed [7:0] rxBuffer_0;  // sfix8_En5
  output  signed [7:0] rxBuffer_1;  // sfix8_En5
  output  signed [7:0] rxBuffer_2;  // sfix8_En5
  output  signed [7:0] rxBuffer_3;  // sfix8_En5
  output  signed [7:0] rxBuffer_4;  // sfix8_En5
  output  signed [7:0] rxBuffer_5;  // sfix8_En5
  output  signed [7:0] rxBuffer_6;  // sfix8_En5
  output  signed [7:0] rxBuffer_7;  // sfix8_En5
  output  signed [7:0] rxBuffer_8;  // sfix8_En5
  output  signed [7:0] rxBuffer_9;  // sfix8_En5
  output  signed [7:0] rxBuffer_10;  // sfix8_En5
  output  signed [7:0] rxBuffer_11;  // sfix8_En5
  output  signed [7:0] rxBuffer_12;  // sfix8_En5
  output  signed [7:0] rxBuffer_13;  // sfix8_En5
  output  signed [7:0] rxBuffer_14;  // sfix8_En5
  output  signed [7:0] rxBuffer_15;  // sfix8_En5
  output  rxSel;
  output  [4:0] chnlBlock;  // ufix5
  output  chnlLowerWrEn;
  output  chnlUpperWrEn;
  output  nextFrame;


  reg  channelLoader_reg_rxSel;
  reg signed [7:0] channelLoader_reg_rxFrame [0:15];  // sfix8_En5 [16]
  reg [3:0] channelLoader_reg_frameIdx;  // ufix4
  reg [4:0] channelLoader_reg_wrBlkAddr;  // ufix5
  reg  channelLoader_reg_wrEnLower;
  reg  channelLoader_reg_wrEnUpper;
  reg  channelLoader_reg_nextFrame;
  reg  channelLoader_reg_upper;
  reg  channelLoader_reg_endIn;
  reg  channelLoader_reg_started;
  reg [10:0] channelLoader_reg_sampleCounter;  // ufix11
  reg  channelLoader_reg_rxSel_next;
  reg signed [7:0] channelLoader_reg_rxFrame_next [0:15];  // sfix8_En5 [16]
  reg [3:0] channelLoader_reg_frameIdx_next;  // ufix4
  reg [4:0] channelLoader_reg_wrBlkAddr_next;  // ufix5
  reg  channelLoader_reg_wrEnLower_next;
  reg  channelLoader_reg_wrEnUpper_next;
  reg  channelLoader_reg_nextFrame_next;
  reg  channelLoader_reg_upper_next;
  reg  channelLoader_reg_endIn_next;
  reg  channelLoader_reg_started_next;
  reg [10:0] channelLoader_reg_sampleCounter_next;  // ufix11
  reg signed [7:0] rxBuffer [0:15];  // sfix8_En5 [16]
  reg  rxSel_1;
  reg [4:0] chnlBlock_1;  // ufix5
  reg  chnlLowerWrEn_1;
  reg  chnlUpperWrEn_1;
  reg  nextFrame_1;
  reg signed [7:0] channelLoader_next_rxFrame [0:15];  // sfix8_En5 [16]
  reg  channelLoader_t_0_0;
  reg [10:0] channelLoader_sub_temp;  // ufix11
  reg [4:0] channelLoader_add_temp;  // ufix5
  reg [10:0] channelLoader_sub_temp_0;  // ufix11
  reg [5:0] channelLoader_t_1;  // ufix6
  reg [9:0] channelLoader_t_2_0;  // ufix10
  reg [5:0] channelLoader_t_3;  // ufix6
  reg [10:0] channelLoader_t_4;  // ufix11
  reg [4:0] channelLoader_t_5;  // ufix5
  reg [10:0] channelLoader_t_6;  // ufix11


  // channelLoader - loads input channel LLRs into treeMem
  always @(posedge clk or posedge reset)
    begin : channelLoader_1_process
      if (reset == 1'b1) begin
        channelLoader_reg_rxSel <= 1'b0;
        channelLoader_reg_rxFrame[0] <= 8'sb00000000;
        channelLoader_reg_rxFrame[1] <= 8'sb00000000;
        channelLoader_reg_rxFrame[2] <= 8'sb00000000;
        channelLoader_reg_rxFrame[3] <= 8'sb00000000;
        channelLoader_reg_rxFrame[4] <= 8'sb00000000;
        channelLoader_reg_rxFrame[5] <= 8'sb00000000;
        channelLoader_reg_rxFrame[6] <= 8'sb00000000;
        channelLoader_reg_rxFrame[7] <= 8'sb00000000;
        channelLoader_reg_rxFrame[8] <= 8'sb00000000;
        channelLoader_reg_rxFrame[9] <= 8'sb00000000;
        channelLoader_reg_rxFrame[10] <= 8'sb00000000;
        channelLoader_reg_rxFrame[11] <= 8'sb00000000;
        channelLoader_reg_rxFrame[12] <= 8'sb00000000;
        channelLoader_reg_rxFrame[13] <= 8'sb00000000;
        channelLoader_reg_rxFrame[14] <= 8'sb00000000;
        channelLoader_reg_rxFrame[15] <= 8'sb00000000;
        channelLoader_reg_frameIdx <= 4'b0000;
        channelLoader_reg_wrBlkAddr <= 5'b00000;
        channelLoader_reg_wrEnLower <= 1'b0;
        channelLoader_reg_wrEnUpper <= 1'b0;
        channelLoader_reg_nextFrame <= 1'b1;
        channelLoader_reg_upper <= 1'b0;
        channelLoader_reg_endIn <= 1'b0;
        channelLoader_reg_started <= 1'b0;
        channelLoader_reg_sampleCounter <= 11'b00000000000;
      end
      else begin
        if (enb) begin
          channelLoader_reg_rxSel <= channelLoader_reg_rxSel_next;
          channelLoader_reg_rxFrame[0] <= channelLoader_reg_rxFrame_next[0];
          channelLoader_reg_rxFrame[1] <= channelLoader_reg_rxFrame_next[1];
          channelLoader_reg_rxFrame[2] <= channelLoader_reg_rxFrame_next[2];
          channelLoader_reg_rxFrame[3] <= channelLoader_reg_rxFrame_next[3];
          channelLoader_reg_rxFrame[4] <= channelLoader_reg_rxFrame_next[4];
          channelLoader_reg_rxFrame[5] <= channelLoader_reg_rxFrame_next[5];
          channelLoader_reg_rxFrame[6] <= channelLoader_reg_rxFrame_next[6];
          channelLoader_reg_rxFrame[7] <= channelLoader_reg_rxFrame_next[7];
          channelLoader_reg_rxFrame[8] <= channelLoader_reg_rxFrame_next[8];
          channelLoader_reg_rxFrame[9] <= channelLoader_reg_rxFrame_next[9];
          channelLoader_reg_rxFrame[10] <= channelLoader_reg_rxFrame_next[10];
          channelLoader_reg_rxFrame[11] <= channelLoader_reg_rxFrame_next[11];
          channelLoader_reg_rxFrame[12] <= channelLoader_reg_rxFrame_next[12];
          channelLoader_reg_rxFrame[13] <= channelLoader_reg_rxFrame_next[13];
          channelLoader_reg_rxFrame[14] <= channelLoader_reg_rxFrame_next[14];
          channelLoader_reg_rxFrame[15] <= channelLoader_reg_rxFrame_next[15];
          channelLoader_reg_frameIdx <= channelLoader_reg_frameIdx_next;
          channelLoader_reg_wrBlkAddr <= channelLoader_reg_wrBlkAddr_next;
          channelLoader_reg_wrEnLower <= channelLoader_reg_wrEnLower_next;
          channelLoader_reg_wrEnUpper <= channelLoader_reg_wrEnUpper_next;
          channelLoader_reg_nextFrame <= channelLoader_reg_nextFrame_next;
          channelLoader_reg_upper <= channelLoader_reg_upper_next;
          channelLoader_reg_endIn <= channelLoader_reg_endIn_next;
          channelLoader_reg_started <= channelLoader_reg_started_next;
          channelLoader_reg_sampleCounter <= channelLoader_reg_sampleCounter_next;
        end
      end
    end

  always @* begin
    channelLoader_t_0_0 = 1'b0;
    channelLoader_add_temp = 5'b00000;
    channelLoader_sub_temp_0 = 11'b00000000000;
    channelLoader_t_2_0 = 10'b0000000000;
    channelLoader_t_1 = 6'b000000;
    channelLoader_t_3 = 6'b000000;
    channelLoader_t_5 = 5'b00000;
    channelLoader_t_6 = 11'b00000000000;
    channelLoader_reg_rxFrame_next[0] = channelLoader_reg_rxFrame[0];
    channelLoader_reg_rxFrame_next[1] = channelLoader_reg_rxFrame[1];
    channelLoader_reg_rxFrame_next[2] = channelLoader_reg_rxFrame[2];
    channelLoader_reg_rxFrame_next[3] = channelLoader_reg_rxFrame[3];
    channelLoader_reg_rxFrame_next[4] = channelLoader_reg_rxFrame[4];
    channelLoader_reg_rxFrame_next[5] = channelLoader_reg_rxFrame[5];
    channelLoader_reg_rxFrame_next[6] = channelLoader_reg_rxFrame[6];
    channelLoader_reg_rxFrame_next[7] = channelLoader_reg_rxFrame[7];
    channelLoader_reg_rxFrame_next[8] = channelLoader_reg_rxFrame[8];
    channelLoader_reg_rxFrame_next[9] = channelLoader_reg_rxFrame[9];
    channelLoader_reg_rxFrame_next[10] = channelLoader_reg_rxFrame[10];
    channelLoader_reg_rxFrame_next[11] = channelLoader_reg_rxFrame[11];
    channelLoader_reg_rxFrame_next[12] = channelLoader_reg_rxFrame[12];
    channelLoader_reg_rxFrame_next[13] = channelLoader_reg_rxFrame[13];
    channelLoader_reg_rxFrame_next[14] = channelLoader_reg_rxFrame[14];
    channelLoader_reg_rxFrame_next[15] = channelLoader_reg_rxFrame[15];
    channelLoader_t_4 = {1'b0, NSub1};
    channelLoader_sub_temp = channelLoader_t_4 - 11'b00000000001;
    if ((channelLoader_reg_nextFrame || startOutput) || (((endIn && validIn) && channelLoader_reg_started) && ((channelLoader_reg_sampleCounter != channelLoader_sub_temp) ||  ! configValid))) begin
      channelLoader_t_0_0 = startIn && validIn;
      nextFrame_1 =  ! channelLoader_t_0_0;
    end
    else begin
      nextFrame_1 = 1'b0;
    end
    channelLoader_reg_rxSel_next = channelLoader_reg_rxSel;
    channelLoader_next_rxFrame[0] = channelLoader_reg_rxFrame[0];
    channelLoader_next_rxFrame[1] = channelLoader_reg_rxFrame[1];
    channelLoader_next_rxFrame[2] = channelLoader_reg_rxFrame[2];
    channelLoader_next_rxFrame[3] = channelLoader_reg_rxFrame[3];
    channelLoader_next_rxFrame[4] = channelLoader_reg_rxFrame[4];
    channelLoader_next_rxFrame[5] = channelLoader_reg_rxFrame[5];
    channelLoader_next_rxFrame[6] = channelLoader_reg_rxFrame[6];
    channelLoader_next_rxFrame[7] = channelLoader_reg_rxFrame[7];
    channelLoader_next_rxFrame[8] = channelLoader_reg_rxFrame[8];
    channelLoader_next_rxFrame[9] = channelLoader_reg_rxFrame[9];
    channelLoader_next_rxFrame[10] = channelLoader_reg_rxFrame[10];
    channelLoader_next_rxFrame[11] = channelLoader_reg_rxFrame[11];
    channelLoader_next_rxFrame[12] = channelLoader_reg_rxFrame[12];
    channelLoader_next_rxFrame[13] = channelLoader_reg_rxFrame[13];
    channelLoader_next_rxFrame[14] = channelLoader_reg_rxFrame[14];
    channelLoader_next_rxFrame[15] = channelLoader_reg_rxFrame[15];
    channelLoader_reg_frameIdx_next = channelLoader_reg_frameIdx;
    channelLoader_reg_wrBlkAddr_next = channelLoader_reg_wrBlkAddr;
    channelLoader_reg_nextFrame_next = channelLoader_reg_nextFrame;
    channelLoader_reg_upper_next = channelLoader_reg_upper;
    channelLoader_reg_started_next = channelLoader_reg_started;
    channelLoader_reg_sampleCounter_next = channelLoader_reg_sampleCounter;
    channelLoader_reg_endIn_next = (endIn && validIn) && ( ! startIn);
    if (startIn && validIn) begin
      channelLoader_reg_rxSel_next = 1'b0;
      channelLoader_next_rxFrame[0] = dataIn;
      channelLoader_reg_frameIdx_next = 4'b0001;
      channelLoader_reg_wrBlkAddr_next = 5'b00000;
      channelLoader_reg_wrEnLower_next = 1'b0;
      channelLoader_reg_wrEnUpper_next = 1'b0;
      channelLoader_reg_nextFrame_next = 1'b0;
      channelLoader_reg_upper_next = 1'b0;
      channelLoader_reg_started_next = 1'b1;
      channelLoader_reg_sampleCounter_next = 11'b00000000000;
    end
    else if (channelLoader_reg_endIn && channelLoader_reg_started) begin
      if ( ! channelLoader_reg_nextFrame) begin
        channelLoader_reg_rxSel_next = 1'b1;
      end
      channelLoader_reg_wrBlkAddr_next = 5'b00000;
      channelLoader_reg_wrEnLower_next = 1'b0;
      channelLoader_reg_wrEnUpper_next = 1'b0;
      channelLoader_reg_started_next = 1'b0;
    end
    else if (validIn) begin
      channelLoader_t_5 = {1'b0, channelLoader_reg_frameIdx};
      channelLoader_add_temp = channelLoader_t_5 + 5'b00001;
      channelLoader_next_rxFrame[$signed({1'b0, channelLoader_add_temp}) - 32'sd1] = dataIn;
      if (channelLoader_reg_frameIdx == 4'b1111) begin
        channelLoader_reg_frameIdx_next = 4'b0000;
        channelLoader_reg_wrEnLower_next =  ! channelLoader_reg_upper;
        channelLoader_reg_wrEnUpper_next = channelLoader_reg_upper;
      end
      else begin
        channelLoader_reg_wrEnLower_next = 1'b0;
        channelLoader_reg_wrEnUpper_next = 1'b0;
        channelLoader_reg_frameIdx_next = channelLoader_reg_frameIdx + 4'b0001;
      end
      channelLoader_reg_sampleCounter_next = channelLoader_reg_sampleCounter + 11'b00000000001;
      channelLoader_t_6 = {1'b0, NSub1};
      channelLoader_sub_temp_0 = channelLoader_t_6 - 11'b00000000001;
      if ((endIn && channelLoader_reg_started) && ((channelLoader_reg_sampleCounter != channelLoader_sub_temp_0) ||  ! configValid)) begin
        channelLoader_reg_nextFrame_next = 1'b1;
      end
    end
    else begin
      if (startOutput) begin
        channelLoader_reg_rxSel_next = 1'b0;
        channelLoader_reg_nextFrame_next = 1'b1;
      end
      channelLoader_reg_wrEnLower_next = 1'b0;
      channelLoader_reg_wrEnUpper_next = 1'b0;
    end
    if (channelLoader_reg_wrEnLower || channelLoader_reg_wrEnUpper) begin
      channelLoader_t_1 = {1'b0, channelLoader_reg_wrBlkAddr};
      channelLoader_t_2_0 = NSub1 >> 32'd5;
      channelLoader_t_3 = channelLoader_t_2_0[5:0];
      if (channelLoader_t_1 == channelLoader_t_3) begin
        channelLoader_reg_wrBlkAddr_next = 5'b00000;
        channelLoader_reg_upper_next =  ! channelLoader_reg_upper;
      end
      else begin
        channelLoader_reg_wrBlkAddr_next = channelLoader_reg_wrBlkAddr + 5'b00001;
      end
    end
    channelLoader_reg_rxFrame_next[0] = channelLoader_next_rxFrame[0];
    channelLoader_reg_rxFrame_next[1] = channelLoader_next_rxFrame[1];
    channelLoader_reg_rxFrame_next[2] = channelLoader_next_rxFrame[2];
    channelLoader_reg_rxFrame_next[3] = channelLoader_next_rxFrame[3];
    channelLoader_reg_rxFrame_next[4] = channelLoader_next_rxFrame[4];
    channelLoader_reg_rxFrame_next[5] = channelLoader_next_rxFrame[5];
    channelLoader_reg_rxFrame_next[6] = channelLoader_next_rxFrame[6];
    channelLoader_reg_rxFrame_next[7] = channelLoader_next_rxFrame[7];
    channelLoader_reg_rxFrame_next[8] = channelLoader_next_rxFrame[8];
    channelLoader_reg_rxFrame_next[9] = channelLoader_next_rxFrame[9];
    channelLoader_reg_rxFrame_next[10] = channelLoader_next_rxFrame[10];
    channelLoader_reg_rxFrame_next[11] = channelLoader_next_rxFrame[11];
    channelLoader_reg_rxFrame_next[12] = channelLoader_next_rxFrame[12];
    channelLoader_reg_rxFrame_next[13] = channelLoader_next_rxFrame[13];
    channelLoader_reg_rxFrame_next[14] = channelLoader_next_rxFrame[14];
    channelLoader_reg_rxFrame_next[15] = channelLoader_next_rxFrame[15];
    rxBuffer[0] = channelLoader_reg_rxFrame[0];
    rxBuffer[1] = channelLoader_reg_rxFrame[1];
    rxBuffer[2] = channelLoader_reg_rxFrame[2];
    rxBuffer[3] = channelLoader_reg_rxFrame[3];
    rxBuffer[4] = channelLoader_reg_rxFrame[4];
    rxBuffer[5] = channelLoader_reg_rxFrame[5];
    rxBuffer[6] = channelLoader_reg_rxFrame[6];
    rxBuffer[7] = channelLoader_reg_rxFrame[7];
    rxBuffer[8] = channelLoader_reg_rxFrame[8];
    rxBuffer[9] = channelLoader_reg_rxFrame[9];
    rxBuffer[10] = channelLoader_reg_rxFrame[10];
    rxBuffer[11] = channelLoader_reg_rxFrame[11];
    rxBuffer[12] = channelLoader_reg_rxFrame[12];
    rxBuffer[13] = channelLoader_reg_rxFrame[13];
    rxBuffer[14] = channelLoader_reg_rxFrame[14];
    rxBuffer[15] = channelLoader_reg_rxFrame[15];
    rxSel_1 = channelLoader_reg_rxSel;
    chnlBlock_1 = channelLoader_reg_wrBlkAddr;
    chnlLowerWrEn_1 = channelLoader_reg_wrEnLower;
    chnlUpperWrEn_1 = channelLoader_reg_wrEnUpper;
  end



  assign rxBuffer_0 = rxBuffer[0];

  assign rxBuffer_1 = rxBuffer[1];

  assign rxBuffer_2 = rxBuffer[2];

  assign rxBuffer_3 = rxBuffer[3];

  assign rxBuffer_4 = rxBuffer[4];

  assign rxBuffer_5 = rxBuffer[5];

  assign rxBuffer_6 = rxBuffer[6];

  assign rxBuffer_7 = rxBuffer[7];

  assign rxBuffer_8 = rxBuffer[8];

  assign rxBuffer_9 = rxBuffer[9];

  assign rxBuffer_10 = rxBuffer[10];

  assign rxBuffer_11 = rxBuffer[11];

  assign rxBuffer_12 = rxBuffer[12];

  assign rxBuffer_13 = rxBuffer[13];

  assign rxBuffer_14 = rxBuffer[14];

  assign rxBuffer_15 = rxBuffer[15];

  assign rxSel = rxSel_1;

  assign chnlBlock = chnlBlock_1;

  assign chnlLowerWrEn = chnlLowerWrEn_1;

  assign chnlUpperWrEn = chnlUpperWrEn_1;

  assign nextFrame = nextFrame_1;

endmodule  // channelLoader

