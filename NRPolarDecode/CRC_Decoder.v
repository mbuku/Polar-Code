// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarDecodeHDL\CRC_Decoder.v
// Created: 2022-01-15 05:13:24
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CRC_Decoder
// Source Path: NRPolarDecodeHDL/HDL Algorithm/NR Polar Decoder/CRC Decoder
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CRC_Decoder
          (clk,
           reset,
           enb,
           dataIn,
           startIn,
           endIn,
           validIn,
           dataOut,
           startOut,
           endOut,
           validOut,
           err);


  input   clk;
  input   reset;
  input   enb;
  input   dataIn;
  input   startIn;
  input   endIn;
  input   validIn;
  output  dataOut;
  output  startOut;
  output  endOut;
  output  validOut;
  output  err;


  reg  validin_ff_1;
  wire switch_compare_1;
  wire constant;
  reg  datain_ff_1;
  reg  [0:10] dataInReg_reg;  // ufix1 [11]
  wire [0:10] dataInReg_reg_next;  // ufix1 [11]
  wire datain_reg;
  wire datain_crcgen;
  reg  startin_ff_1;
  reg  [0:10] startInReg_reg;  // ufix1 [11]
  wire [0:10] startInReg_reg_next;  // ufix1 [11]
  wire startin_reg;
  wire startin_crcgen;
  reg  endin_ff_1;
  wire dataoutgen;
  wire startoutgen;
  wire endoutgen;
  wire validoutgen;
  reg  [0:10] startOutReg_reg;  // ufix1 [11]
  wire [0:10] startOutReg_reg_next;  // ufix1 [11]
  wire startout_del;
  wire startoutgen_gated;
  reg  endOutdelay;
  wire endOut_n;
  wire endOut_nxt_state;
  reg  endOut_state;
  wire endgate_sr;
  wire local_rst_srcell_n;
  wire validOutTemp;
  wire sel_dataoutmux;
  wire switch_compare_1_1;
  reg  [0:10] dataOutReg_reg;  // ufix1 [11]
  wire [0:10] dataOutReg_reg_next;  // ufix1 [11]
  wire dataoutgen_del;
  wire dataoutgen_gated;
  reg  [0:1] dataOut_2del_reg;  // ufix1 [2]
  wire [0:1] dataOut_2del_reg_next;  // ufix1 [2]
  reg  [0:1] startOut_2del_reg;  // ufix1 [2]
  wire [0:1] startOut_2del_reg_next;  // ufix1 [2]
  wire endOut_1;
  reg  endout_ff1;
  reg  endOut_2;
  reg  [0:1] validOut_2del_reg;  // ufix1 [2]
  wire [0:1] validOut_2del_reg_next;  // ufix1 [2]
  wire endin_ffdel;
  wire enCRCBuf;
  wire switch_compare_1_2;
  reg  [0:10] crcReg_reg;  // ufix1 [11]
  wire [0:10] crcReg_reg_next;  // ufix1 [11]
  wire crc_reg;
  wire crc_reg_gated;
  reg  [0:12] crcRegDEPTH2_reg;  // ufix1 [13]
  wire [0:12] crcRegDEPTH2_reg_next;  // ufix1 [13]
  wire crc_to_mask;
  reg  endout_large;
  wire endout_orlarge;
  wire enable_maskgen;
  wire errout_bool;
  reg  err_1;


  always @(posedge clk or posedge reset)
    begin : validin_ff_process
      if (reset == 1'b1) begin
        validin_ff_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          validin_ff_1 <= validIn;
        end
      end
    end



  assign switch_compare_1 = validin_ff_1 > 1'b0;



  assign constant = 1'b0;



  always @(posedge clk or posedge reset)
    begin : datain_ff_process
      if (reset == 1'b1) begin
        datain_ff_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          datain_ff_1 <= dataIn;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : dataInReg_process
      if (reset == 1'b1) begin
        dataInReg_reg[0] <= 1'b0;
        dataInReg_reg[1] <= 1'b0;
        dataInReg_reg[2] <= 1'b0;
        dataInReg_reg[3] <= 1'b0;
        dataInReg_reg[4] <= 1'b0;
        dataInReg_reg[5] <= 1'b0;
        dataInReg_reg[6] <= 1'b0;
        dataInReg_reg[7] <= 1'b0;
        dataInReg_reg[8] <= 1'b0;
        dataInReg_reg[9] <= 1'b0;
        dataInReg_reg[10] <= 1'b0;
      end
      else begin
        if (enb && validin_ff_1) begin
          dataInReg_reg[0] <= dataInReg_reg_next[0];
          dataInReg_reg[1] <= dataInReg_reg_next[1];
          dataInReg_reg[2] <= dataInReg_reg_next[2];
          dataInReg_reg[3] <= dataInReg_reg_next[3];
          dataInReg_reg[4] <= dataInReg_reg_next[4];
          dataInReg_reg[5] <= dataInReg_reg_next[5];
          dataInReg_reg[6] <= dataInReg_reg_next[6];
          dataInReg_reg[7] <= dataInReg_reg_next[7];
          dataInReg_reg[8] <= dataInReg_reg_next[8];
          dataInReg_reg[9] <= dataInReg_reg_next[9];
          dataInReg_reg[10] <= dataInReg_reg_next[10];
        end
      end
    end

  assign datain_reg = dataInReg_reg[10];
  assign dataInReg_reg_next[0] = datain_ff_1;
  assign dataInReg_reg_next[1] = dataInReg_reg[0];
  assign dataInReg_reg_next[2] = dataInReg_reg[1];
  assign dataInReg_reg_next[3] = dataInReg_reg[2];
  assign dataInReg_reg_next[4] = dataInReg_reg[3];
  assign dataInReg_reg_next[5] = dataInReg_reg[4];
  assign dataInReg_reg_next[6] = dataInReg_reg[5];
  assign dataInReg_reg_next[7] = dataInReg_reg[6];
  assign dataInReg_reg_next[8] = dataInReg_reg[7];
  assign dataInReg_reg_next[9] = dataInReg_reg[8];
  assign dataInReg_reg_next[10] = dataInReg_reg[9];



  assign datain_crcgen = (switch_compare_1 == 1'b0 ? constant :
              datain_reg);



  always @(posedge clk or posedge reset)
    begin : startin_ff_process
      if (reset == 1'b1) begin
        startin_ff_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          startin_ff_1 <= startIn;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : startInReg_process
      if (reset == 1'b1) begin
        startInReg_reg[0] <= 1'b0;
        startInReg_reg[1] <= 1'b0;
        startInReg_reg[2] <= 1'b0;
        startInReg_reg[3] <= 1'b0;
        startInReg_reg[4] <= 1'b0;
        startInReg_reg[5] <= 1'b0;
        startInReg_reg[6] <= 1'b0;
        startInReg_reg[7] <= 1'b0;
        startInReg_reg[8] <= 1'b0;
        startInReg_reg[9] <= 1'b0;
        startInReg_reg[10] <= 1'b0;
      end
      else begin
        if (enb && validin_ff_1) begin
          startInReg_reg[0] <= startInReg_reg_next[0];
          startInReg_reg[1] <= startInReg_reg_next[1];
          startInReg_reg[2] <= startInReg_reg_next[2];
          startInReg_reg[3] <= startInReg_reg_next[3];
          startInReg_reg[4] <= startInReg_reg_next[4];
          startInReg_reg[5] <= startInReg_reg_next[5];
          startInReg_reg[6] <= startInReg_reg_next[6];
          startInReg_reg[7] <= startInReg_reg_next[7];
          startInReg_reg[8] <= startInReg_reg_next[8];
          startInReg_reg[9] <= startInReg_reg_next[9];
          startInReg_reg[10] <= startInReg_reg_next[10];
        end
      end
    end

  assign startin_reg = startInReg_reg[10];
  assign startInReg_reg_next[0] = startin_ff_1;
  assign startInReg_reg_next[1] = startInReg_reg[0];
  assign startInReg_reg_next[2] = startInReg_reg[1];
  assign startInReg_reg_next[3] = startInReg_reg[2];
  assign startInReg_reg_next[4] = startInReg_reg[3];
  assign startInReg_reg_next[5] = startInReg_reg[4];
  assign startInReg_reg_next[6] = startInReg_reg[5];
  assign startInReg_reg_next[7] = startInReg_reg[6];
  assign startInReg_reg_next[8] = startInReg_reg[7];
  assign startInReg_reg_next[9] = startInReg_reg[8];
  assign startInReg_reg_next[10] = startInReg_reg[9];



  assign startin_crcgen = validin_ff_1 & startin_reg;



  always @(posedge clk or posedge reset)
    begin : endin_ff_process
      if (reset == 1'b1) begin
        endin_ff_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          endin_ff_1 <= endIn;
        end
      end
    end



  // HDL CRC Generator
  CRCGenerator u_HDLCRCGen_inst (.clk(clk),
                                 .reset(reset),
                                 .enb(enb),
                                 .dataIn(datain_crcgen),
                                 .startIn(startin_crcgen),
                                 .endIn(endin_ff_1),
                                 .validIn(validin_ff_1),
                                 .dataOut(dataoutgen),
                                 .startOut(startoutgen),
                                 .endOut(endoutgen),
                                 .validOut(validoutgen)
                                 );

  always @(posedge clk or posedge reset)
    begin : startOutReg_process
      if (reset == 1'b1) begin
        startOutReg_reg[0] <= 1'b0;
        startOutReg_reg[1] <= 1'b0;
        startOutReg_reg[2] <= 1'b0;
        startOutReg_reg[3] <= 1'b0;
        startOutReg_reg[4] <= 1'b0;
        startOutReg_reg[5] <= 1'b0;
        startOutReg_reg[6] <= 1'b0;
        startOutReg_reg[7] <= 1'b0;
        startOutReg_reg[8] <= 1'b0;
        startOutReg_reg[9] <= 1'b0;
        startOutReg_reg[10] <= 1'b0;
      end
      else begin
        if (enb && validoutgen) begin
          startOutReg_reg[0] <= startOutReg_reg_next[0];
          startOutReg_reg[1] <= startOutReg_reg_next[1];
          startOutReg_reg[2] <= startOutReg_reg_next[2];
          startOutReg_reg[3] <= startOutReg_reg_next[3];
          startOutReg_reg[4] <= startOutReg_reg_next[4];
          startOutReg_reg[5] <= startOutReg_reg_next[5];
          startOutReg_reg[6] <= startOutReg_reg_next[6];
          startOutReg_reg[7] <= startOutReg_reg_next[7];
          startOutReg_reg[8] <= startOutReg_reg_next[8];
          startOutReg_reg[9] <= startOutReg_reg_next[9];
          startOutReg_reg[10] <= startOutReg_reg_next[10];
        end
      end
    end

  assign startout_del = startOutReg_reg[10];
  assign startOutReg_reg_next[0] = startoutgen;
  assign startOutReg_reg_next[1] = startOutReg_reg[0];
  assign startOutReg_reg_next[2] = startOutReg_reg[1];
  assign startOutReg_reg_next[3] = startOutReg_reg[2];
  assign startOutReg_reg_next[4] = startOutReg_reg[3];
  assign startOutReg_reg_next[5] = startOutReg_reg[4];
  assign startOutReg_reg_next[6] = startOutReg_reg[5];
  assign startOutReg_reg_next[7] = startOutReg_reg[6];
  assign startOutReg_reg_next[8] = startOutReg_reg[7];
  assign startOutReg_reg_next[9] = startOutReg_reg[8];
  assign startOutReg_reg_next[10] = startOutReg_reg[9];



  assign startoutgen_gated = startout_del & validoutgen;



  always @(posedge clk or posedge reset)
    begin : endRegSR_process
      if (reset == 1'b1) begin
        endOutdelay <= 1'b0;
      end
      else begin
        if (enb) begin
          endOutdelay <= endoutgen;
        end
      end
    end



  assign endOut_n =  ~ endOutdelay;



  always @(posedge clk or posedge reset)
    begin : SRcell_process
      if (reset == 1'b1) begin
        endOut_state <= 1'b0;
      end
      else begin
        if (enb) begin
          if (startoutgen == 1'b1) begin
            endOut_state <= 1'b0;
          end
          else begin
            endOut_state <= endOut_nxt_state;
          end
        end
      end
    end



  assign endgate_sr = endOut_n & endOut_state;



  assign endOut_nxt_state = startoutgen_gated | endgate_sr;



  assign local_rst_srcell_n =  ~ startoutgen;



  assign validOutTemp = local_rst_srcell_n & (endOut_nxt_state & validoutgen);



  assign sel_dataoutmux = validOutTemp & validoutgen;



  assign switch_compare_1_1 = sel_dataoutmux > 1'b0;



  always @(posedge clk or posedge reset)
    begin : dataOutReg_process
      if (reset == 1'b1) begin
        dataOutReg_reg[0] <= 1'b0;
        dataOutReg_reg[1] <= 1'b0;
        dataOutReg_reg[2] <= 1'b0;
        dataOutReg_reg[3] <= 1'b0;
        dataOutReg_reg[4] <= 1'b0;
        dataOutReg_reg[5] <= 1'b0;
        dataOutReg_reg[6] <= 1'b0;
        dataOutReg_reg[7] <= 1'b0;
        dataOutReg_reg[8] <= 1'b0;
        dataOutReg_reg[9] <= 1'b0;
        dataOutReg_reg[10] <= 1'b0;
      end
      else begin
        if (enb && validoutgen) begin
          dataOutReg_reg[0] <= dataOutReg_reg_next[0];
          dataOutReg_reg[1] <= dataOutReg_reg_next[1];
          dataOutReg_reg[2] <= dataOutReg_reg_next[2];
          dataOutReg_reg[3] <= dataOutReg_reg_next[3];
          dataOutReg_reg[4] <= dataOutReg_reg_next[4];
          dataOutReg_reg[5] <= dataOutReg_reg_next[5];
          dataOutReg_reg[6] <= dataOutReg_reg_next[6];
          dataOutReg_reg[7] <= dataOutReg_reg_next[7];
          dataOutReg_reg[8] <= dataOutReg_reg_next[8];
          dataOutReg_reg[9] <= dataOutReg_reg_next[9];
          dataOutReg_reg[10] <= dataOutReg_reg_next[10];
        end
      end
    end

  assign dataoutgen_del = dataOutReg_reg[10];
  assign dataOutReg_reg_next[0] = dataoutgen;
  assign dataOutReg_reg_next[1] = dataOutReg_reg[0];
  assign dataOutReg_reg_next[2] = dataOutReg_reg[1];
  assign dataOutReg_reg_next[3] = dataOutReg_reg[2];
  assign dataOutReg_reg_next[4] = dataOutReg_reg[3];
  assign dataOutReg_reg_next[5] = dataOutReg_reg[4];
  assign dataOutReg_reg_next[6] = dataOutReg_reg[5];
  assign dataOutReg_reg_next[7] = dataOutReg_reg[6];
  assign dataOutReg_reg_next[8] = dataOutReg_reg[7];
  assign dataOutReg_reg_next[9] = dataOutReg_reg[8];
  assign dataOutReg_reg_next[10] = dataOutReg_reg[9];



  assign dataoutgen_gated = (switch_compare_1_1 == 1'b0 ? constant :
              dataoutgen_del);



  always @(posedge clk or posedge reset)
    begin : dataOut_2del_process
      if (reset == 1'b1) begin
        dataOut_2del_reg[0] <= 1'b0;
        dataOut_2del_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          dataOut_2del_reg[0] <= dataOut_2del_reg_next[0];
          dataOut_2del_reg[1] <= dataOut_2del_reg_next[1];
        end
      end
    end

  assign dataOut = dataOut_2del_reg[1];
  assign dataOut_2del_reg_next[0] = dataoutgen_gated;
  assign dataOut_2del_reg_next[1] = dataOut_2del_reg[0];



  always @(posedge clk or posedge reset)
    begin : startOut_2del_process
      if (reset == 1'b1) begin
        startOut_2del_reg[0] <= 1'b0;
        startOut_2del_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          startOut_2del_reg[0] <= startOut_2del_reg_next[0];
          startOut_2del_reg[1] <= startOut_2del_reg_next[1];
        end
      end
    end

  assign startOut = startOut_2del_reg[1];
  assign startOut_2del_reg_next[0] = startoutgen_gated;
  assign startOut_2del_reg_next[1] = startOut_2del_reg[0];



  assign endOut_1 = validOutTemp & endoutgen;



  always @(posedge clk or posedge reset)
    begin : endOut_1del1_process
      if (reset == 1'b1) begin
        endout_ff1 <= 1'b0;
      end
      else begin
        if (enb) begin
          endout_ff1 <= endOut_1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : endOut_1del2_process
      if (reset == 1'b1) begin
        endOut_2 <= 1'b0;
      end
      else begin
        if (enb) begin
          endOut_2 <= endout_ff1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : validOut_2del_process
      if (reset == 1'b1) begin
        validOut_2del_reg[0] <= 1'b0;
        validOut_2del_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          validOut_2del_reg[0] <= validOut_2del_reg_next[0];
          validOut_2del_reg[1] <= validOut_2del_reg_next[1];
        end
      end
    end

  assign validOut = validOut_2del_reg[1];
  assign validOut_2del_reg_next[0] = validOutTemp;
  assign validOut_2del_reg_next[1] = validOut_2del_reg[0];



  endInNet u_endInEntity (.clk(clk),
                          .reset(reset),
                          .enb(enb),
                          .endin(endin_ff_1),
                          .out(endin_ffdel)
                          );

  assign enCRCBuf = endin_ffdel | validin_ff_1;



  assign switch_compare_1_2 = enCRCBuf > 1'b0;



  always @(posedge clk or posedge reset)
    begin : crcReg_process
      if (reset == 1'b1) begin
        crcReg_reg[0] <= 1'b0;
        crcReg_reg[1] <= 1'b0;
        crcReg_reg[2] <= 1'b0;
        crcReg_reg[3] <= 1'b0;
        crcReg_reg[4] <= 1'b0;
        crcReg_reg[5] <= 1'b0;
        crcReg_reg[6] <= 1'b0;
        crcReg_reg[7] <= 1'b0;
        crcReg_reg[8] <= 1'b0;
        crcReg_reg[9] <= 1'b0;
        crcReg_reg[10] <= 1'b0;
      end
      else begin
        if (enb && enCRCBuf) begin
          crcReg_reg[0] <= crcReg_reg_next[0];
          crcReg_reg[1] <= crcReg_reg_next[1];
          crcReg_reg[2] <= crcReg_reg_next[2];
          crcReg_reg[3] <= crcReg_reg_next[3];
          crcReg_reg[4] <= crcReg_reg_next[4];
          crcReg_reg[5] <= crcReg_reg_next[5];
          crcReg_reg[6] <= crcReg_reg_next[6];
          crcReg_reg[7] <= crcReg_reg_next[7];
          crcReg_reg[8] <= crcReg_reg_next[8];
          crcReg_reg[9] <= crcReg_reg_next[9];
          crcReg_reg[10] <= crcReg_reg_next[10];
        end
      end
    end

  assign crc_reg = crcReg_reg[10];
  assign crcReg_reg_next[0] = datain_ff_1;
  assign crcReg_reg_next[1] = crcReg_reg[0];
  assign crcReg_reg_next[2] = crcReg_reg[1];
  assign crcReg_reg_next[3] = crcReg_reg[2];
  assign crcReg_reg_next[4] = crcReg_reg[3];
  assign crcReg_reg_next[5] = crcReg_reg[4];
  assign crcReg_reg_next[6] = crcReg_reg[5];
  assign crcReg_reg_next[7] = crcReg_reg[6];
  assign crcReg_reg_next[8] = crcReg_reg[7];
  assign crcReg_reg_next[9] = crcReg_reg[8];
  assign crcReg_reg_next[10] = crcReg_reg[9];



  assign crc_reg_gated = (switch_compare_1_2 == 1'b0 ? constant :
              crc_reg);



  always @(posedge clk or posedge reset)
    begin : crcRegDEPTH2_process
      if (reset == 1'b1) begin
        crcRegDEPTH2_reg[0] <= 1'b0;
        crcRegDEPTH2_reg[1] <= 1'b0;
        crcRegDEPTH2_reg[2] <= 1'b0;
        crcRegDEPTH2_reg[3] <= 1'b0;
        crcRegDEPTH2_reg[4] <= 1'b0;
        crcRegDEPTH2_reg[5] <= 1'b0;
        crcRegDEPTH2_reg[6] <= 1'b0;
        crcRegDEPTH2_reg[7] <= 1'b0;
        crcRegDEPTH2_reg[8] <= 1'b0;
        crcRegDEPTH2_reg[9] <= 1'b0;
        crcRegDEPTH2_reg[10] <= 1'b0;
        crcRegDEPTH2_reg[11] <= 1'b0;
        crcRegDEPTH2_reg[12] <= 1'b0;
      end
      else begin
        if (enb) begin
          crcRegDEPTH2_reg[0] <= crcRegDEPTH2_reg_next[0];
          crcRegDEPTH2_reg[1] <= crcRegDEPTH2_reg_next[1];
          crcRegDEPTH2_reg[2] <= crcRegDEPTH2_reg_next[2];
          crcRegDEPTH2_reg[3] <= crcRegDEPTH2_reg_next[3];
          crcRegDEPTH2_reg[4] <= crcRegDEPTH2_reg_next[4];
          crcRegDEPTH2_reg[5] <= crcRegDEPTH2_reg_next[5];
          crcRegDEPTH2_reg[6] <= crcRegDEPTH2_reg_next[6];
          crcRegDEPTH2_reg[7] <= crcRegDEPTH2_reg_next[7];
          crcRegDEPTH2_reg[8] <= crcRegDEPTH2_reg_next[8];
          crcRegDEPTH2_reg[9] <= crcRegDEPTH2_reg_next[9];
          crcRegDEPTH2_reg[10] <= crcRegDEPTH2_reg_next[10];
          crcRegDEPTH2_reg[11] <= crcRegDEPTH2_reg_next[11];
          crcRegDEPTH2_reg[12] <= crcRegDEPTH2_reg_next[12];
        end
      end
    end

  assign crc_to_mask = crcRegDEPTH2_reg[12];
  assign crcRegDEPTH2_reg_next[0] = crc_reg_gated;
  assign crcRegDEPTH2_reg_next[1] = crcRegDEPTH2_reg[0];
  assign crcRegDEPTH2_reg_next[2] = crcRegDEPTH2_reg[1];
  assign crcRegDEPTH2_reg_next[3] = crcRegDEPTH2_reg[2];
  assign crcRegDEPTH2_reg_next[4] = crcRegDEPTH2_reg[3];
  assign crcRegDEPTH2_reg_next[5] = crcRegDEPTH2_reg[4];
  assign crcRegDEPTH2_reg_next[6] = crcRegDEPTH2_reg[5];
  assign crcRegDEPTH2_reg_next[7] = crcRegDEPTH2_reg[6];
  assign crcRegDEPTH2_reg_next[8] = crcRegDEPTH2_reg[7];
  assign crcRegDEPTH2_reg_next[9] = crcRegDEPTH2_reg[8];
  assign crcRegDEPTH2_reg_next[10] = crcRegDEPTH2_reg[9];
  assign crcRegDEPTH2_reg_next[11] = crcRegDEPTH2_reg[10];
  assign crcRegDEPTH2_reg_next[12] = crcRegDEPTH2_reg[11];



  always @(posedge clk or posedge reset)
    begin : endout_largeFF_process
      if (reset == 1'b1) begin
        endout_large <= 1'b0;
      end
      else begin
        if (enb) begin
          endout_large <= endOut_1;
        end
      end
    end



  assign endout_orlarge = endout_large | endOut_1;



  assign enable_maskgen = endout_orlarge | validoutgen;



  CRCCompNet u_ErrPortEntity (.clk(clk),
                              .reset(reset),
                              .enb(enb),
                              .in1(dataoutgen),
                              .in2(crc_to_mask),
                              .en(enable_maskgen),
                              .rst(startin_ff_1),
                              .gateErrIn(endout_ff1),
                              .err(errout_bool)
                              );

  always @(posedge clk or posedge reset)
    begin : errOut_1del_process
      if (reset == 1'b1) begin
        err_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          err_1 <= errout_bool;
        end
      end
    end



  assign endOut = endOut_2;

  assign err = err_1;

endmodule  // CRC_Decoder

