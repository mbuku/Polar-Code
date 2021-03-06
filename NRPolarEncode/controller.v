// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\controller.v
// Created: 2022-01-15 05:10:42
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controller
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/controller
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controller
          (clk,
           reset,
           enb,
           ctrlIn_start,
           ctrlIn_end,
           ctrlIn_valid,
           KIn,
           EIn,
           frameEnd,
           configured,
           configValid,
           NSub1,
           wrAddr,
           wrEn,
           valid,
           KOut,
           EOut,
           sequenceIdx,
           reconfig,
           rstCore,
           nextFrame);


  input   clk;
  input   reset;
  input   enb;
  input   ctrlIn_start;
  input   ctrlIn_end;
  input   ctrlIn_valid;
  input   [9:0] KIn;  // ufix10
  input   [13:0] EIn;  // ufix14
  input   frameEnd;
  input   configured;
  input   configValid;
  input   [9:0] NSub1;  // ufix10
  output  [9:0] wrAddr;  // ufix10
  output  wrEn;
  output  valid;
  output  [9:0] KOut;  // ufix10
  output  [16:0] EOut;  // ufix17
  output  [10:0] sequenceIdx;  // ufix11
  output  reconfig;
  output  rstCore;
  output  nextFrame;


  reg [9:0] wrAddr_1;  // ufix10
  reg  wrEn_1;
  reg  valid_1;
  reg [9:0] KOut_1;  // ufix10
  reg [16:0] EOut_1;  // ufix17
  reg [10:0] sequenceIdx_1;  // ufix11
  reg  reconfig_1;
  reg  rstCore_1;
  reg  nextFrame_1;
  reg [1:0] reg_state;  // ufix2
  reg [9:0] reg_K;  // ufix10
  reg [16:0] reg_E;  // ufix17
  reg  reg_waitConfig;
  reg  reg_startConfig;
  reg  reg_rstCore;
  reg  reg_en;
  reg [9:0] reg_addr;  // ufix10
  reg [10:0] reg_sequenceIdx;  // ufix11
  reg  reg_waitFrame;
  reg  reg_valid;
  reg [1:0] reg_state_next;  // ufix2
  reg [9:0] reg_K_next;  // ufix10
  reg [16:0] reg_E_next;  // ufix17
  reg  reg_waitConfig_next;
  reg  reg_startConfig_next;
  reg  reg_rstCore_next;
  reg  reg_en_next;
  reg [9:0] reg_addr_next;  // ufix10
  reg [10:0] reg_sequenceIdx_next;  // ufix11
  reg  reg_waitFrame_next;
  reg  reg_valid_next;
  reg  t_0;
  reg  guard1;
  reg [11:0] add_temp;  // ufix12
  reg [11:0] add_temp_0;  // ufix12
  reg [16:0] t_1;  // ufix17
  reg [10:0] t_2;  // ufix11
  reg [16:0] t_3;  // ufix17
  reg [16:0] t_4;  // ufix17
  reg [10:0] t_5;  // ufix11
  reg [16:0] t_6;  // ufix17
  reg [10:0] t_7;  // ufix11
  reg [11:0] t_8;  // ufix12
  reg [11:0] t_9;  // ufix12


  always @(posedge clk or posedge reset)
    begin : whdledac_c14_controller_process
      if (reset == 1'b1) begin
        reg_state <= 2'b00;
        reg_K <= 10'b0000000000;
        reg_E <= 17'b00000000000000000;
        reg_waitConfig <= 1'b0;
        reg_startConfig <= 1'b0;
        reg_rstCore <= 1'b0;
        reg_en <= 1'b0;
        reg_addr <= 10'b0000000000;
        reg_sequenceIdx <= 11'b00000000000;
        reg_waitFrame <= 1'b0;
        reg_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          reg_state <= reg_state_next;
          reg_K <= reg_K_next;
          reg_E <= reg_E_next;
          reg_waitConfig <= reg_waitConfig_next;
          reg_startConfig <= reg_startConfig_next;
          reg_rstCore <= reg_rstCore_next;
          reg_en <= reg_en_next;
          reg_addr <= reg_addr_next;
          reg_sequenceIdx <= reg_sequenceIdx_next;
          reg_waitFrame <= reg_waitFrame_next;
          reg_valid <= reg_valid_next;
        end
      end
    end

  always @(EIn, KIn, NSub1, configValid, configured, ctrlIn_end, ctrlIn_start,
       ctrlIn_valid, frameEnd, reg_E, reg_K, reg_addr, reg_en, reg_rstCore,
       reg_sequenceIdx, reg_startConfig, reg_state, reg_valid, reg_waitConfig,
       reg_waitFrame) begin
    t_0 = 1'b0;
    add_temp = 12'b000000000000;
    add_temp_0 = 12'b000000000000;
    t_1 = 17'b00000000000000000;
    t_2 = 11'b00000000000;
    t_3 = 17'b00000000000000000;
    t_4 = 17'b00000000000000000;
    t_5 = 11'b00000000000;
    t_6 = 17'b00000000000000000;
    t_7 = 11'b00000000000;
    t_8 = 12'b000000000000;
    t_9 = 12'b000000000000;
    //this needs to feedthrough so nextFrame reacts 1 cycle after start/end
    guard1 = 1'b0;
    if (reg_state == 2'b00) begin
      t_0 = ctrlIn_start && ctrlIn_valid;
      if ( ! t_0) begin
        nextFrame_1 = 1'b1;
      end
      else begin
        guard1 = 1'b1;
      end
    end
    else begin
      guard1 = 1'b1;
    end
    if (guard1) begin
      t_7 = {1'b0, reg_K};
      nextFrame_1 = ((ctrlIn_end && ctrlIn_valid) && (reg_state == 2'b01)) && ( ! configValid || (reg_sequenceIdx != (t_7 - 11'b00000000010)));
    end
    reg_state_next = reg_state;
    reg_K_next = reg_K;
    reg_E_next = reg_E;
    reg_waitConfig_next = reg_waitConfig;
    reg_startConfig_next = reg_startConfig;
    reg_rstCore_next = reg_rstCore;
    reg_en_next = reg_en;
    reg_addr_next = reg_addr;
    reg_sequenceIdx_next = reg_sequenceIdx;
    reg_waitFrame_next = reg_waitFrame;
    reg_valid_next = reg_valid;
    if (frameEnd) begin
      reg_waitFrame_next = 1'b0;
    end
    if (reg_startConfig) begin
      reg_startConfig_next = 1'b0;
    end
    if (reg_rstCore) begin
      reg_rstCore_next = 1'b0;
    end
    case ( reg_state)
      2'b00 :
        begin
          if (ctrlIn_start && ctrlIn_valid) begin
            reg_state_next = 2'b01;
            reg_en_next = 1'b1;
            reg_addr_next = 10'b0000000000;
            reg_sequenceIdx_next = 11'b00000000000;
            //cache K and E on frame start if they have changed
            t_6 = {3'b0, EIn};
            if ((KIn != reg_K) || (t_6 != reg_E)) begin
              //internals must be reconfigured if K or E change
              reg_waitConfig_next = 1'b1;
              reg_startConfig_next = 1'b1;
              reg_K_next = KIn;
              reg_E_next = {3'b0, EIn};
            end
          end
        end
      2'b01 :
        begin
          //write input msg into buffer
          if (ctrlIn_valid) begin
            reg_en_next = 1'b1;
            t_8 = {1'b0, reg_sequenceIdx};
            add_temp = t_8 + 12'b000000000001;
            if (add_temp[11] != 1'b0) begin
              reg_sequenceIdx_next = 11'b11111111111;
            end
            else begin
              reg_sequenceIdx_next = add_temp[10:0];
            end
            if (ctrlIn_start) begin
              reg_addr_next = 10'b0000000000;
              reg_sequenceIdx_next = 11'b00000000000;
              //cache K and E on frame start if they have changed
              t_4 = {3'b0, EIn};
              if ((KIn != reg_K) || (t_4 != reg_E)) begin
                //internals must be reconfigured if K or E change
                reg_waitConfig_next = 1'b1;
                reg_startConfig_next = 1'b1;
                reg_K_next = KIn;
                reg_E_next = {3'b0, EIn};
              end
            end
            else begin
              if (ctrlIn_end) begin
                //don't process if the frame is invalid
                t_5 = {1'b0, reg_K};
                if ( ! configValid || (reg_sequenceIdx != (t_5 - 11'b00000000010))) begin
                  reg_state_next = 2'b00;
                end
                else begin
                  //wait for reconfig if encode parameters have changed
                  if (reg_waitConfig) begin
                    reg_state_next = 2'b10;
                  end
                  else begin
                    reg_state_next = 2'b11;
                    reg_valid_next = 1'b1;
                  end
                end
                reg_sequenceIdx_next = 11'b00000000000;
              end
              reg_addr_next = reg_addr + 10'b0000000001;
            end
          end
          else begin
            reg_en_next = 1'b0;
          end
        end
      2'b10 :
        begin
          //wait for configuration to be completed
          reg_en_next = 1'b0;
          reg_addr_next = 10'b0000000000;
          if (ctrlIn_start && ctrlIn_valid) begin
            reg_state_next = 2'b01;
            reg_en_next = 1'b1;
            reg_sequenceIdx_next = 11'b00000000000;
            //cache K and E on frame start if they have changed
            t_3 = {3'b0, EIn};
            if ((KIn != reg_K) || (t_3 != reg_E)) begin
              //internals must be reconfigured if K or E change
              reg_waitConfig_next = 1'b1;
              reg_startConfig_next = 1'b1;
              reg_K_next = KIn;
              reg_E_next = {3'b0, EIn};
            end
          end
          else if (configured && ( ! reg_waitFrame)) begin
            reg_state_next = 2'b11;
            reg_waitConfig_next = 1'b0;
            reg_valid_next = 1'b1;
          end
        end
      2'b11 :
        begin
          if (ctrlIn_start && ctrlIn_valid) begin
            reg_state_next = 2'b01;
            reg_rstCore_next = 1'b1;
            reg_en_next = 1'b1;
            reg_valid_next = 1'b0;
            reg_sequenceIdx_next = 11'b00000000000;
            //cache K and E on frame start if they have changed
            t_1 = {3'b0, EIn};
            if ((KIn != reg_K) || (t_1 != reg_E)) begin
              //internals must be reconfigured if K or E change
              reg_waitConfig_next = 1'b1;
              reg_startConfig_next = 1'b1;
              reg_K_next = KIn;
              reg_E_next = {3'b0, EIn};
            end
          end
          else begin
            //read msg from buffer and map onto encode input (size k to size N)
            reg_en_next = 1'b0;
            reg_addr_next = 10'b0000000000;
            t_2 = {1'b0, NSub1};
            if (reg_sequenceIdx == t_2) begin
              reg_state_next = 2'b00;
              reg_waitFrame_next = 1'b1;
              reg_valid_next = 1'b0;
              reg_sequenceIdx_next = 11'b00000000000;
            end
            else begin
              t_9 = {1'b0, reg_sequenceIdx};
              add_temp_0 = t_9 + 12'b000000000001;
              if (add_temp_0[11] != 1'b0) begin
                reg_sequenceIdx_next = 11'b11111111111;
              end
              else begin
                reg_sequenceIdx_next = add_temp_0[10:0];
              end
            end
          end
        end
    endcase
    wrAddr_1 = reg_addr;
    wrEn_1 = reg_en;
    valid_1 = reg_valid;
    KOut_1 = reg_K;
    EOut_1 = reg_E;
    sequenceIdx_1 = reg_sequenceIdx;
    reconfig_1 = reg_startConfig;
    rstCore_1 = reg_rstCore;
  end



  assign wrAddr = wrAddr_1;

  assign wrEn = wrEn_1;

  assign valid = valid_1;

  assign KOut = KOut_1;

  assign EOut = EOut_1;

  assign sequenceIdx = sequenceIdx_1;

  assign reconfig = reconfig_1;

  assign rstCore = rstCore_1;

  assign nextFrame = nextFrame_1;

endmodule  // controller

