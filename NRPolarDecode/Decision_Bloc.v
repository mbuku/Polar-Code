`timescale 1 ns / 1 ns

module Decision_Bloc
          (clk,
           reset,
           enb,
           llrLeaf,
           pathCnt,
           F,
           makeDec,
           copyEn,
           rstMetrics,
           hardDecs_0,
           hardDecs_1,
           pathWrEn,
           contPaths_0,
           contPaths_1,
           metrics_0,
           metrics_1);


  input   clk;
  input   reset;
  input   enb;
  input   signed [7:0] llrLeaf;  // sfix8_En5
  input   pathCnt;  // ufix1
  input   F;
  input   makeDec;
  input   copyEn;
  input   rstMetrics;
  output  hardDecs_0;  // ufix1
  output  hardDecs_1;  // ufix1
  output  pathWrEn;
  output  contPaths_0;  // ufix1
  output  contPaths_1;  // ufix1
  output  [15:0] metrics_0;  // ufix16_En5
  output  [15:0] metrics_1;  // ufix16_En5


  reg  copyEn_reg;
  reg signed [7:0] llrLeaf_reg;  // sfix8_En5
  wire signed [8:0] abs_y;  // sfix9_En5
  wire signed [8:0] abs_cast;  // sfix9_En5
  wire [7:0] llrAb;  // ufix8_En5
  reg [7:0] tapdelay_reg;  // ufix8
  wire [7:0] llrAbs [0:1];  // ufix8_En5 [2]
  reg  F_reg;
  reg  F_reg_reg;
  wire dec;  // ufix1
  reg  tapdelay_reg_1;  // ufix1
  wire [0:1] decs;  // ufix1 [2]
  reg  [0:1] decs_reg;  // ufix1 [2]
  wire decs_reg_0;  // ufix1
  wire relop_relop1;
  wire decs_reg_1;  // ufix1
  wire relop_relop2;
  wire [0:1] frznErr;  // boolean [2]
  wire frznErr_0;
  wire F_reg_reg_1;
  reg  makeDec_reg;
  wire infoOrFrznErr_0;
  reg  rstMetrics_reg;
  wire frznErr_1;
  wire F_reg_reg_2;
  wire infoOrFrznErr_1;
  wire [1:0] oldPathsIdx [0:1];  // ufix2 [2]
  wire [1:0] oldPathsIdx_0;  // ufix2
  wire [1:0] newPathsIdx [0:1];  // ufix2 [2]
  wire [1:0] oldPathsIdx_1;  // ufix2
  reg  pathCnt_reg;  // ufix1
  wire dup;
  wire [1:0] newPathsIdx_0;  // ufix2
  wire [1:0] newPathsIdx_1;  // ufix2
  wire [1:0] dupContPaths [0:1];  // ufix2 [2]
  wire [0:1] newPathLT;  // boolean [2]
  wire newPathLT_1;
  wire copyEn_reg_1;
  wire [1:0] metricContPaths_1;  // ufix2
  wire [15:0] newMetrics [0:1];  // ufix16_En5 [2]
  wire [15:0] newMetrics_0;  // ufix16_En5
  reg [15:0] metricsDemux;  // ufix16_En5
  wire relop_relop2_1;
  wire [15:0] updateMetrics [0:1];  // ufix16_En5 [2]
  wire [15:0] updateMetrics_1;  // ufix16_En5
  reg [1:0] contPathsInt_reg [0:1];  // ufix2 [2]
  wire [1:0] contPathsInt_reg_1;  // ufix2
  wire [15:0] metricOptions [0:3];  // ufix16_En5 [4]
  wire [15:0] contMetrics_1;  // ufix16_En5
  reg [15:0] newMetrics_reg [0:1];  // ufix16_En5 [2]
  reg [15:0] metrics_reg [0:1];  // ufix16_En5 [2]
  wire [15:0] metrics [0:1];  // ufix16_En5 [2]
  wire [1:0] contPathsInt_reg_0;  // ufix2
  wire [15:0] contMetrics_0;  // ufix16_En5
  wire [15:0] contMetricsCat_1 [0:1];  // ufix16_En5 [2]
  wire [15:0] updateMetrics_0;  // ufix16_En5
  reg [15:0] metricsDemux_1;  // ufix16_En5
  wire [15:0] adder_add_cast;  // ufix16_En5
  wire [16:0] adder_add_cast_1;  // ufix17_En5
  wire [16:0] adder_add_cast_2;  // ufix17_En5
  wire [16:0] adder_add_temp;  // ufix17_En5
  wire [15:0] adder_add_cast_3;  // ufix16_En5
  wire [16:0] adder_add_cast_4;  // ufix17_En5
  wire [16:0] adder_add_cast_5;  // ufix17_En5
  wire [16:0] adder_add_temp_1;  // ufix17_En5
  wire [15:0] newMetrics_1;  // ufix16_En5
  wire relop_relop1_1;
  wire newPathLT_0;
  wire copyEn_reg_2;
  wire [1:0] metricContPaths_0;  // ufix2
  wire [1:0] metricContPaths [0:1];  // ufix2 [2]
  wire [1:0] contPathsInt [0:1];  // ufix2 [2]
  wire decs_reg_0_1;  // ufix1
  wire decs_reg_0_2;  // ufix1
  wire decs_reg_1_1;  // ufix1
  wire decs_reg_1_2;  // ufix1
  wire [0:3] decOptions;  // ufix1 [4]
  wire contDecs_0;  // ufix1
  wire contDecs_1;  // ufix1
  wire wrInfo;
  reg  pathWrEn_1;
  wire [0:1] contPaths;  // ufix1 [2]


  always @(posedge clk or posedge reset)
    begin : reg_rsvd_process
      if (reset == 1'b1) begin
        copyEn_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          copyEn_reg <= copyEn;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_1_process
      if (reset == 1'b1) begin
        llrLeaf_reg <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          llrLeaf_reg <= llrLeaf;
        end
      end
    end



  assign abs_cast = {llrLeaf_reg[7], llrLeaf_reg};
  assign abs_y = (llrLeaf_reg < 8'sb00000000 ?  - (abs_cast) :
              {llrLeaf_reg[7], llrLeaf_reg});
  assign llrAb = abs_y[7:0];



  always @(posedge clk or posedge reset)
    begin : tapdelay_process
      if (reset == 1'b1) begin
        tapdelay_reg <= 8'b00000000;
      end
      else begin
        if (enb) begin
          tapdelay_reg <= llrAb;
        end
      end
    end

  assign llrAbs[0] = tapdelay_reg;
  assign llrAbs[1] = llrAb;



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_2_process
      if (reset == 1'b1) begin
        F_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          F_reg <= F;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_3_process
      if (reset == 1'b1) begin
        F_reg_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          F_reg_reg <= F_reg;
        end
      end
    end



  assign dec = llrLeaf_reg < 8'sb00000000;



  always @(posedge clk or posedge reset)
    begin : tapdelay_1_process
      if (reset == 1'b1) begin
        tapdelay_reg_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          tapdelay_reg_1 <= dec;
        end
      end
    end

  assign decs[0] = tapdelay_reg_1;
  assign decs[1] = dec;



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_4_process
      if (reset == 1'b1) begin
        decs_reg[0] <= 1'b0;
        decs_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          decs_reg[0] <= decs[0];
          decs_reg[1] <= decs[1];
        end
      end
    end



  assign decs_reg_0 = decs_reg[0];

  assign relop_relop1 = F_reg_reg != decs_reg_0;



  assign decs_reg_1 = decs_reg[1];

  assign relop_relop2 = F_reg_reg != decs_reg_1;



  assign frznErr[0] = relop_relop1;
  assign frznErr[1] = relop_relop2;



  assign frznErr_0 = frznErr[0];

  assign F_reg_reg_1 = F_reg_reg | frznErr_0;



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_5_process
      if (reset == 1'b1) begin
        makeDec_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          makeDec_reg <= makeDec;
        end
      end
    end



  assign infoOrFrznErr_0 = F_reg_reg_1 & makeDec_reg;



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_6_process
      if (reset == 1'b1) begin
        rstMetrics_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          rstMetrics_reg <= rstMetrics;
        end
      end
    end



  assign frznErr_1 = frznErr[1];

  assign F_reg_reg_2 = F_reg_reg | frznErr_1;



  assign infoOrFrznErr_1 = F_reg_reg_2 & makeDec_reg;



  assign oldPathsIdx[0] = 2'b00;
  assign oldPathsIdx[1] = 2'b01;



  assign oldPathsIdx_0 = oldPathsIdx[0];

  assign newPathsIdx[0] = 2'b11;
  assign newPathsIdx[1] = 2'b10;



  assign oldPathsIdx_1 = oldPathsIdx[1];

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_7_process
      if (reset == 1'b1) begin
        pathCnt_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          pathCnt_reg <= pathCnt;
        end
      end
    end



  assign dup = pathCnt_reg < 1'b1;



  assign newPathsIdx_0 = newPathsIdx[0];

  assign newPathsIdx_1 = newPathsIdx[1];

  assign dupContPaths[0] = 2'b00;
  assign dupContPaths[1] = 2'b10;



  assign newPathLT_1 = newPathLT[1];

  assign copyEn_reg_1 = copyEn_reg & newPathLT_1;



  assign metricContPaths_1 = (copyEn_reg_1 == 1'b0 ? oldPathsIdx_1 :
              newPathsIdx_1);



  assign newMetrics_0 = newMetrics[0];

  assign relop_relop2_1 = newMetrics_0 < metricsDemux;



  assign updateMetrics_1 = updateMetrics[1];

  always @(posedge clk or posedge reset)
    begin : metricReg_process
      if (reset == 1'b1) begin
        metricsDemux <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          if (rstMetrics_reg == 1'b1) begin
            metricsDemux <= 16'b0000000000000000;
          end
          else begin
            if (infoOrFrznErr_1) begin
              metricsDemux <= updateMetrics_1;
            end
          end
        end
      end
    end



  assign contPathsInt_reg_1 = contPathsInt_reg[1];

  assign contMetrics_1 = (contPathsInt_reg_1 == 2'b00 ? metricOptions[0] :
              (contPathsInt_reg_1 == 2'b01 ? metricOptions[1] :
              (contPathsInt_reg_1 == 2'b10 ? metricOptions[2] :
              metricOptions[3])));



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_8_process
      if (reset == 1'b1) begin
        metrics_reg[0] <= 16'b0000000000000000;
        metrics_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          metrics_reg[0] <= metrics[0];
          metrics_reg[1] <= metrics[1];
        end
      end
    end



  assign metricOptions[0] = metrics_reg[0];
  assign metricOptions[1] = metrics_reg[1];
  assign metricOptions[2] = newMetrics_reg[0];
  assign metricOptions[3] = newMetrics_reg[1];

  assign contMetrics_0 = (contPathsInt_reg_0 == 2'b00 ? metricOptions[0] :
              (contPathsInt_reg_0 == 2'b01 ? metricOptions[1] :
              (contPathsInt_reg_0 == 2'b10 ? metricOptions[2] :
              metricOptions[3])));



  assign contMetricsCat_1[0] = contMetrics_0;
  assign contMetricsCat_1[1] = contMetrics_1;

  always @(posedge clk or posedge reset)
    begin : reg_rsvd_9_process
      if (reset == 1'b1) begin
        newMetrics_reg[0] <= 16'b0000000000000000;
        newMetrics_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          newMetrics_reg[0] <= newMetrics[0];
          newMetrics_reg[1] <= newMetrics[1];
        end
      end
    end



  assign updateMetrics[0] = (F_reg_reg == 1'b0 ? newMetrics_reg[0] :
              contMetricsCat_1[0]);
  assign updateMetrics[1] = (F_reg_reg == 1'b0 ? newMetrics_reg[1] :
              contMetricsCat_1[1]);



  assign updateMetrics_0 = updateMetrics[0];

  always @(posedge clk or posedge reset)
    begin : metricReg_1_process
      if (reset == 1'b1) begin
        metricsDemux_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          if (rstMetrics_reg == 1'b1) begin
            metricsDemux_1 <= 16'b0000000000000000;
          end
          else begin
            if (infoOrFrznErr_0) begin
              metricsDemux_1 <= updateMetrics_0;
            end
          end
        end
      end
    end



  assign metrics[0] = metricsDemux_1;
  assign metrics[1] = metricsDemux;

  assign adder_add_cast = {8'b0, llrAbs[0]};
  assign adder_add_cast_1 = {1'b0, adder_add_cast};
  assign adder_add_cast_2 = {1'b0, metrics[0]};
  assign adder_add_temp = adder_add_cast_1 + adder_add_cast_2;
  assign newMetrics[0] = (adder_add_temp[16] != 1'b0 ? 16'b1111111111111111 :
              adder_add_temp[15:0]);
  assign adder_add_cast_3 = {8'b0, llrAbs[1]};
  assign adder_add_cast_4 = {1'b0, adder_add_cast_3};
  assign adder_add_cast_5 = {1'b0, metrics[1]};
  assign adder_add_temp_1 = adder_add_cast_4 + adder_add_cast_5;
  assign newMetrics[1] = (adder_add_temp_1[16] != 1'b0 ? 16'b1111111111111111 :
              adder_add_temp_1[15:0]);



  assign newMetrics_1 = newMetrics[1];

  assign relop_relop1_1 = newMetrics_1 < metricsDemux_1;



  assign newPathLT[0] = relop_relop1_1;
  assign newPathLT[1] = relop_relop2_1;



  assign newPathLT_0 = newPathLT[0];

  assign copyEn_reg_2 = copyEn_reg & newPathLT_0;



  assign metricContPaths_0 = (copyEn_reg_2 == 1'b0 ? oldPathsIdx_0 :
              newPathsIdx_0);



  assign metricContPaths[0] = metricContPaths_0;
  assign metricContPaths[1] = metricContPaths_1;

  assign contPathsInt[0] = (dup == 1'b0 ? metricContPaths[0] :
              dupContPaths[0]);
  assign contPathsInt[1] = (dup == 1'b0 ? metricContPaths[1] :
              dupContPaths[1]);



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_10_process
      if (reset == 1'b1) begin
        contPathsInt_reg[0] <= 2'b00;
        contPathsInt_reg[1] <= 2'b00;
      end
      else begin
        if (enb) begin
          contPathsInt_reg[0] <= contPathsInt[0];
          contPathsInt_reg[1] <= contPathsInt[1];
        end
      end
    end



  assign contPathsInt_reg_0 = contPathsInt_reg[0];

  assign decs_reg_0_1 = decs_reg[0];

  assign decs_reg_0_2 =  ~ decs_reg_0_1;



  assign decs_reg_1_1 = decs_reg[1];

  assign decs_reg_1_2 =  ~ decs_reg_1_1;



  assign decOptions[0] = decs_reg[0];
  assign decOptions[1] = decs_reg[1];
  assign decOptions[2] = decs_reg_0_2;
  assign decOptions[3] = decs_reg_1_2;

  assign contDecs_0 = (contPathsInt_reg_0 == 2'b00 ? decOptions[0] :
              (contPathsInt_reg_0 == 2'b01 ? decOptions[1] :
              (contPathsInt_reg_0 == 2'b10 ? decOptions[2] :
              decOptions[3])));



  assign hardDecs_0 = contDecs_0;

  assign contDecs_1 = (contPathsInt_reg_1 == 2'b00 ? decOptions[0] :
              (contPathsInt_reg_1 == 2'b01 ? decOptions[1] :
              (contPathsInt_reg_1 == 2'b10 ? decOptions[2] :
              decOptions[3])));



  assign hardDecs_1 = contDecs_1;

  assign wrInfo = makeDec & F_reg;



  always @(posedge clk or posedge reset)
    begin : reg_rsvd_11_process
      if (reset == 1'b1) begin
        pathWrEn_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          pathWrEn_1 <= wrInfo;
        end
      end
    end



  assign contPaths[0] = contPathsInt[0][0];
  assign contPaths[1] = contPathsInt[1][0];



  assign contPaths_0 = contPaths[0];

  assign contPaths_1 = contPaths[1];

  assign metrics_0 = metricsDemux_1;

  assign metrics_1 = metricsDemux;

  assign pathWrEn = pathWrEn_1;

endmodule  // Decision

