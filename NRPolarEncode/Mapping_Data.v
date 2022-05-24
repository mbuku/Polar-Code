`timescale 1 ns / 1 ns

module Mapping_Data
          (clk,
           reset,
           enb,
           frameDIn,
           frameWrAddr,
           frameWrEn,
           readFrame,
           nIn,
           Q,
           frameDataOut,
           frameValidOut,
           nOut);


  input   clk;
  input   reset;
  input   enb;
  input   frameDIn;  // ufix1
  input   [9:0] frameWrAddr;  // ufix10
  input   frameWrEn;
  input   readFrame;
  input   [7:0] nIn;  // uint8
  input   Q;
  output  frameDataOut;  // ufix1
  output  frameValidOut;
  output  [7:0] nOut;  // uint8


  wire itlvDIn;  // ufix1
  wire itlvWrAddr;  // ufix1
  wire itlvWrEn;  // ufix1
  reg  [0:3] Delay4_reg;  // ufix1 [4]
  wire [0:3] Delay4_reg_next;  // ufix1 [4]
  wire Delay4_out1;
  wire Constant2_out1;  // ufix1
  reg  Delay2_out1;
  wire Detect_Increase2_out1;
  reg [9:0] frameAddr_out1;  // ufix10
  wire [9:0] addrTranslate_out1;  // ufix10
  wire frameRAM_out1;  // ufix1
  wire Multiport_Switch_out1;  // ufix1
  reg  Delay_out1;  // ufix1
  reg  [0:4] Delay5_reg;  // ufix1 [5]
  wire [0:4] Delay5_reg_next;  // ufix1 [5]
  wire Delay5_out1;
  reg  Delay1_out1;
  reg [7:0] Unit_Delay_Enabled_Synchronous_out1;  // uint8


  always @(posedge clk or posedge reset)
    begin : Delay4_process
      if (reset == 1'b1) begin
        Delay4_reg[0] <= 1'b0;
        Delay4_reg[1] <= 1'b0;
        Delay4_reg[2] <= 1'b0;
        Delay4_reg[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay4_reg[0] <= Delay4_reg_next[0];
          Delay4_reg[1] <= Delay4_reg_next[1];
          Delay4_reg[2] <= Delay4_reg_next[2];
          Delay4_reg[3] <= Delay4_reg_next[3];
        end
      end
    end

  assign Delay4_out1 = Delay4_reg[3];
  assign Delay4_reg_next[0] = Q;
  assign Delay4_reg_next[1] = Delay4_reg[0];
  assign Delay4_reg_next[2] = Delay4_reg[1];
  assign Delay4_reg_next[3] = Delay4_reg[2];



  assign Constant2_out1 = 1'b0;



  always @(posedge clk or posedge reset)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay2_out1 <= readFrame;
        end
      end
    end



  Detect_Increase2 u_Detect_Increase2 (.clk(clk),
                                       .reset(reset),
                                       .enb(enb),
                                       .U(Delay2_out1),
                                       .Y(Detect_Increase2_out1)
                                       );

  // Free running, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  always @(posedge clk or posedge reset)
    begin : frameAddr_process
      if (reset == 1'b1) begin
        frameAddr_out1 <= 10'b0000000000;
      end
      else begin
        if (enb) begin
          if (Detect_Increase2_out1 == 1'b1) begin
            frameAddr_out1 <= 10'b0000000000;
          end
          else if (Q == 1'b1) begin
            frameAddr_out1 <= frameAddr_out1 + 10'b0000000001;
          end
        end
      end
    end



  addrTranslate u_addrTranslate (.clk(clk),
                                 .reset(reset),
                                 .enb(enb),
                                 .addrIn(frameAddr_out1),  // ufix10
                                 .addrOut(addrTranslate_out1)  // ufix10
                                 );

  frameRAM u_frameRAM (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .din(frameDIn),  // ufix1
                       .wr_addr(frameWrAddr),  // ufix10
                       .wr_en(frameWrEn),
                       .rd_addr(addrTranslate_out1),  // ufix10
                       .dataOut(frameRAM_out1)  // ufix1
                       );

  assign Multiport_Switch_out1 = (Delay4_out1 == 1'b0 ? Constant2_out1 :
              frameRAM_out1);



  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay_out1 <= Multiport_Switch_out1;
        end
      end
    end



  assign frameDataOut = Delay_out1;

  always @(posedge clk or posedge reset)
    begin : Delay5_process
      if (reset == 1'b1) begin
        Delay5_reg[0] <= 1'b0;
        Delay5_reg[1] <= 1'b0;
        Delay5_reg[2] <= 1'b0;
        Delay5_reg[3] <= 1'b0;
        Delay5_reg[4] <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay5_reg[0] <= Delay5_reg_next[0];
          Delay5_reg[1] <= Delay5_reg_next[1];
          Delay5_reg[2] <= Delay5_reg_next[2];
          Delay5_reg[3] <= Delay5_reg_next[3];
          Delay5_reg[4] <= Delay5_reg_next[4];
        end
      end
    end

  assign Delay5_out1 = Delay5_reg[4];
  assign Delay5_reg_next[0] = Delay2_out1;
  assign Delay5_reg_next[1] = Delay5_reg[0];
  assign Delay5_reg_next[2] = Delay5_reg[1];
  assign Delay5_reg_next[3] = Delay5_reg[2];
  assign Delay5_reg_next[4] = Delay5_reg[3];



  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay1_out1 <= Delay5_out1;
        end
      end
    end



  assign frameValidOut = Delay1_out1;

  always @(posedge clk or posedge reset)
    begin : Unit_Delay_Enabled_Synchronous_process
      if (reset == 1'b1) begin
        Unit_Delay_Enabled_Synchronous_out1 <= 8'b00000000;
      end
      else begin
        if (enb && Delay5_out1) begin
          Unit_Delay_Enabled_Synchronous_out1 <= nIn;
        end
      end
    end



  assign nOut = Unit_Delay_Enabled_Synchronous_out1;

endmodule  

