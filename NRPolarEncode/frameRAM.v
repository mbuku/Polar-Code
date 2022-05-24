// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\frameRAM.v
// Created: 2022-01-15 05:10:42
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: frameRAM
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/frameMap/frameRAM
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module frameRAM
          (clk,
           reset,
           enb,
           din,
           wr_addr,
           wr_en,
           rd_addr,
           dataOut);


  input   clk;
  input   reset;
  input   enb;
  input   din;  // ufix1
  input   [9:0] wr_addr;  // ufix10
  input   wr_en;
  input   [9:0] rd_addr;  // ufix10
  output  dataOut;  // ufix1


  wire Simple_Dual_Port_RAM_System_out1;  // ufix1
  reg  Delay10_out1;  // ufix1


  SimpleDualPortRAM_singlebit #(.AddrWidth(10),
                                .DataWidth(1)
                                )
                              u_Simple_Dual_Port_RAM_System (.clk(clk),
                                                             .enb(enb),
                                                             .wr_din(din),  // ufix1
                                                             .wr_addr(wr_addr),
                                                             .wr_en(wr_en),
                                                             .rd_addr(rd_addr),
                                                             .rd_dout(Simple_Dual_Port_RAM_System_out1)  // ufix1
                                                             );

  always @(posedge clk or posedge reset)
    begin : Delay10_process
      if (reset == 1'b1) begin
        Delay10_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay10_out1 <= Simple_Dual_Port_RAM_System_out1;
        end
      end
    end



  assign dataOut = Delay10_out1;

endmodule  // frameRAM

