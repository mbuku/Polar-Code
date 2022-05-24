// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\Stage_2.v
// Created: 2022-01-15 05:10:41
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Stage_2
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/encode/Stage 2
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Stage_2
          (clk,
           reset,
           enb,
           dataIn,
           validIn,
           dataOut,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   dataIn;  // ufix1
  input   validIn;
  output  dataOut;  // ufix1
  output  validOut;


  reg  [0:2] Delay5_reg;  // ufix1 [3]
  wire [0:2] Delay5_reg_next;  // ufix1 [3]
  wire Delay5_out1;
  wire Detect_Increase_out1;
  reg  Delay_out1;
  reg [2:0] HDL_Counter2_out1;  // ufix3
  wire [5:0] Multiply1_cast;  // ufix6_En4
  wire Multiply1_out1;  // ufix1
  reg  [0:3] Delay4_reg;  // ufix1 [4]
  wire [0:3] Delay4_reg_next;  // ufix1 [4]
  wire Delay4_out1;  // ufix1
  wire XOR2_out1;  // ufix1
  wire Multiport_Switch2_out1;  // ufix1


  always @(posedge clk or posedge reset)
    begin : Delay5_process
      if (reset == 1'b1) begin
        Delay5_reg[0] <= 1'b0;
        Delay5_reg[1] <= 1'b0;
        Delay5_reg[2] <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay5_reg[0] <= Delay5_reg_next[0];
          Delay5_reg[1] <= Delay5_reg_next[1];
          Delay5_reg[2] <= Delay5_reg_next[2];
        end
      end
    end

  assign Delay5_out1 = Delay5_reg[2];
  assign Delay5_reg_next[0] = validIn;
  assign Delay5_reg_next[1] = Delay5_reg[0];
  assign Delay5_reg_next[2] = Delay5_reg[1];



  Detect_Increase_block1 u_Detect_Increase (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .U(Delay5_out1),
                                            .Y(Detect_Increase_out1)
                                            );

  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay_out1 <= Delay5_out1;
        end
      end
    end



  // Free running, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  always @(posedge clk or posedge reset)
    begin : HDL_Counter2_process
      if (reset == 1'b1) begin
        HDL_Counter2_out1 <= 3'b000;
      end
      else begin
        if (enb) begin
          if (Detect_Increase_out1 == 1'b1) begin
            HDL_Counter2_out1 <= 3'b000;
          end
          else if (Delay_out1 == 1'b1) begin
            HDL_Counter2_out1 <= HDL_Counter2_out1 + 3'b001;
          end
        end
      end
    end



  assign Multiply1_cast = {1'b0, {HDL_Counter2_out1, 2'b00}};
  assign Multiply1_out1 = Multiply1_cast[4];



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
  assign Delay4_reg_next[0] = dataIn;
  assign Delay4_reg_next[1] = Delay4_reg[0];
  assign Delay4_reg_next[2] = Delay4_reg[1];
  assign Delay4_reg_next[3] = Delay4_reg[2];



  assign XOR2_out1 = dataIn ^ Delay4_out1;



  assign Multiport_Switch2_out1 = (Multiply1_out1 == 1'b0 ? XOR2_out1 :
              Delay4_out1);



  assign dataOut = Multiport_Switch2_out1;

  assign validOut = Delay_out1;

endmodule  // Stage_2

