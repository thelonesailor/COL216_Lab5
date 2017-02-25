// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Sun Feb 19 14:15:12 2017
// Host        : rajesh running 64-bit Ubuntu 14.04 LTS
// Command     : write_verilog /tmp/alu_golden.v
// Design      : ARM_alu_gold
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module ARM_alu_gold
   (operand1,
    operand2,
    result,
    instruction,
    N_in,
    Z_in,
    C_in,
    V_in,
    shifter_carry,
    next_N,
    next_Z,
    next_C,
    next_V,
    predicate);
  input [31:0]operand1;
  input [31:0]operand2;
  output [31:0]result;
  input [31:0]instruction;
  input N_in;
  input Z_in;
  input C_in;
  input V_in;
  input shifter_carry;
  output next_N;
  output next_Z;
  output next_C;
  output next_V;
  output predicate;

  wire \<const0> ;
  wire C_in;
  wire C_in_IBUF;
  wire N_in;
  wire N_in_IBUF;
  wire V_in;
  wire V_in_IBUF;
  wire Z_in;
  wire Z_in_IBUF;
  wire [31:0]data2;
  wire [31:0]data3;
  wire [31:0]instruction;
  wire [31:4]instruction_IBUF;
  wire next_C;
  wire next_C_OBUF;
  wire next_N;
  wire next_N_OBUF;
  wire next_V;
  wire next_V_OBUF;
  wire next_Z;
  wire next_Z_OBUF;
  wire next_Z_OBUF_inst_i_10_n_0;
  wire next_Z_OBUF_inst_i_11_n_0;
  wire next_Z_OBUF_inst_i_12_n_0;
  wire next_Z_OBUF_inst_i_2_n_0;
  wire next_Z_OBUF_inst_i_3_n_0;
  wire next_Z_OBUF_inst_i_4_n_0;
  wire next_Z_OBUF_inst_i_5_n_0;
  wire next_Z_OBUF_inst_i_6_n_0;
  wire next_Z_OBUF_inst_i_7_n_0;
  wire next_Z_OBUF_inst_i_8_n_0;
  wire next_Z_OBUF_inst_i_9_n_0;
  wire [31:0]operand1;
  wire [31:0]operand1_IBUF;
  wire [31:0]operand2;
  wire [31:0]operand2_IBUF;
  wire [1:1]p_3_in;
  wire predicate;
  wire predicate_OBUF;
  wire predicate_OBUF_inst_i_2_n_0;
  wire predicate_OBUF_inst_i_3_n_0;
  wire predicate_OBUF_inst_i_4_n_0;
  wire predicate_OBUF_inst_i_5_n_0;
  wire [31:0]result;
  wire [30:0]result_OBUF;
  wire \result_OBUF[0]_inst_i_2_n_0 ;
  wire \result_OBUF[0]_inst_i_3_n_0 ;
  wire \result_OBUF[10]_inst_i_2_n_0 ;
  wire \result_OBUF[10]_inst_i_3_n_0 ;
  wire \result_OBUF[11]_inst_i_10_n_0 ;
  wire \result_OBUF[11]_inst_i_11_n_0 ;
  wire \result_OBUF[11]_inst_i_12_n_0 ;
  wire \result_OBUF[11]_inst_i_13_n_0 ;
  wire \result_OBUF[11]_inst_i_14_n_0 ;
  wire \result_OBUF[11]_inst_i_15_n_0 ;
  wire \result_OBUF[11]_inst_i_16_n_0 ;
  wire \result_OBUF[11]_inst_i_17_n_0 ;
  wire \result_OBUF[11]_inst_i_18_n_0 ;
  wire \result_OBUF[11]_inst_i_19_n_0 ;
  wire \result_OBUF[11]_inst_i_20_n_0 ;
  wire \result_OBUF[11]_inst_i_21_n_0 ;
  wire \result_OBUF[11]_inst_i_22_n_0 ;
  wire \result_OBUF[11]_inst_i_23_n_0 ;
  wire \result_OBUF[11]_inst_i_24_n_0 ;
  wire \result_OBUF[11]_inst_i_25_n_0 ;
  wire \result_OBUF[11]_inst_i_26_n_0 ;
  wire \result_OBUF[11]_inst_i_27_n_0 ;
  wire \result_OBUF[11]_inst_i_28_n_0 ;
  wire \result_OBUF[11]_inst_i_29_n_0 ;
  wire \result_OBUF[11]_inst_i_2_n_0 ;
  wire \result_OBUF[11]_inst_i_30_n_0 ;
  wire \result_OBUF[11]_inst_i_31_n_0 ;
  wire \result_OBUF[11]_inst_i_32_n_0 ;
  wire \result_OBUF[11]_inst_i_33_n_0 ;
  wire \result_OBUF[11]_inst_i_3_n_0 ;
  wire \result_OBUF[11]_inst_i_4_n_0 ;
  wire \result_OBUF[11]_inst_i_4_n_1 ;
  wire \result_OBUF[11]_inst_i_4_n_2 ;
  wire \result_OBUF[11]_inst_i_4_n_3 ;
  wire \result_OBUF[11]_inst_i_5_n_0 ;
  wire \result_OBUF[11]_inst_i_5_n_1 ;
  wire \result_OBUF[11]_inst_i_5_n_2 ;
  wire \result_OBUF[11]_inst_i_5_n_3 ;
  wire \result_OBUF[11]_inst_i_6_n_0 ;
  wire \result_OBUF[11]_inst_i_7_n_0 ;
  wire \result_OBUF[11]_inst_i_8_n_0 ;
  wire \result_OBUF[11]_inst_i_9_n_0 ;
  wire \result_OBUF[12]_inst_i_2_n_0 ;
  wire \result_OBUF[12]_inst_i_3_n_0 ;
  wire \result_OBUF[13]_inst_i_2_n_0 ;
  wire \result_OBUF[13]_inst_i_3_n_0 ;
  wire \result_OBUF[14]_inst_i_2_n_0 ;
  wire \result_OBUF[14]_inst_i_3_n_0 ;
  wire \result_OBUF[15]_inst_i_10_n_0 ;
  wire \result_OBUF[15]_inst_i_11_n_0 ;
  wire \result_OBUF[15]_inst_i_12_n_0 ;
  wire \result_OBUF[15]_inst_i_13_n_0 ;
  wire \result_OBUF[15]_inst_i_14_n_0 ;
  wire \result_OBUF[15]_inst_i_15_n_0 ;
  wire \result_OBUF[15]_inst_i_16_n_0 ;
  wire \result_OBUF[15]_inst_i_17_n_0 ;
  wire \result_OBUF[15]_inst_i_18_n_0 ;
  wire \result_OBUF[15]_inst_i_19_n_0 ;
  wire \result_OBUF[15]_inst_i_20_n_0 ;
  wire \result_OBUF[15]_inst_i_21_n_0 ;
  wire \result_OBUF[15]_inst_i_22_n_0 ;
  wire \result_OBUF[15]_inst_i_23_n_0 ;
  wire \result_OBUF[15]_inst_i_24_n_0 ;
  wire \result_OBUF[15]_inst_i_25_n_0 ;
  wire \result_OBUF[15]_inst_i_26_n_0 ;
  wire \result_OBUF[15]_inst_i_27_n_0 ;
  wire \result_OBUF[15]_inst_i_28_n_0 ;
  wire \result_OBUF[15]_inst_i_29_n_0 ;
  wire \result_OBUF[15]_inst_i_2_n_0 ;
  wire \result_OBUF[15]_inst_i_30_n_0 ;
  wire \result_OBUF[15]_inst_i_31_n_0 ;
  wire \result_OBUF[15]_inst_i_32_n_0 ;
  wire \result_OBUF[15]_inst_i_33_n_0 ;
  wire \result_OBUF[15]_inst_i_3_n_0 ;
  wire \result_OBUF[15]_inst_i_4_n_0 ;
  wire \result_OBUF[15]_inst_i_4_n_1 ;
  wire \result_OBUF[15]_inst_i_4_n_2 ;
  wire \result_OBUF[15]_inst_i_4_n_3 ;
  wire \result_OBUF[15]_inst_i_5_n_0 ;
  wire \result_OBUF[15]_inst_i_5_n_1 ;
  wire \result_OBUF[15]_inst_i_5_n_2 ;
  wire \result_OBUF[15]_inst_i_5_n_3 ;
  wire \result_OBUF[15]_inst_i_6_n_0 ;
  wire \result_OBUF[15]_inst_i_7_n_0 ;
  wire \result_OBUF[15]_inst_i_8_n_0 ;
  wire \result_OBUF[15]_inst_i_9_n_0 ;
  wire \result_OBUF[16]_inst_i_2_n_0 ;
  wire \result_OBUF[16]_inst_i_3_n_0 ;
  wire \result_OBUF[17]_inst_i_2_n_0 ;
  wire \result_OBUF[17]_inst_i_3_n_0 ;
  wire \result_OBUF[18]_inst_i_2_n_0 ;
  wire \result_OBUF[18]_inst_i_3_n_0 ;
  wire \result_OBUF[19]_inst_i_10_n_0 ;
  wire \result_OBUF[19]_inst_i_11_n_0 ;
  wire \result_OBUF[19]_inst_i_12_n_0 ;
  wire \result_OBUF[19]_inst_i_13_n_0 ;
  wire \result_OBUF[19]_inst_i_14_n_0 ;
  wire \result_OBUF[19]_inst_i_15_n_0 ;
  wire \result_OBUF[19]_inst_i_16_n_0 ;
  wire \result_OBUF[19]_inst_i_17_n_0 ;
  wire \result_OBUF[19]_inst_i_18_n_0 ;
  wire \result_OBUF[19]_inst_i_19_n_0 ;
  wire \result_OBUF[19]_inst_i_20_n_0 ;
  wire \result_OBUF[19]_inst_i_21_n_0 ;
  wire \result_OBUF[19]_inst_i_22_n_0 ;
  wire \result_OBUF[19]_inst_i_23_n_0 ;
  wire \result_OBUF[19]_inst_i_24_n_0 ;
  wire \result_OBUF[19]_inst_i_25_n_0 ;
  wire \result_OBUF[19]_inst_i_26_n_0 ;
  wire \result_OBUF[19]_inst_i_27_n_0 ;
  wire \result_OBUF[19]_inst_i_28_n_0 ;
  wire \result_OBUF[19]_inst_i_29_n_0 ;
  wire \result_OBUF[19]_inst_i_2_n_0 ;
  wire \result_OBUF[19]_inst_i_30_n_0 ;
  wire \result_OBUF[19]_inst_i_31_n_0 ;
  wire \result_OBUF[19]_inst_i_32_n_0 ;
  wire \result_OBUF[19]_inst_i_33_n_0 ;
  wire \result_OBUF[19]_inst_i_3_n_0 ;
  wire \result_OBUF[19]_inst_i_4_n_0 ;
  wire \result_OBUF[19]_inst_i_4_n_1 ;
  wire \result_OBUF[19]_inst_i_4_n_2 ;
  wire \result_OBUF[19]_inst_i_4_n_3 ;
  wire \result_OBUF[19]_inst_i_5_n_0 ;
  wire \result_OBUF[19]_inst_i_5_n_1 ;
  wire \result_OBUF[19]_inst_i_5_n_2 ;
  wire \result_OBUF[19]_inst_i_5_n_3 ;
  wire \result_OBUF[19]_inst_i_6_n_0 ;
  wire \result_OBUF[19]_inst_i_7_n_0 ;
  wire \result_OBUF[19]_inst_i_8_n_0 ;
  wire \result_OBUF[19]_inst_i_9_n_0 ;
  wire \result_OBUF[1]_inst_i_2_n_0 ;
  wire \result_OBUF[1]_inst_i_3_n_0 ;
  wire \result_OBUF[20]_inst_i_2_n_0 ;
  wire \result_OBUF[20]_inst_i_3_n_0 ;
  wire \result_OBUF[21]_inst_i_2_n_0 ;
  wire \result_OBUF[21]_inst_i_3_n_0 ;
  wire \result_OBUF[22]_inst_i_2_n_0 ;
  wire \result_OBUF[22]_inst_i_3_n_0 ;
  wire \result_OBUF[23]_inst_i_10_n_0 ;
  wire \result_OBUF[23]_inst_i_11_n_0 ;
  wire \result_OBUF[23]_inst_i_12_n_0 ;
  wire \result_OBUF[23]_inst_i_13_n_0 ;
  wire \result_OBUF[23]_inst_i_14_n_0 ;
  wire \result_OBUF[23]_inst_i_15_n_0 ;
  wire \result_OBUF[23]_inst_i_16_n_0 ;
  wire \result_OBUF[23]_inst_i_17_n_0 ;
  wire \result_OBUF[23]_inst_i_18_n_0 ;
  wire \result_OBUF[23]_inst_i_19_n_0 ;
  wire \result_OBUF[23]_inst_i_20_n_0 ;
  wire \result_OBUF[23]_inst_i_21_n_0 ;
  wire \result_OBUF[23]_inst_i_22_n_0 ;
  wire \result_OBUF[23]_inst_i_23_n_0 ;
  wire \result_OBUF[23]_inst_i_24_n_0 ;
  wire \result_OBUF[23]_inst_i_25_n_0 ;
  wire \result_OBUF[23]_inst_i_26_n_0 ;
  wire \result_OBUF[23]_inst_i_27_n_0 ;
  wire \result_OBUF[23]_inst_i_28_n_0 ;
  wire \result_OBUF[23]_inst_i_29_n_0 ;
  wire \result_OBUF[23]_inst_i_2_n_0 ;
  wire \result_OBUF[23]_inst_i_30_n_0 ;
  wire \result_OBUF[23]_inst_i_31_n_0 ;
  wire \result_OBUF[23]_inst_i_32_n_0 ;
  wire \result_OBUF[23]_inst_i_33_n_0 ;
  wire \result_OBUF[23]_inst_i_3_n_0 ;
  wire \result_OBUF[23]_inst_i_4_n_0 ;
  wire \result_OBUF[23]_inst_i_4_n_1 ;
  wire \result_OBUF[23]_inst_i_4_n_2 ;
  wire \result_OBUF[23]_inst_i_4_n_3 ;
  wire \result_OBUF[23]_inst_i_5_n_0 ;
  wire \result_OBUF[23]_inst_i_5_n_1 ;
  wire \result_OBUF[23]_inst_i_5_n_2 ;
  wire \result_OBUF[23]_inst_i_5_n_3 ;
  wire \result_OBUF[23]_inst_i_6_n_0 ;
  wire \result_OBUF[23]_inst_i_7_n_0 ;
  wire \result_OBUF[23]_inst_i_8_n_0 ;
  wire \result_OBUF[23]_inst_i_9_n_0 ;
  wire \result_OBUF[24]_inst_i_2_n_0 ;
  wire \result_OBUF[24]_inst_i_3_n_0 ;
  wire \result_OBUF[25]_inst_i_2_n_0 ;
  wire \result_OBUF[25]_inst_i_3_n_0 ;
  wire \result_OBUF[26]_inst_i_2_n_0 ;
  wire \result_OBUF[26]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_10_n_0 ;
  wire \result_OBUF[27]_inst_i_11_n_0 ;
  wire \result_OBUF[27]_inst_i_12_n_0 ;
  wire \result_OBUF[27]_inst_i_13_n_0 ;
  wire \result_OBUF[27]_inst_i_14_n_0 ;
  wire \result_OBUF[27]_inst_i_15_n_0 ;
  wire \result_OBUF[27]_inst_i_16_n_0 ;
  wire \result_OBUF[27]_inst_i_17_n_0 ;
  wire \result_OBUF[27]_inst_i_18_n_0 ;
  wire \result_OBUF[27]_inst_i_19_n_0 ;
  wire \result_OBUF[27]_inst_i_20_n_0 ;
  wire \result_OBUF[27]_inst_i_21_n_0 ;
  wire \result_OBUF[27]_inst_i_22_n_0 ;
  wire \result_OBUF[27]_inst_i_23_n_0 ;
  wire \result_OBUF[27]_inst_i_24_n_0 ;
  wire \result_OBUF[27]_inst_i_25_n_0 ;
  wire \result_OBUF[27]_inst_i_26_n_0 ;
  wire \result_OBUF[27]_inst_i_27_n_0 ;
  wire \result_OBUF[27]_inst_i_28_n_0 ;
  wire \result_OBUF[27]_inst_i_29_n_0 ;
  wire \result_OBUF[27]_inst_i_2_n_0 ;
  wire \result_OBUF[27]_inst_i_30_n_0 ;
  wire \result_OBUF[27]_inst_i_31_n_0 ;
  wire \result_OBUF[27]_inst_i_32_n_0 ;
  wire \result_OBUF[27]_inst_i_33_n_0 ;
  wire \result_OBUF[27]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_4_n_0 ;
  wire \result_OBUF[27]_inst_i_4_n_1 ;
  wire \result_OBUF[27]_inst_i_4_n_2 ;
  wire \result_OBUF[27]_inst_i_4_n_3 ;
  wire \result_OBUF[27]_inst_i_5_n_0 ;
  wire \result_OBUF[27]_inst_i_5_n_1 ;
  wire \result_OBUF[27]_inst_i_5_n_2 ;
  wire \result_OBUF[27]_inst_i_5_n_3 ;
  wire \result_OBUF[27]_inst_i_6_n_0 ;
  wire \result_OBUF[27]_inst_i_7_n_0 ;
  wire \result_OBUF[27]_inst_i_8_n_0 ;
  wire \result_OBUF[27]_inst_i_9_n_0 ;
  wire \result_OBUF[28]_inst_i_2_n_0 ;
  wire \result_OBUF[28]_inst_i_3_n_0 ;
  wire \result_OBUF[29]_inst_i_2_n_0 ;
  wire \result_OBUF[29]_inst_i_3_n_0 ;
  wire \result_OBUF[2]_inst_i_2_n_0 ;
  wire \result_OBUF[2]_inst_i_3_n_0 ;
  wire \result_OBUF[30]_inst_i_2_n_0 ;
  wire \result_OBUF[30]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_10_n_0 ;
  wire \result_OBUF[31]_inst_i_11_n_1 ;
  wire \result_OBUF[31]_inst_i_11_n_2 ;
  wire \result_OBUF[31]_inst_i_11_n_3 ;
  wire \result_OBUF[31]_inst_i_12_n_0 ;
  wire \result_OBUF[31]_inst_i_13_n_0 ;
  wire \result_OBUF[31]_inst_i_14_n_0 ;
  wire \result_OBUF[31]_inst_i_15_n_0 ;
  wire \result_OBUF[31]_inst_i_16_n_0 ;
  wire \result_OBUF[31]_inst_i_17_n_0 ;
  wire \result_OBUF[31]_inst_i_18_n_1 ;
  wire \result_OBUF[31]_inst_i_18_n_2 ;
  wire \result_OBUF[31]_inst_i_18_n_3 ;
  wire \result_OBUF[31]_inst_i_19_n_0 ;
  wire \result_OBUF[31]_inst_i_20_n_0 ;
  wire \result_OBUF[31]_inst_i_21_n_0 ;
  wire \result_OBUF[31]_inst_i_22_n_0 ;
  wire \result_OBUF[31]_inst_i_23_n_0 ;
  wire \result_OBUF[31]_inst_i_24_n_0 ;
  wire \result_OBUF[31]_inst_i_25_n_0 ;
  wire \result_OBUF[31]_inst_i_26_n_0 ;
  wire \result_OBUF[31]_inst_i_27_n_0 ;
  wire \result_OBUF[31]_inst_i_28_n_0 ;
  wire \result_OBUF[31]_inst_i_29_n_0 ;
  wire \result_OBUF[31]_inst_i_2_n_0 ;
  wire \result_OBUF[31]_inst_i_30_n_0 ;
  wire \result_OBUF[31]_inst_i_31_n_0 ;
  wire \result_OBUF[31]_inst_i_32_n_0 ;
  wire \result_OBUF[31]_inst_i_33_n_0 ;
  wire \result_OBUF[31]_inst_i_34_n_0 ;
  wire \result_OBUF[31]_inst_i_35_n_0 ;
  wire \result_OBUF[31]_inst_i_36_n_0 ;
  wire \result_OBUF[31]_inst_i_37_n_0 ;
  wire \result_OBUF[31]_inst_i_38_n_0 ;
  wire \result_OBUF[31]_inst_i_39_n_0 ;
  wire \result_OBUF[31]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_40_n_0 ;
  wire \result_OBUF[31]_inst_i_41_n_0 ;
  wire \result_OBUF[31]_inst_i_42_n_0 ;
  wire \result_OBUF[31]_inst_i_43_n_0 ;
  wire \result_OBUF[31]_inst_i_44_n_0 ;
  wire \result_OBUF[31]_inst_i_45_n_0 ;
  wire \result_OBUF[31]_inst_i_46_n_0 ;
  wire \result_OBUF[31]_inst_i_47_n_0 ;
  wire \result_OBUF[31]_inst_i_48_n_0 ;
  wire \result_OBUF[31]_inst_i_49_n_0 ;
  wire \result_OBUF[31]_inst_i_4_n_0 ;
  wire \result_OBUF[31]_inst_i_50_n_0 ;
  wire \result_OBUF[31]_inst_i_51_n_0 ;
  wire \result_OBUF[31]_inst_i_52_n_0 ;
  wire \result_OBUF[31]_inst_i_53_n_0 ;
  wire \result_OBUF[31]_inst_i_54_n_0 ;
  wire \result_OBUF[31]_inst_i_55_n_0 ;
  wire \result_OBUF[31]_inst_i_56_n_0 ;
  wire \result_OBUF[31]_inst_i_57_n_0 ;
  wire \result_OBUF[31]_inst_i_58_n_0 ;
  wire \result_OBUF[31]_inst_i_59_n_0 ;
  wire \result_OBUF[31]_inst_i_5_n_0 ;
  wire \result_OBUF[31]_inst_i_60_n_0 ;
  wire \result_OBUF[31]_inst_i_61_n_0 ;
  wire \result_OBUF[31]_inst_i_62_n_0 ;
  wire \result_OBUF[31]_inst_i_63_n_0 ;
  wire \result_OBUF[31]_inst_i_6_n_0 ;
  wire \result_OBUF[31]_inst_i_7_n_0 ;
  wire \result_OBUF[31]_inst_i_8_n_0 ;
  wire \result_OBUF[31]_inst_i_9_n_0 ;
  wire \result_OBUF[3]_inst_i_10_n_0 ;
  wire \result_OBUF[3]_inst_i_11_n_0 ;
  wire \result_OBUF[3]_inst_i_12_n_0 ;
  wire \result_OBUF[3]_inst_i_13_n_0 ;
  wire \result_OBUF[3]_inst_i_14_n_0 ;
  wire \result_OBUF[3]_inst_i_15_n_0 ;
  wire \result_OBUF[3]_inst_i_16_n_0 ;
  wire \result_OBUF[3]_inst_i_17_n_0 ;
  wire \result_OBUF[3]_inst_i_18_n_0 ;
  wire \result_OBUF[3]_inst_i_19_n_0 ;
  wire \result_OBUF[3]_inst_i_20_n_0 ;
  wire \result_OBUF[3]_inst_i_21_n_0 ;
  wire \result_OBUF[3]_inst_i_22_n_0 ;
  wire \result_OBUF[3]_inst_i_23_n_0 ;
  wire \result_OBUF[3]_inst_i_24_n_0 ;
  wire \result_OBUF[3]_inst_i_26_n_0 ;
  wire \result_OBUF[3]_inst_i_27_n_0 ;
  wire \result_OBUF[3]_inst_i_28_n_0 ;
  wire \result_OBUF[3]_inst_i_29_n_0 ;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[3]_inst_i_4_n_0 ;
  wire \result_OBUF[3]_inst_i_4_n_1 ;
  wire \result_OBUF[3]_inst_i_4_n_2 ;
  wire \result_OBUF[3]_inst_i_4_n_3 ;
  wire \result_OBUF[3]_inst_i_5_n_0 ;
  wire \result_OBUF[3]_inst_i_5_n_1 ;
  wire \result_OBUF[3]_inst_i_5_n_2 ;
  wire \result_OBUF[3]_inst_i_5_n_3 ;
  wire \result_OBUF[3]_inst_i_6_n_0 ;
  wire \result_OBUF[3]_inst_i_7_n_0 ;
  wire \result_OBUF[3]_inst_i_8_n_0 ;
  wire \result_OBUF[3]_inst_i_9_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_3_n_0 ;
  wire \result_OBUF[5]_inst_i_2_n_0 ;
  wire \result_OBUF[5]_inst_i_3_n_0 ;
  wire \result_OBUF[6]_inst_i_2_n_0 ;
  wire \result_OBUF[6]_inst_i_3_n_0 ;
  wire \result_OBUF[7]_inst_i_10_n_0 ;
  wire \result_OBUF[7]_inst_i_11_n_0 ;
  wire \result_OBUF[7]_inst_i_12_n_0 ;
  wire \result_OBUF[7]_inst_i_13_n_0 ;
  wire \result_OBUF[7]_inst_i_14_n_0 ;
  wire \result_OBUF[7]_inst_i_15_n_0 ;
  wire \result_OBUF[7]_inst_i_16_n_0 ;
  wire \result_OBUF[7]_inst_i_17_n_0 ;
  wire \result_OBUF[7]_inst_i_18_n_0 ;
  wire \result_OBUF[7]_inst_i_19_n_0 ;
  wire \result_OBUF[7]_inst_i_20_n_0 ;
  wire \result_OBUF[7]_inst_i_21_n_0 ;
  wire \result_OBUF[7]_inst_i_22_n_0 ;
  wire \result_OBUF[7]_inst_i_23_n_0 ;
  wire \result_OBUF[7]_inst_i_24_n_0 ;
  wire \result_OBUF[7]_inst_i_25_n_0 ;
  wire \result_OBUF[7]_inst_i_26_n_0 ;
  wire \result_OBUF[7]_inst_i_27_n_0 ;
  wire \result_OBUF[7]_inst_i_28_n_0 ;
  wire \result_OBUF[7]_inst_i_29_n_0 ;
  wire \result_OBUF[7]_inst_i_2_n_0 ;
  wire \result_OBUF[7]_inst_i_30_n_0 ;
  wire \result_OBUF[7]_inst_i_31_n_0 ;
  wire \result_OBUF[7]_inst_i_32_n_0 ;
  wire \result_OBUF[7]_inst_i_33_n_0 ;
  wire \result_OBUF[7]_inst_i_3_n_0 ;
  wire \result_OBUF[7]_inst_i_4_n_0 ;
  wire \result_OBUF[7]_inst_i_4_n_1 ;
  wire \result_OBUF[7]_inst_i_4_n_2 ;
  wire \result_OBUF[7]_inst_i_4_n_3 ;
  wire \result_OBUF[7]_inst_i_5_n_0 ;
  wire \result_OBUF[7]_inst_i_5_n_1 ;
  wire \result_OBUF[7]_inst_i_5_n_2 ;
  wire \result_OBUF[7]_inst_i_5_n_3 ;
  wire \result_OBUF[7]_inst_i_6_n_0 ;
  wire \result_OBUF[7]_inst_i_7_n_0 ;
  wire \result_OBUF[7]_inst_i_8_n_0 ;
  wire \result_OBUF[7]_inst_i_9_n_0 ;
  wire \result_OBUF[8]_inst_i_2_n_0 ;
  wire \result_OBUF[8]_inst_i_3_n_0 ;
  wire \result_OBUF[9]_inst_i_2_n_0 ;
  wire \result_OBUF[9]_inst_i_3_n_0 ;

  IBUF C_in_IBUF_inst
       (.I(C_in),
        .O(C_in_IBUF));
  GND GND
       (.G(\<const0> ));
  IBUF N_in_IBUF_inst
       (.I(N_in),
        .O(N_in_IBUF));
  IBUF V_in_IBUF_inst
       (.I(V_in),
        .O(V_in_IBUF));
  IBUF Z_in_IBUF_inst
       (.I(Z_in),
        .O(Z_in_IBUF));
  IBUF \instruction_IBUF[10]_inst 
       (.I(instruction[10]),
        .O(instruction_IBUF[10]));
  IBUF \instruction_IBUF[11]_inst 
       (.I(instruction[11]),
        .O(instruction_IBUF[11]));
  IBUF \instruction_IBUF[20]_inst 
       (.I(instruction[20]),
        .O(instruction_IBUF[20]));
  IBUF \instruction_IBUF[21]_inst 
       (.I(instruction[21]),
        .O(instruction_IBUF[21]));
  IBUF \instruction_IBUF[22]_inst 
       (.I(instruction[22]),
        .O(instruction_IBUF[22]));
  IBUF \instruction_IBUF[23]_inst 
       (.I(instruction[23]),
        .O(instruction_IBUF[23]));
  IBUF \instruction_IBUF[24]_inst 
       (.I(instruction[24]),
        .O(instruction_IBUF[24]));
  IBUF \instruction_IBUF[25]_inst 
       (.I(instruction[25]),
        .O(instruction_IBUF[25]));
  IBUF \instruction_IBUF[26]_inst 
       (.I(instruction[26]),
        .O(instruction_IBUF[26]));
  IBUF \instruction_IBUF[27]_inst 
       (.I(instruction[27]),
        .O(instruction_IBUF[27]));
  IBUF \instruction_IBUF[28]_inst 
       (.I(instruction[28]),
        .O(instruction_IBUF[28]));
  IBUF \instruction_IBUF[29]_inst 
       (.I(instruction[29]),
        .O(instruction_IBUF[29]));
  IBUF \instruction_IBUF[30]_inst 
       (.I(instruction[30]),
        .O(instruction_IBUF[30]));
  IBUF \instruction_IBUF[31]_inst 
       (.I(instruction[31]),
        .O(instruction_IBUF[31]));
  IBUF \instruction_IBUF[4]_inst 
       (.I(instruction[4]),
        .O(instruction_IBUF[4]));
  IBUF \instruction_IBUF[5]_inst 
       (.I(instruction[5]),
        .O(instruction_IBUF[5]));
  IBUF \instruction_IBUF[6]_inst 
       (.I(instruction[6]),
        .O(instruction_IBUF[6]));
  IBUF \instruction_IBUF[7]_inst 
       (.I(instruction[7]),
        .O(instruction_IBUF[7]));
  IBUF \instruction_IBUF[8]_inst 
       (.I(instruction[8]),
        .O(instruction_IBUF[8]));
  IBUF \instruction_IBUF[9]_inst 
       (.I(instruction[9]),
        .O(instruction_IBUF[9]));
  OBUF next_C_OBUF_inst
       (.I(next_C_OBUF),
        .O(next_C));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hC440)) 
    next_C_OBUF_inst_i_1
       (.I0(next_N_OBUF),
        .I1(\result_OBUF[31]_inst_i_2_n_0 ),
        .I2(operand2_IBUF[31]),
        .I3(operand1_IBUF[31]),
        .O(next_C_OBUF));
  OBUF next_N_OBUF_inst
       (.I(next_N_OBUF),
        .O(next_N));
  OBUF next_V_OBUF_inst
       (.I(next_V_OBUF),
        .O(next_V));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h400A)) 
    next_V_OBUF_inst_i_1
       (.I0(next_N_OBUF),
        .I1(\result_OBUF[31]_inst_i_2_n_0 ),
        .I2(operand1_IBUF[31]),
        .I3(operand2_IBUF[31]),
        .O(next_V_OBUF));
  OBUF next_Z_OBUF_inst
       (.I(next_Z_OBUF),
        .O(next_Z));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    next_Z_OBUF_inst_i_1
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(next_Z_OBUF_inst_i_2_n_0),
        .I2(next_Z_OBUF_inst_i_3_n_0),
        .I3(next_Z_OBUF_inst_i_4_n_0),
        .I4(next_Z_OBUF_inst_i_5_n_0),
        .I5(next_Z_OBUF_inst_i_6_n_0),
        .O(next_Z_OBUF));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    next_Z_OBUF_inst_i_10
       (.I0(\result_OBUF[29]_inst_i_3_n_0 ),
        .I1(\result_OBUF[29]_inst_i_2_n_0 ),
        .I2(\result_OBUF[28]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(\result_OBUF[28]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_2_n_0 ),
        .O(next_Z_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    next_Z_OBUF_inst_i_11
       (.I0(\result_OBUF[15]_inst_i_3_n_0 ),
        .I1(\result_OBUF[15]_inst_i_2_n_0 ),
        .I2(\result_OBUF[14]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(\result_OBUF[14]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_2_n_0 ),
        .O(next_Z_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    next_Z_OBUF_inst_i_12
       (.I0(\result_OBUF[13]_inst_i_3_n_0 ),
        .I1(\result_OBUF[13]_inst_i_2_n_0 ),
        .I2(\result_OBUF[12]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(\result_OBUF[12]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_2_n_0 ),
        .O(next_Z_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    next_Z_OBUF_inst_i_2
       (.I0(result_OBUF[18]),
        .I1(result_OBUF[19]),
        .I2(result_OBUF[17]),
        .I3(result_OBUF[16]),
        .I4(next_Z_OBUF_inst_i_7_n_0),
        .I5(next_Z_OBUF_inst_i_8_n_0),
        .O(next_Z_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    next_Z_OBUF_inst_i_3
       (.I0(next_Z_OBUF_inst_i_9_n_0),
        .I1(result_OBUF[25]),
        .I2(result_OBUF[24]),
        .I3(next_N_OBUF),
        .I4(result_OBUF[30]),
        .I5(next_Z_OBUF_inst_i_10_n_0),
        .O(next_Z_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    next_Z_OBUF_inst_i_4
       (.I0(result_OBUF[5]),
        .I1(result_OBUF[4]),
        .I2(result_OBUF[6]),
        .I3(result_OBUF[7]),
        .O(next_Z_OBUF_inst_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    next_Z_OBUF_inst_i_5
       (.I0(result_OBUF[1]),
        .I1(result_OBUF[0]),
        .I2(result_OBUF[2]),
        .I3(result_OBUF[3]),
        .O(next_Z_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    next_Z_OBUF_inst_i_6
       (.I0(result_OBUF[10]),
        .I1(result_OBUF[11]),
        .I2(result_OBUF[9]),
        .I3(result_OBUF[8]),
        .I4(next_Z_OBUF_inst_i_11_n_0),
        .I5(next_Z_OBUF_inst_i_12_n_0),
        .O(next_Z_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    next_Z_OBUF_inst_i_7
       (.I0(\result_OBUF[22]_inst_i_3_n_0 ),
        .I1(\result_OBUF[22]_inst_i_2_n_0 ),
        .I2(\result_OBUF[23]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(\result_OBUF[23]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_2_n_0 ),
        .O(next_Z_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    next_Z_OBUF_inst_i_8
       (.I0(\result_OBUF[21]_inst_i_3_n_0 ),
        .I1(\result_OBUF[21]_inst_i_2_n_0 ),
        .I2(\result_OBUF[20]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(\result_OBUF[20]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_2_n_0 ),
        .O(next_Z_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    next_Z_OBUF_inst_i_9
       (.I0(\result_OBUF[26]_inst_i_3_n_0 ),
        .I1(\result_OBUF[26]_inst_i_2_n_0 ),
        .I2(\result_OBUF[27]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(\result_OBUF[27]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_2_n_0 ),
        .O(next_Z_OBUF_inst_i_9_n_0));
  IBUF \operand1_IBUF[0]_inst 
       (.I(operand1[0]),
        .O(operand1_IBUF[0]));
  IBUF \operand1_IBUF[10]_inst 
       (.I(operand1[10]),
        .O(operand1_IBUF[10]));
  IBUF \operand1_IBUF[11]_inst 
       (.I(operand1[11]),
        .O(operand1_IBUF[11]));
  IBUF \operand1_IBUF[12]_inst 
       (.I(operand1[12]),
        .O(operand1_IBUF[12]));
  IBUF \operand1_IBUF[13]_inst 
       (.I(operand1[13]),
        .O(operand1_IBUF[13]));
  IBUF \operand1_IBUF[14]_inst 
       (.I(operand1[14]),
        .O(operand1_IBUF[14]));
  IBUF \operand1_IBUF[15]_inst 
       (.I(operand1[15]),
        .O(operand1_IBUF[15]));
  IBUF \operand1_IBUF[16]_inst 
       (.I(operand1[16]),
        .O(operand1_IBUF[16]));
  IBUF \operand1_IBUF[17]_inst 
       (.I(operand1[17]),
        .O(operand1_IBUF[17]));
  IBUF \operand1_IBUF[18]_inst 
       (.I(operand1[18]),
        .O(operand1_IBUF[18]));
  IBUF \operand1_IBUF[19]_inst 
       (.I(operand1[19]),
        .O(operand1_IBUF[19]));
  IBUF \operand1_IBUF[1]_inst 
       (.I(operand1[1]),
        .O(operand1_IBUF[1]));
  IBUF \operand1_IBUF[20]_inst 
       (.I(operand1[20]),
        .O(operand1_IBUF[20]));
  IBUF \operand1_IBUF[21]_inst 
       (.I(operand1[21]),
        .O(operand1_IBUF[21]));
  IBUF \operand1_IBUF[22]_inst 
       (.I(operand1[22]),
        .O(operand1_IBUF[22]));
  IBUF \operand1_IBUF[23]_inst 
       (.I(operand1[23]),
        .O(operand1_IBUF[23]));
  IBUF \operand1_IBUF[24]_inst 
       (.I(operand1[24]),
        .O(operand1_IBUF[24]));
  IBUF \operand1_IBUF[25]_inst 
       (.I(operand1[25]),
        .O(operand1_IBUF[25]));
  IBUF \operand1_IBUF[26]_inst 
       (.I(operand1[26]),
        .O(operand1_IBUF[26]));
  IBUF \operand1_IBUF[27]_inst 
       (.I(operand1[27]),
        .O(operand1_IBUF[27]));
  IBUF \operand1_IBUF[28]_inst 
       (.I(operand1[28]),
        .O(operand1_IBUF[28]));
  IBUF \operand1_IBUF[29]_inst 
       (.I(operand1[29]),
        .O(operand1_IBUF[29]));
  IBUF \operand1_IBUF[2]_inst 
       (.I(operand1[2]),
        .O(operand1_IBUF[2]));
  IBUF \operand1_IBUF[30]_inst 
       (.I(operand1[30]),
        .O(operand1_IBUF[30]));
  IBUF \operand1_IBUF[31]_inst 
       (.I(operand1[31]),
        .O(operand1_IBUF[31]));
  IBUF \operand1_IBUF[3]_inst 
       (.I(operand1[3]),
        .O(operand1_IBUF[3]));
  IBUF \operand1_IBUF[4]_inst 
       (.I(operand1[4]),
        .O(operand1_IBUF[4]));
  IBUF \operand1_IBUF[5]_inst 
       (.I(operand1[5]),
        .O(operand1_IBUF[5]));
  IBUF \operand1_IBUF[6]_inst 
       (.I(operand1[6]),
        .O(operand1_IBUF[6]));
  IBUF \operand1_IBUF[7]_inst 
       (.I(operand1[7]),
        .O(operand1_IBUF[7]));
  IBUF \operand1_IBUF[8]_inst 
       (.I(operand1[8]),
        .O(operand1_IBUF[8]));
  IBUF \operand1_IBUF[9]_inst 
       (.I(operand1[9]),
        .O(operand1_IBUF[9]));
  IBUF \operand2_IBUF[0]_inst 
       (.I(operand2[0]),
        .O(operand2_IBUF[0]));
  IBUF \operand2_IBUF[10]_inst 
       (.I(operand2[10]),
        .O(operand2_IBUF[10]));
  IBUF \operand2_IBUF[11]_inst 
       (.I(operand2[11]),
        .O(operand2_IBUF[11]));
  IBUF \operand2_IBUF[12]_inst 
       (.I(operand2[12]),
        .O(operand2_IBUF[12]));
  IBUF \operand2_IBUF[13]_inst 
       (.I(operand2[13]),
        .O(operand2_IBUF[13]));
  IBUF \operand2_IBUF[14]_inst 
       (.I(operand2[14]),
        .O(operand2_IBUF[14]));
  IBUF \operand2_IBUF[15]_inst 
       (.I(operand2[15]),
        .O(operand2_IBUF[15]));
  IBUF \operand2_IBUF[16]_inst 
       (.I(operand2[16]),
        .O(operand2_IBUF[16]));
  IBUF \operand2_IBUF[17]_inst 
       (.I(operand2[17]),
        .O(operand2_IBUF[17]));
  IBUF \operand2_IBUF[18]_inst 
       (.I(operand2[18]),
        .O(operand2_IBUF[18]));
  IBUF \operand2_IBUF[19]_inst 
       (.I(operand2[19]),
        .O(operand2_IBUF[19]));
  IBUF \operand2_IBUF[1]_inst 
       (.I(operand2[1]),
        .O(operand2_IBUF[1]));
  IBUF \operand2_IBUF[20]_inst 
       (.I(operand2[20]),
        .O(operand2_IBUF[20]));
  IBUF \operand2_IBUF[21]_inst 
       (.I(operand2[21]),
        .O(operand2_IBUF[21]));
  IBUF \operand2_IBUF[22]_inst 
       (.I(operand2[22]),
        .O(operand2_IBUF[22]));
  IBUF \operand2_IBUF[23]_inst 
       (.I(operand2[23]),
        .O(operand2_IBUF[23]));
  IBUF \operand2_IBUF[24]_inst 
       (.I(operand2[24]),
        .O(operand2_IBUF[24]));
  IBUF \operand2_IBUF[25]_inst 
       (.I(operand2[25]),
        .O(operand2_IBUF[25]));
  IBUF \operand2_IBUF[26]_inst 
       (.I(operand2[26]),
        .O(operand2_IBUF[26]));
  IBUF \operand2_IBUF[27]_inst 
       (.I(operand2[27]),
        .O(operand2_IBUF[27]));
  IBUF \operand2_IBUF[28]_inst 
       (.I(operand2[28]),
        .O(operand2_IBUF[28]));
  IBUF \operand2_IBUF[29]_inst 
       (.I(operand2[29]),
        .O(operand2_IBUF[29]));
  IBUF \operand2_IBUF[2]_inst 
       (.I(operand2[2]),
        .O(operand2_IBUF[2]));
  IBUF \operand2_IBUF[30]_inst 
       (.I(operand2[30]),
        .O(operand2_IBUF[30]));
  IBUF \operand2_IBUF[31]_inst 
       (.I(operand2[31]),
        .O(operand2_IBUF[31]));
  IBUF \operand2_IBUF[3]_inst 
       (.I(operand2[3]),
        .O(operand2_IBUF[3]));
  IBUF \operand2_IBUF[4]_inst 
       (.I(operand2[4]),
        .O(operand2_IBUF[4]));
  IBUF \operand2_IBUF[5]_inst 
       (.I(operand2[5]),
        .O(operand2_IBUF[5]));
  IBUF \operand2_IBUF[6]_inst 
       (.I(operand2[6]),
        .O(operand2_IBUF[6]));
  IBUF \operand2_IBUF[7]_inst 
       (.I(operand2[7]),
        .O(operand2_IBUF[7]));
  IBUF \operand2_IBUF[8]_inst 
       (.I(operand2[8]),
        .O(operand2_IBUF[8]));
  IBUF \operand2_IBUF[9]_inst 
       (.I(operand2[9]),
        .O(operand2_IBUF[9]));
  OBUF predicate_OBUF_inst
       (.I(predicate_OBUF),
        .O(predicate));
  LUT3 #(
    .INIT(8'h82)) 
    predicate_OBUF_inst_i_1
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(predicate_OBUF_inst_i_2_n_0),
        .I2(instruction_IBUF[28]),
        .O(predicate_OBUF));
  LUT6 #(
    .INIT(64'h00000000ABAAABAF)) 
    predicate_OBUF_inst_i_2
       (.I0(predicate_OBUF_inst_i_3_n_0),
        .I1(C_in_IBUF),
        .I2(instruction_IBUF[30]),
        .I3(instruction_IBUF[29]),
        .I4(Z_in_IBUF),
        .I5(predicate_OBUF_inst_i_4_n_0),
        .O(predicate_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAEAAEEE)) 
    predicate_OBUF_inst_i_3
       (.I0(instruction_IBUF[31]),
        .I1(instruction_IBUF[30]),
        .I2(instruction_IBUF[29]),
        .I3(V_in_IBUF),
        .I4(N_in_IBUF),
        .O(predicate_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'h0000F99F)) 
    predicate_OBUF_inst_i_4
       (.I0(instruction_IBUF[29]),
        .I1(instruction_IBUF[30]),
        .I2(V_in_IBUF),
        .I3(N_in_IBUF),
        .I4(predicate_OBUF_inst_i_5_n_0),
        .O(predicate_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'h0F0FFF1F)) 
    predicate_OBUF_inst_i_5
       (.I0(C_in_IBUF),
        .I1(instruction_IBUF[30]),
        .I2(instruction_IBUF[31]),
        .I3(Z_in_IBUF),
        .I4(instruction_IBUF[29]),
        .O(predicate_OBUF_inst_i_5_n_0));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[0]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[0]_inst_i_3_n_0 ),
        .O(result_OBUF[0]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[0]_inst_i_2 
       (.I0(data2[0]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[0]),
        .I4(operand2_IBUF[0]),
        .O(\result_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[0]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[0]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[0]),
        .I4(operand2_IBUF[0]),
        .O(\result_OBUF[0]_inst_i_3_n_0 ));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[10]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[10]_inst_i_3_n_0 ),
        .O(result_OBUF[10]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[10]_inst_i_2 
       (.I0(data2[10]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[10]),
        .I4(operand2_IBUF[10]),
        .O(\result_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[10]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[10]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[10]),
        .I4(operand2_IBUF[10]),
        .O(\result_OBUF[10]_inst_i_3_n_0 ));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[11]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[11]_inst_i_3_n_0 ),
        .O(result_OBUF[11]));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[11]_inst_i_10 
       (.I0(\result_OBUF[11]_inst_i_6_n_0 ),
        .I1(\result_OBUF[15]_inst_i_24_n_0 ),
        .I2(operand1_IBUF[11]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[15]_inst_i_25_n_0 ),
        .O(\result_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[11]_inst_i_11 
       (.I0(\result_OBUF[11]_inst_i_7_n_0 ),
        .I1(\result_OBUF[11]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[10]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[11]_inst_i_19_n_0 ),
        .O(\result_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[11]_inst_i_12 
       (.I0(\result_OBUF[11]_inst_i_8_n_0 ),
        .I1(\result_OBUF[11]_inst_i_20_n_0 ),
        .I2(operand1_IBUF[9]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[11]_inst_i_21_n_0 ),
        .O(\result_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[11]_inst_i_13 
       (.I0(\result_OBUF[11]_inst_i_9_n_0 ),
        .I1(\result_OBUF[11]_inst_i_22_n_0 ),
        .I2(operand1_IBUF[8]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[11]_inst_i_23_n_0 ),
        .O(\result_OBUF[11]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_14 
       (.I0(operand1_IBUF[11]),
        .I1(operand2_IBUF[11]),
        .O(\result_OBUF[11]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_15 
       (.I0(operand1_IBUF[10]),
        .I1(operand2_IBUF[10]),
        .O(\result_OBUF[11]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_16 
       (.I0(operand1_IBUF[9]),
        .I1(operand2_IBUF[9]),
        .O(\result_OBUF[11]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_17 
       (.I0(operand1_IBUF[8]),
        .I1(operand2_IBUF[8]),
        .O(\result_OBUF[11]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[11]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_26_n_0 ),
        .I3(operand1_IBUF[9]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[9]),
        .O(\result_OBUF[11]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[11]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_29_n_0 ),
        .I3(operand2_IBUF[10]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[10]),
        .O(\result_OBUF[11]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[11]_inst_i_2 
       (.I0(data2[11]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[11]),
        .I4(operand2_IBUF[11]),
        .O(\result_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[11]_inst_i_20 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_27_n_0 ),
        .I3(operand1_IBUF[8]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[8]),
        .O(\result_OBUF[11]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[11]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_26_n_0 ),
        .I3(operand2_IBUF[9]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[9]),
        .O(\result_OBUF[11]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[11]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_28_n_0 ),
        .I3(operand1_IBUF[7]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[7]),
        .O(\result_OBUF[11]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[11]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_27_n_0 ),
        .I3(operand2_IBUF[8]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[8]),
        .O(\result_OBUF[11]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[11]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_29_n_0 ),
        .I3(operand1_IBUF[6]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[6]),
        .O(\result_OBUF[11]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[11]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_28_n_0 ),
        .I3(operand2_IBUF[7]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[7]),
        .O(\result_OBUF[11]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[11]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[9]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[11]_inst_i_30_n_0 ),
        .I4(operand1_IBUF[9]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[11]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[11]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[8]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[11]_inst_i_31_n_0 ),
        .I4(operand1_IBUF[8]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[11]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[11]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[7]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[11]_inst_i_32_n_0 ),
        .I4(operand2_IBUF[7]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[11]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[11]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[6]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[11]_inst_i_33_n_0 ),
        .I4(operand2_IBUF[6]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[11]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[11]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[11]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[11]),
        .I4(operand2_IBUF[11]),
        .O(\result_OBUF[11]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[11]_inst_i_30 
       (.I0(operand2_IBUF[9]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[11]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[11]_inst_i_31 
       (.I0(operand2_IBUF[8]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[11]_inst_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[11]_inst_i_32 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[7]),
        .O(\result_OBUF[11]_inst_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[11]_inst_i_33 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[6]),
        .O(\result_OBUF[11]_inst_i_33_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[11]_inst_i_4 
       (.CI(\result_OBUF[7]_inst_i_4_n_0 ),
        .CO({\result_OBUF[11]_inst_i_4_n_0 ,\result_OBUF[11]_inst_i_4_n_1 ,\result_OBUF[11]_inst_i_4_n_2 ,\result_OBUF[11]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[11]_inst_i_6_n_0 ,\result_OBUF[11]_inst_i_7_n_0 ,\result_OBUF[11]_inst_i_8_n_0 ,\result_OBUF[11]_inst_i_9_n_0 }),
        .O(data2[11:8]),
        .S({\result_OBUF[11]_inst_i_10_n_0 ,\result_OBUF[11]_inst_i_11_n_0 ,\result_OBUF[11]_inst_i_12_n_0 ,\result_OBUF[11]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[11]_inst_i_5 
       (.CI(\result_OBUF[7]_inst_i_5_n_0 ),
        .CO({\result_OBUF[11]_inst_i_5_n_0 ,\result_OBUF[11]_inst_i_5_n_1 ,\result_OBUF[11]_inst_i_5_n_2 ,\result_OBUF[11]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[11:8]),
        .O(data3[11:8]),
        .S({\result_OBUF[11]_inst_i_14_n_0 ,\result_OBUF[11]_inst_i_15_n_0 ,\result_OBUF[11]_inst_i_16_n_0 ,\result_OBUF[11]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[11]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[10]),
        .I3(\result_OBUF[11]_inst_i_18_n_0 ),
        .I4(\result_OBUF[11]_inst_i_19_n_0 ),
        .O(\result_OBUF[11]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[11]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[9]),
        .I3(\result_OBUF[11]_inst_i_20_n_0 ),
        .I4(\result_OBUF[11]_inst_i_21_n_0 ),
        .O(\result_OBUF[11]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[11]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[8]),
        .I3(\result_OBUF[11]_inst_i_22_n_0 ),
        .I4(\result_OBUF[11]_inst_i_23_n_0 ),
        .O(\result_OBUF[11]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[11]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[7]),
        .I3(\result_OBUF[11]_inst_i_24_n_0 ),
        .I4(\result_OBUF[11]_inst_i_25_n_0 ),
        .O(\result_OBUF[11]_inst_i_9_n_0 ));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[12]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[12]_inst_i_3_n_0 ),
        .O(result_OBUF[12]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[12]_inst_i_2 
       (.I0(data2[12]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[12]),
        .I4(operand2_IBUF[12]),
        .O(\result_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[12]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[12]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[12]),
        .I4(operand2_IBUF[12]),
        .O(\result_OBUF[12]_inst_i_3_n_0 ));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[13]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[13]_inst_i_3_n_0 ),
        .O(result_OBUF[13]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[13]_inst_i_2 
       (.I0(data2[13]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[13]),
        .I4(operand2_IBUF[13]),
        .O(\result_OBUF[13]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[13]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[13]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[13]),
        .I4(operand2_IBUF[13]),
        .O(\result_OBUF[13]_inst_i_3_n_0 ));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[14]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[14]_inst_i_3_n_0 ),
        .O(result_OBUF[14]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(data2[14]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[14]),
        .I4(operand2_IBUF[14]),
        .O(\result_OBUF[14]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[14]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[14]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[14]),
        .I4(operand2_IBUF[14]),
        .O(\result_OBUF[14]_inst_i_3_n_0 ));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[15]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[15]_inst_i_3_n_0 ),
        .O(result_OBUF[15]));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[15]_inst_i_10 
       (.I0(\result_OBUF[15]_inst_i_6_n_0 ),
        .I1(\result_OBUF[19]_inst_i_24_n_0 ),
        .I2(operand1_IBUF[15]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[19]_inst_i_25_n_0 ),
        .O(\result_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[15]_inst_i_11 
       (.I0(\result_OBUF[15]_inst_i_7_n_0 ),
        .I1(\result_OBUF[15]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[14]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[15]_inst_i_19_n_0 ),
        .O(\result_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[15]_inst_i_12 
       (.I0(\result_OBUF[15]_inst_i_8_n_0 ),
        .I1(\result_OBUF[15]_inst_i_20_n_0 ),
        .I2(operand1_IBUF[13]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[15]_inst_i_21_n_0 ),
        .O(\result_OBUF[15]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[15]_inst_i_13 
       (.I0(\result_OBUF[15]_inst_i_9_n_0 ),
        .I1(\result_OBUF[15]_inst_i_22_n_0 ),
        .I2(operand1_IBUF[12]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[15]_inst_i_23_n_0 ),
        .O(\result_OBUF[15]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_14 
       (.I0(operand1_IBUF[15]),
        .I1(operand2_IBUF[15]),
        .O(\result_OBUF[15]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_15 
       (.I0(operand1_IBUF[14]),
        .I1(operand2_IBUF[14]),
        .O(\result_OBUF[15]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_16 
       (.I0(operand1_IBUF[13]),
        .I1(operand2_IBUF[13]),
        .O(\result_OBUF[15]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_17 
       (.I0(operand1_IBUF[12]),
        .I1(operand2_IBUF[12]),
        .O(\result_OBUF[15]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[15]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_26_n_0 ),
        .I3(operand1_IBUF[13]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[13]),
        .O(\result_OBUF[15]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[15]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_29_n_0 ),
        .I3(operand2_IBUF[14]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[14]),
        .O(\result_OBUF[15]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(data2[15]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[15]),
        .I4(operand2_IBUF[15]),
        .O(\result_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[15]_inst_i_20 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_27_n_0 ),
        .I3(operand1_IBUF[12]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[12]),
        .O(\result_OBUF[15]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[15]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_26_n_0 ),
        .I3(operand2_IBUF[13]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[13]),
        .O(\result_OBUF[15]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[15]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_28_n_0 ),
        .I3(operand1_IBUF[11]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[11]),
        .O(\result_OBUF[15]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[15]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_27_n_0 ),
        .I3(operand2_IBUF[12]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[12]),
        .O(\result_OBUF[15]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[15]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_29_n_0 ),
        .I3(operand1_IBUF[10]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[10]),
        .O(\result_OBUF[15]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[15]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[15]_inst_i_28_n_0 ),
        .I3(operand2_IBUF[11]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[11]),
        .O(\result_OBUF[15]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[15]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[13]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[15]_inst_i_30_n_0 ),
        .I4(operand1_IBUF[13]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[15]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[15]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[12]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[15]_inst_i_31_n_0 ),
        .I4(operand2_IBUF[12]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[15]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[15]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[11]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[15]_inst_i_32_n_0 ),
        .I4(operand1_IBUF[11]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[15]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[15]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[10]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[15]_inst_i_33_n_0 ),
        .I4(operand1_IBUF[10]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[15]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[15]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[15]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[15]),
        .I4(operand2_IBUF[15]),
        .O(\result_OBUF[15]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[15]_inst_i_30 
       (.I0(operand2_IBUF[13]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[15]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[15]_inst_i_31 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[12]),
        .O(\result_OBUF[15]_inst_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[15]_inst_i_32 
       (.I0(operand2_IBUF[11]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[15]_inst_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[15]_inst_i_33 
       (.I0(operand2_IBUF[10]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[15]_inst_i_33_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[15]_inst_i_4 
       (.CI(\result_OBUF[11]_inst_i_4_n_0 ),
        .CO({\result_OBUF[15]_inst_i_4_n_0 ,\result_OBUF[15]_inst_i_4_n_1 ,\result_OBUF[15]_inst_i_4_n_2 ,\result_OBUF[15]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[15]_inst_i_6_n_0 ,\result_OBUF[15]_inst_i_7_n_0 ,\result_OBUF[15]_inst_i_8_n_0 ,\result_OBUF[15]_inst_i_9_n_0 }),
        .O(data2[15:12]),
        .S({\result_OBUF[15]_inst_i_10_n_0 ,\result_OBUF[15]_inst_i_11_n_0 ,\result_OBUF[15]_inst_i_12_n_0 ,\result_OBUF[15]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[15]_inst_i_5 
       (.CI(\result_OBUF[11]_inst_i_5_n_0 ),
        .CO({\result_OBUF[15]_inst_i_5_n_0 ,\result_OBUF[15]_inst_i_5_n_1 ,\result_OBUF[15]_inst_i_5_n_2 ,\result_OBUF[15]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[15:12]),
        .O(data3[15:12]),
        .S({\result_OBUF[15]_inst_i_14_n_0 ,\result_OBUF[15]_inst_i_15_n_0 ,\result_OBUF[15]_inst_i_16_n_0 ,\result_OBUF[15]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[15]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[14]),
        .I3(\result_OBUF[15]_inst_i_18_n_0 ),
        .I4(\result_OBUF[15]_inst_i_19_n_0 ),
        .O(\result_OBUF[15]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[15]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[13]),
        .I3(\result_OBUF[15]_inst_i_20_n_0 ),
        .I4(\result_OBUF[15]_inst_i_21_n_0 ),
        .O(\result_OBUF[15]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[15]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[12]),
        .I3(\result_OBUF[15]_inst_i_22_n_0 ),
        .I4(\result_OBUF[15]_inst_i_23_n_0 ),
        .O(\result_OBUF[15]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[15]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[11]),
        .I3(\result_OBUF[15]_inst_i_24_n_0 ),
        .I4(\result_OBUF[15]_inst_i_25_n_0 ),
        .O(\result_OBUF[15]_inst_i_9_n_0 ));
  OBUF \result_OBUF[16]_inst 
       (.I(result_OBUF[16]),
        .O(result[16]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[16]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[16]_inst_i_3_n_0 ),
        .O(result_OBUF[16]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[16]_inst_i_2 
       (.I0(data2[16]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[16]),
        .I4(operand2_IBUF[16]),
        .O(\result_OBUF[16]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[16]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[16]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[16]),
        .I4(operand2_IBUF[16]),
        .O(\result_OBUF[16]_inst_i_3_n_0 ));
  OBUF \result_OBUF[17]_inst 
       (.I(result_OBUF[17]),
        .O(result[17]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[17]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[17]_inst_i_3_n_0 ),
        .O(result_OBUF[17]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[17]_inst_i_2 
       (.I0(data2[17]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[17]),
        .I4(operand2_IBUF[17]),
        .O(\result_OBUF[17]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[17]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[17]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[17]),
        .I4(operand2_IBUF[17]),
        .O(\result_OBUF[17]_inst_i_3_n_0 ));
  OBUF \result_OBUF[18]_inst 
       (.I(result_OBUF[18]),
        .O(result[18]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[18]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[18]_inst_i_3_n_0 ),
        .O(result_OBUF[18]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[18]_inst_i_2 
       (.I0(data2[18]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[18]),
        .I4(operand2_IBUF[18]),
        .O(\result_OBUF[18]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[18]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[18]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[18]),
        .I4(operand2_IBUF[18]),
        .O(\result_OBUF[18]_inst_i_3_n_0 ));
  OBUF \result_OBUF[19]_inst 
       (.I(result_OBUF[19]),
        .O(result[19]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[19]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[19]_inst_i_3_n_0 ),
        .O(result_OBUF[19]));
  LUT6 #(
    .INIT(64'hA9AA56555655A9AA)) 
    \result_OBUF[19]_inst_i_10 
       (.I0(\result_OBUF[19]_inst_i_6_n_0 ),
        .I1(operand1_IBUF[19]),
        .I2(\result_OBUF[31]_inst_i_16_n_0 ),
        .I3(\result_OBUF[31]_inst_i_14_n_0 ),
        .I4(\result_OBUF[23]_inst_i_24_n_0 ),
        .I5(\result_OBUF[23]_inst_i_25_n_0 ),
        .O(\result_OBUF[19]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[19]_inst_i_11 
       (.I0(\result_OBUF[19]_inst_i_7_n_0 ),
        .I1(\result_OBUF[19]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[18]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[19]_inst_i_19_n_0 ),
        .O(\result_OBUF[19]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[19]_inst_i_12 
       (.I0(\result_OBUF[19]_inst_i_8_n_0 ),
        .I1(\result_OBUF[19]_inst_i_20_n_0 ),
        .I2(operand1_IBUF[17]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[19]_inst_i_21_n_0 ),
        .O(\result_OBUF[19]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[19]_inst_i_13 
       (.I0(\result_OBUF[19]_inst_i_9_n_0 ),
        .I1(\result_OBUF[19]_inst_i_22_n_0 ),
        .I2(operand1_IBUF[16]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[19]_inst_i_23_n_0 ),
        .O(\result_OBUF[19]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_14 
       (.I0(operand1_IBUF[19]),
        .I1(operand2_IBUF[19]),
        .O(\result_OBUF[19]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_15 
       (.I0(operand1_IBUF[18]),
        .I1(operand2_IBUF[18]),
        .O(\result_OBUF[19]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_16 
       (.I0(operand1_IBUF[17]),
        .I1(operand2_IBUF[17]),
        .O(\result_OBUF[19]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_17 
       (.I0(operand1_IBUF[16]),
        .I1(operand2_IBUF[16]),
        .O(\result_OBUF[19]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[19]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_26_n_0 ),
        .I3(operand1_IBUF[17]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[17]),
        .O(\result_OBUF[19]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[19]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_29_n_0 ),
        .I3(operand2_IBUF[18]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[18]),
        .O(\result_OBUF[19]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[19]_inst_i_2 
       (.I0(data2[19]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[19]),
        .I4(operand2_IBUF[19]),
        .O(\result_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[19]_inst_i_20 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_27_n_0 ),
        .I3(operand1_IBUF[16]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[16]),
        .O(\result_OBUF[19]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[19]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_26_n_0 ),
        .I3(operand2_IBUF[17]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[17]),
        .O(\result_OBUF[19]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[19]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_28_n_0 ),
        .I3(operand1_IBUF[15]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[15]),
        .O(\result_OBUF[19]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[19]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_27_n_0 ),
        .I3(operand2_IBUF[16]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[16]),
        .O(\result_OBUF[19]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[19]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_29_n_0 ),
        .I3(operand1_IBUF[14]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[14]),
        .O(\result_OBUF[19]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[19]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[19]_inst_i_28_n_0 ),
        .I3(operand2_IBUF[15]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[15]),
        .O(\result_OBUF[19]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[19]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[17]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[19]_inst_i_30_n_0 ),
        .I4(operand1_IBUF[17]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[19]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[19]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[16]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[19]_inst_i_31_n_0 ),
        .I4(operand1_IBUF[16]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[19]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[19]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[15]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[19]_inst_i_32_n_0 ),
        .I4(operand2_IBUF[15]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[19]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[19]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[14]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[19]_inst_i_33_n_0 ),
        .I4(operand1_IBUF[14]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[19]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[19]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[19]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[19]),
        .I4(operand2_IBUF[19]),
        .O(\result_OBUF[19]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[19]_inst_i_30 
       (.I0(operand2_IBUF[17]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[19]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[19]_inst_i_31 
       (.I0(operand2_IBUF[16]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[19]_inst_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[19]_inst_i_32 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[15]),
        .O(\result_OBUF[19]_inst_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[19]_inst_i_33 
       (.I0(operand2_IBUF[14]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[19]_inst_i_33_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[19]_inst_i_4 
       (.CI(\result_OBUF[15]_inst_i_4_n_0 ),
        .CO({\result_OBUF[19]_inst_i_4_n_0 ,\result_OBUF[19]_inst_i_4_n_1 ,\result_OBUF[19]_inst_i_4_n_2 ,\result_OBUF[19]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[19]_inst_i_6_n_0 ,\result_OBUF[19]_inst_i_7_n_0 ,\result_OBUF[19]_inst_i_8_n_0 ,\result_OBUF[19]_inst_i_9_n_0 }),
        .O(data2[19:16]),
        .S({\result_OBUF[19]_inst_i_10_n_0 ,\result_OBUF[19]_inst_i_11_n_0 ,\result_OBUF[19]_inst_i_12_n_0 ,\result_OBUF[19]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[19]_inst_i_5 
       (.CI(\result_OBUF[15]_inst_i_5_n_0 ),
        .CO({\result_OBUF[19]_inst_i_5_n_0 ,\result_OBUF[19]_inst_i_5_n_1 ,\result_OBUF[19]_inst_i_5_n_2 ,\result_OBUF[19]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[19:16]),
        .O(data3[19:16]),
        .S({\result_OBUF[19]_inst_i_14_n_0 ,\result_OBUF[19]_inst_i_15_n_0 ,\result_OBUF[19]_inst_i_16_n_0 ,\result_OBUF[19]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[19]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[18]),
        .I3(\result_OBUF[19]_inst_i_18_n_0 ),
        .I4(\result_OBUF[19]_inst_i_19_n_0 ),
        .O(\result_OBUF[19]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[19]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[17]),
        .I3(\result_OBUF[19]_inst_i_20_n_0 ),
        .I4(\result_OBUF[19]_inst_i_21_n_0 ),
        .O(\result_OBUF[19]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[19]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[16]),
        .I3(\result_OBUF[19]_inst_i_22_n_0 ),
        .I4(\result_OBUF[19]_inst_i_23_n_0 ),
        .O(\result_OBUF[19]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[19]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[15]),
        .I3(\result_OBUF[19]_inst_i_24_n_0 ),
        .I4(\result_OBUF[19]_inst_i_25_n_0 ),
        .O(\result_OBUF[19]_inst_i_9_n_0 ));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[1]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[1]_inst_i_3_n_0 ),
        .O(result_OBUF[1]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(data2[1]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[1]),
        .I4(operand2_IBUF[1]),
        .O(\result_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[1]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[1]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[1]),
        .I4(operand2_IBUF[1]),
        .O(\result_OBUF[1]_inst_i_3_n_0 ));
  OBUF \result_OBUF[20]_inst 
       (.I(result_OBUF[20]),
        .O(result[20]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[20]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[20]_inst_i_3_n_0 ),
        .O(result_OBUF[20]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[20]_inst_i_2 
       (.I0(data2[20]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[20]),
        .I4(operand2_IBUF[20]),
        .O(\result_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[20]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[20]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[20]),
        .I4(operand2_IBUF[20]),
        .O(\result_OBUF[20]_inst_i_3_n_0 ));
  OBUF \result_OBUF[21]_inst 
       (.I(result_OBUF[21]),
        .O(result[21]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[21]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .O(result_OBUF[21]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[21]_inst_i_2 
       (.I0(data2[21]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[21]),
        .I4(operand2_IBUF[21]),
        .O(\result_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[21]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[21]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[21]),
        .I4(operand2_IBUF[21]),
        .O(\result_OBUF[21]_inst_i_3_n_0 ));
  OBUF \result_OBUF[22]_inst 
       (.I(result_OBUF[22]),
        .O(result[22]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[22]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[22]_inst_i_3_n_0 ),
        .O(result_OBUF[22]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[22]_inst_i_2 
       (.I0(data2[22]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[22]),
        .I4(operand2_IBUF[22]),
        .O(\result_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[22]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[22]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[22]),
        .I4(operand2_IBUF[22]),
        .O(\result_OBUF[22]_inst_i_3_n_0 ));
  OBUF \result_OBUF[23]_inst 
       (.I(result_OBUF[23]),
        .O(result[23]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[23]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[23]_inst_i_3_n_0 ),
        .O(result_OBUF[23]));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[23]_inst_i_10 
       (.I0(\result_OBUF[23]_inst_i_6_n_0 ),
        .I1(\result_OBUF[27]_inst_i_24_n_0 ),
        .I2(operand1_IBUF[23]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[27]_inst_i_25_n_0 ),
        .O(\result_OBUF[23]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[23]_inst_i_11 
       (.I0(\result_OBUF[23]_inst_i_7_n_0 ),
        .I1(\result_OBUF[23]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[22]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[23]_inst_i_19_n_0 ),
        .O(\result_OBUF[23]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[23]_inst_i_12 
       (.I0(\result_OBUF[23]_inst_i_8_n_0 ),
        .I1(\result_OBUF[23]_inst_i_20_n_0 ),
        .I2(operand1_IBUF[21]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[23]_inst_i_21_n_0 ),
        .O(\result_OBUF[23]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[23]_inst_i_13 
       (.I0(\result_OBUF[23]_inst_i_9_n_0 ),
        .I1(\result_OBUF[23]_inst_i_22_n_0 ),
        .I2(operand1_IBUF[20]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[23]_inst_i_23_n_0 ),
        .O(\result_OBUF[23]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_14 
       (.I0(operand1_IBUF[23]),
        .I1(operand2_IBUF[23]),
        .O(\result_OBUF[23]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_15 
       (.I0(operand1_IBUF[22]),
        .I1(operand2_IBUF[22]),
        .O(\result_OBUF[23]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_16 
       (.I0(operand1_IBUF[21]),
        .I1(operand2_IBUF[21]),
        .O(\result_OBUF[23]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_17 
       (.I0(operand1_IBUF[20]),
        .I1(operand2_IBUF[20]),
        .O(\result_OBUF[23]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[23]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_26_n_0 ),
        .I3(operand1_IBUF[21]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[21]),
        .O(\result_OBUF[23]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[23]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_29_n_0 ),
        .I3(operand2_IBUF[22]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[22]),
        .O(\result_OBUF[23]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[23]_inst_i_2 
       (.I0(data2[23]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[23]),
        .I4(operand2_IBUF[23]),
        .O(\result_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[23]_inst_i_20 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_27_n_0 ),
        .I3(operand1_IBUF[20]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[20]),
        .O(\result_OBUF[23]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[23]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_26_n_0 ),
        .I3(operand2_IBUF[21]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[21]),
        .O(\result_OBUF[23]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[23]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_28_n_0 ),
        .I3(operand1_IBUF[19]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[19]),
        .O(\result_OBUF[23]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[23]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_27_n_0 ),
        .I3(operand2_IBUF[20]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[20]),
        .O(\result_OBUF[23]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[23]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_28_n_0 ),
        .I3(operand2_IBUF[19]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[19]),
        .O(\result_OBUF[23]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[23]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[23]_inst_i_29_n_0 ),
        .I3(operand1_IBUF[18]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[18]),
        .O(\result_OBUF[23]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[23]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[21]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[23]_inst_i_30_n_0 ),
        .I4(operand2_IBUF[21]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[23]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[23]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[20]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[23]_inst_i_31_n_0 ),
        .I4(operand2_IBUF[20]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[23]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[23]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[19]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[23]_inst_i_32_n_0 ),
        .I4(operand1_IBUF[19]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[23]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[23]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[18]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[23]_inst_i_33_n_0 ),
        .I4(operand1_IBUF[18]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[23]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[23]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[23]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[23]),
        .I4(operand2_IBUF[23]),
        .O(\result_OBUF[23]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[23]_inst_i_30 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[21]),
        .O(\result_OBUF[23]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[23]_inst_i_31 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[20]),
        .O(\result_OBUF[23]_inst_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[23]_inst_i_32 
       (.I0(operand2_IBUF[19]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[23]_inst_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[23]_inst_i_33 
       (.I0(operand2_IBUF[18]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[23]_inst_i_33_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[23]_inst_i_4 
       (.CI(\result_OBUF[19]_inst_i_4_n_0 ),
        .CO({\result_OBUF[23]_inst_i_4_n_0 ,\result_OBUF[23]_inst_i_4_n_1 ,\result_OBUF[23]_inst_i_4_n_2 ,\result_OBUF[23]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[23]_inst_i_6_n_0 ,\result_OBUF[23]_inst_i_7_n_0 ,\result_OBUF[23]_inst_i_8_n_0 ,\result_OBUF[23]_inst_i_9_n_0 }),
        .O(data2[23:20]),
        .S({\result_OBUF[23]_inst_i_10_n_0 ,\result_OBUF[23]_inst_i_11_n_0 ,\result_OBUF[23]_inst_i_12_n_0 ,\result_OBUF[23]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[23]_inst_i_5 
       (.CI(\result_OBUF[19]_inst_i_5_n_0 ),
        .CO({\result_OBUF[23]_inst_i_5_n_0 ,\result_OBUF[23]_inst_i_5_n_1 ,\result_OBUF[23]_inst_i_5_n_2 ,\result_OBUF[23]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[23:20]),
        .O(data3[23:20]),
        .S({\result_OBUF[23]_inst_i_14_n_0 ,\result_OBUF[23]_inst_i_15_n_0 ,\result_OBUF[23]_inst_i_16_n_0 ,\result_OBUF[23]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[23]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[22]),
        .I3(\result_OBUF[23]_inst_i_18_n_0 ),
        .I4(\result_OBUF[23]_inst_i_19_n_0 ),
        .O(\result_OBUF[23]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[23]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[21]),
        .I3(\result_OBUF[23]_inst_i_20_n_0 ),
        .I4(\result_OBUF[23]_inst_i_21_n_0 ),
        .O(\result_OBUF[23]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[23]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[20]),
        .I3(\result_OBUF[23]_inst_i_22_n_0 ),
        .I4(\result_OBUF[23]_inst_i_23_n_0 ),
        .O(\result_OBUF[23]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h001010FF)) 
    \result_OBUF[23]_inst_i_9 
       (.I0(operand1_IBUF[19]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(\result_OBUF[31]_inst_i_14_n_0 ),
        .I3(\result_OBUF[23]_inst_i_24_n_0 ),
        .I4(\result_OBUF[23]_inst_i_25_n_0 ),
        .O(\result_OBUF[23]_inst_i_9_n_0 ));
  OBUF \result_OBUF[24]_inst 
       (.I(result_OBUF[24]),
        .O(result[24]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[24]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[24]_inst_i_3_n_0 ),
        .O(result_OBUF[24]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[24]_inst_i_2 
       (.I0(data2[24]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[24]),
        .I4(operand2_IBUF[24]),
        .O(\result_OBUF[24]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[24]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[24]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[24]),
        .I4(operand2_IBUF[24]),
        .O(\result_OBUF[24]_inst_i_3_n_0 ));
  OBUF \result_OBUF[25]_inst 
       (.I(result_OBUF[25]),
        .O(result[25]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[25]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[25]_inst_i_3_n_0 ),
        .O(result_OBUF[25]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[25]_inst_i_2 
       (.I0(data2[25]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[25]),
        .I4(operand2_IBUF[25]),
        .O(\result_OBUF[25]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[25]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[25]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[25]),
        .I4(operand2_IBUF[25]),
        .O(\result_OBUF[25]_inst_i_3_n_0 ));
  OBUF \result_OBUF[26]_inst 
       (.I(result_OBUF[26]),
        .O(result[26]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[26]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[26]_inst_i_3_n_0 ),
        .O(result_OBUF[26]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[26]_inst_i_2 
       (.I0(data2[26]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[26]),
        .I4(operand2_IBUF[26]),
        .O(\result_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[26]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[26]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[26]),
        .I4(operand2_IBUF[26]),
        .O(\result_OBUF[26]_inst_i_3_n_0 ));
  OBUF \result_OBUF[27]_inst 
       (.I(result_OBUF[27]),
        .O(result[27]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[27]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[27]_inst_i_3_n_0 ),
        .O(result_OBUF[27]));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[27]_inst_i_10 
       (.I0(\result_OBUF[27]_inst_i_6_n_0 ),
        .I1(\result_OBUF[31]_inst_i_39_n_0 ),
        .I2(operand1_IBUF[27]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[31]_inst_i_40_n_0 ),
        .O(\result_OBUF[27]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[27]_inst_i_11 
       (.I0(\result_OBUF[27]_inst_i_7_n_0 ),
        .I1(\result_OBUF[27]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[26]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[27]_inst_i_19_n_0 ),
        .O(\result_OBUF[27]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[27]_inst_i_12 
       (.I0(\result_OBUF[27]_inst_i_8_n_0 ),
        .I1(\result_OBUF[27]_inst_i_20_n_0 ),
        .I2(operand1_IBUF[25]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[27]_inst_i_21_n_0 ),
        .O(\result_OBUF[27]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[27]_inst_i_13 
       (.I0(\result_OBUF[27]_inst_i_9_n_0 ),
        .I1(\result_OBUF[27]_inst_i_22_n_0 ),
        .I2(operand1_IBUF[24]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[27]_inst_i_23_n_0 ),
        .O(\result_OBUF[27]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_14 
       (.I0(operand1_IBUF[27]),
        .I1(operand2_IBUF[27]),
        .O(\result_OBUF[27]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_15 
       (.I0(operand1_IBUF[26]),
        .I1(operand2_IBUF[26]),
        .O(\result_OBUF[27]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_16 
       (.I0(operand1_IBUF[25]),
        .I1(operand2_IBUF[25]),
        .O(\result_OBUF[27]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_17 
       (.I0(operand1_IBUF[24]),
        .I1(operand2_IBUF[24]),
        .O(\result_OBUF[27]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[27]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_26_n_0 ),
        .I3(operand1_IBUF[25]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[25]),
        .O(\result_OBUF[27]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[27]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_53_n_0 ),
        .I3(operand2_IBUF[26]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[26]),
        .O(\result_OBUF[27]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[27]_inst_i_2 
       (.I0(data2[27]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[27]),
        .I4(operand2_IBUF[27]),
        .O(\result_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[27]_inst_i_20 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_27_n_0 ),
        .I3(operand1_IBUF[24]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[24]),
        .O(\result_OBUF[27]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[27]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_26_n_0 ),
        .I3(operand2_IBUF[25]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[25]),
        .O(\result_OBUF[27]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[27]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_28_n_0 ),
        .I3(operand1_IBUF[23]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[23]),
        .O(\result_OBUF[27]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[27]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_27_n_0 ),
        .I3(operand2_IBUF[24]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[24]),
        .O(\result_OBUF[27]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[27]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_29_n_0 ),
        .I3(operand1_IBUF[22]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[22]),
        .O(\result_OBUF[27]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[27]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[27]_inst_i_28_n_0 ),
        .I3(operand2_IBUF[23]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[23]),
        .O(\result_OBUF[27]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[27]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[25]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[27]_inst_i_30_n_0 ),
        .I4(operand2_IBUF[25]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[27]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[27]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[24]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[27]_inst_i_31_n_0 ),
        .I4(operand1_IBUF[24]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[27]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[27]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[23]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[27]_inst_i_32_n_0 ),
        .I4(operand1_IBUF[23]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[27]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[27]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[22]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[27]_inst_i_33_n_0 ),
        .I4(operand1_IBUF[22]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[27]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[27]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[27]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[27]),
        .I4(operand2_IBUF[27]),
        .O(\result_OBUF[27]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[27]_inst_i_30 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[25]),
        .O(\result_OBUF[27]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[27]_inst_i_31 
       (.I0(operand2_IBUF[24]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[27]_inst_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[27]_inst_i_32 
       (.I0(operand2_IBUF[23]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[27]_inst_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[27]_inst_i_33 
       (.I0(operand2_IBUF[22]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[27]_inst_i_33_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[27]_inst_i_4 
       (.CI(\result_OBUF[23]_inst_i_4_n_0 ),
        .CO({\result_OBUF[27]_inst_i_4_n_0 ,\result_OBUF[27]_inst_i_4_n_1 ,\result_OBUF[27]_inst_i_4_n_2 ,\result_OBUF[27]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[27]_inst_i_6_n_0 ,\result_OBUF[27]_inst_i_7_n_0 ,\result_OBUF[27]_inst_i_8_n_0 ,\result_OBUF[27]_inst_i_9_n_0 }),
        .O(data2[27:24]),
        .S({\result_OBUF[27]_inst_i_10_n_0 ,\result_OBUF[27]_inst_i_11_n_0 ,\result_OBUF[27]_inst_i_12_n_0 ,\result_OBUF[27]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[27]_inst_i_5 
       (.CI(\result_OBUF[23]_inst_i_5_n_0 ),
        .CO({\result_OBUF[27]_inst_i_5_n_0 ,\result_OBUF[27]_inst_i_5_n_1 ,\result_OBUF[27]_inst_i_5_n_2 ,\result_OBUF[27]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[27:24]),
        .O(data3[27:24]),
        .S({\result_OBUF[27]_inst_i_14_n_0 ,\result_OBUF[27]_inst_i_15_n_0 ,\result_OBUF[27]_inst_i_16_n_0 ,\result_OBUF[27]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[27]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[26]),
        .I3(\result_OBUF[27]_inst_i_18_n_0 ),
        .I4(\result_OBUF[27]_inst_i_19_n_0 ),
        .O(\result_OBUF[27]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[27]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[25]),
        .I3(\result_OBUF[27]_inst_i_20_n_0 ),
        .I4(\result_OBUF[27]_inst_i_21_n_0 ),
        .O(\result_OBUF[27]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[27]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[24]),
        .I3(\result_OBUF[27]_inst_i_22_n_0 ),
        .I4(\result_OBUF[27]_inst_i_23_n_0 ),
        .O(\result_OBUF[27]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[27]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[23]),
        .I3(\result_OBUF[27]_inst_i_24_n_0 ),
        .I4(\result_OBUF[27]_inst_i_25_n_0 ),
        .O(\result_OBUF[27]_inst_i_9_n_0 ));
  OBUF \result_OBUF[28]_inst 
       (.I(result_OBUF[28]),
        .O(result[28]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[28]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[28]_inst_i_3_n_0 ),
        .O(result_OBUF[28]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[28]_inst_i_2 
       (.I0(data2[28]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[28]),
        .I4(operand2_IBUF[28]),
        .O(\result_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[28]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[28]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[28]),
        .I4(operand2_IBUF[28]),
        .O(\result_OBUF[28]_inst_i_3_n_0 ));
  OBUF \result_OBUF[29]_inst 
       (.I(result_OBUF[29]),
        .O(result[29]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[29]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[29]_inst_i_3_n_0 ),
        .O(result_OBUF[29]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[29]_inst_i_2 
       (.I0(data2[29]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[29]),
        .I4(operand2_IBUF[29]),
        .O(\result_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[29]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[29]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[29]),
        .I4(operand2_IBUF[29]),
        .O(\result_OBUF[29]_inst_i_3_n_0 ));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[2]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[2]_inst_i_3_n_0 ),
        .O(result_OBUF[2]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(data2[2]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[2]),
        .I4(operand2_IBUF[2]),
        .O(\result_OBUF[2]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[2]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[2]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[2]),
        .I4(operand2_IBUF[2]),
        .O(\result_OBUF[2]_inst_i_3_n_0 ));
  OBUF \result_OBUF[30]_inst 
       (.I(result_OBUF[30]),
        .O(result[30]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_3_n_0 ),
        .O(result_OBUF[30]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[30]_inst_i_2 
       (.I0(data2[30]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[30]),
        .I4(operand2_IBUF[30]),
        .O(\result_OBUF[30]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[30]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[30]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[30]),
        .I4(operand2_IBUF[30]),
        .O(\result_OBUF[30]_inst_i_3_n_0 ));
  OBUF \result_OBUF[31]_inst 
       (.I(next_N_OBUF),
        .O(result[31]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[31]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[31]_inst_i_5_n_0 ),
        .O(next_N_OBUF));
  LUT6 #(
    .INIT(64'h000000F0000000F7)) 
    \result_OBUF[31]_inst_i_10 
       (.I0(instruction_IBUF[7]),
        .I1(instruction_IBUF[4]),
        .I2(instruction_IBUF[25]),
        .I3(instruction_IBUF[26]),
        .I4(instruction_IBUF[27]),
        .I5(\result_OBUF[31]_inst_i_21_n_0 ),
        .O(\result_OBUF[31]_inst_i_10_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[31]_inst_i_11 
       (.CI(\result_OBUF[27]_inst_i_4_n_0 ),
        .CO({\result_OBUF[31]_inst_i_11_n_1 ,\result_OBUF[31]_inst_i_11_n_2 ,\result_OBUF[31]_inst_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\result_OBUF[31]_inst_i_22_n_0 ,\result_OBUF[31]_inst_i_23_n_0 ,\result_OBUF[31]_inst_i_24_n_0 }),
        .O(data2[31:28]),
        .S({\result_OBUF[31]_inst_i_25_n_0 ,\result_OBUF[31]_inst_i_26_n_0 ,\result_OBUF[31]_inst_i_27_n_0 ,\result_OBUF[31]_inst_i_28_n_0 }));
  LUT3 #(
    .INIT(8'h5E)) 
    \result_OBUF[31]_inst_i_12 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(\result_OBUF[31]_inst_i_17_n_0 ),
        .I2(\result_OBUF[31]_inst_i_15_n_0 ),
        .O(\result_OBUF[31]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h08B3)) 
    \result_OBUF[31]_inst_i_13 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_17_n_0 ),
        .I2(\result_OBUF[31]_inst_i_14_n_0 ),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBFAABBAA)) 
    \result_OBUF[31]_inst_i_14 
       (.I0(\result_OBUF[31]_inst_i_8_n_0 ),
        .I1(instruction_IBUF[23]),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_6_n_0 ),
        .I4(\result_OBUF[31]_inst_i_7_n_0 ),
        .O(\result_OBUF[31]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBFFFBFAAAA)) 
    \result_OBUF[31]_inst_i_15 
       (.I0(\result_OBUF[31]_inst_i_8_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(instruction_IBUF[22]),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(instruction_IBUF[23]),
        .I5(\result_OBUF[31]_inst_i_7_n_0 ),
        .O(\result_OBUF[31]_inst_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFABA)) 
    \result_OBUF[31]_inst_i_16 
       (.I0(\result_OBUF[31]_inst_i_8_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(instruction_IBUF[21]),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[31]_inst_i_29_n_0 ),
        .O(\result_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \result_OBUF[31]_inst_i_17 
       (.I0(\result_OBUF[31]_inst_i_8_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(instruction_IBUF[24]),
        .I3(instruction_IBUF[20]),
        .I4(instruction_IBUF[23]),
        .I5(\result_OBUF[31]_inst_i_30_n_0 ),
        .O(\result_OBUF[31]_inst_i_17_n_0 ));
  CARRY4 \result_OBUF[31]_inst_i_18 
       (.CI(\result_OBUF[27]_inst_i_5_n_0 ),
        .CO({\result_OBUF[31]_inst_i_18_n_1 ,\result_OBUF[31]_inst_i_18_n_2 ,\result_OBUF[31]_inst_i_18_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,operand1_IBUF[30:28]}),
        .O(data3[31:28]),
        .S({\result_OBUF[31]_inst_i_31_n_0 ,\result_OBUF[31]_inst_i_32_n_0 ,\result_OBUF[31]_inst_i_33_n_0 ,\result_OBUF[31]_inst_i_34_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \result_OBUF[31]_inst_i_19 
       (.I0(instruction_IBUF[7]),
        .I1(instruction_IBUF[4]),
        .I2(instruction_IBUF[23]),
        .I3(instruction_IBUF[24]),
        .I4(instruction_IBUF[5]),
        .I5(instruction_IBUF[6]),
        .O(\result_OBUF[31]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h000F0707)) 
    \result_OBUF[31]_inst_i_2 
       (.I0(\result_OBUF[31]_inst_i_6_n_0 ),
        .I1(\result_OBUF[31]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[31]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[31]_inst_i_20 
       (.I0(instruction_IBUF[5]),
        .I1(instruction_IBUF[6]),
        .O(\result_OBUF[31]_inst_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \result_OBUF[31]_inst_i_21 
       (.I0(instruction_IBUF[11]),
        .I1(instruction_IBUF[4]),
        .I2(instruction_IBUF[9]),
        .I3(instruction_IBUF[10]),
        .I4(instruction_IBUF[8]),
        .O(\result_OBUF[31]_inst_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[31]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[29]),
        .I3(\result_OBUF[31]_inst_i_35_n_0 ),
        .I4(\result_OBUF[31]_inst_i_36_n_0 ),
        .O(\result_OBUF[31]_inst_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[31]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[28]),
        .I3(\result_OBUF[31]_inst_i_37_n_0 ),
        .I4(\result_OBUF[31]_inst_i_38_n_0 ),
        .O(\result_OBUF[31]_inst_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[31]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[27]),
        .I3(\result_OBUF[31]_inst_i_39_n_0 ),
        .I4(\result_OBUF[31]_inst_i_40_n_0 ),
        .O(\result_OBUF[31]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2D0F0FD2F02D2D0F)) 
    \result_OBUF[31]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_41_n_0 ),
        .I1(\result_OBUF[31]_inst_i_42_n_0 ),
        .I2(\result_OBUF[31]_inst_i_43_n_0 ),
        .I3(\result_OBUF[31]_inst_i_44_n_0 ),
        .I4(\result_OBUF[31]_inst_i_45_n_0 ),
        .I5(\result_OBUF[31]_inst_i_46_n_0 ),
        .O(\result_OBUF[31]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[31]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_22_n_0 ),
        .I1(\result_OBUF[31]_inst_i_41_n_0 ),
        .I2(operand1_IBUF[30]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[31]_inst_i_47_n_0 ),
        .O(\result_OBUF[31]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[31]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_23_n_0 ),
        .I1(\result_OBUF[31]_inst_i_35_n_0 ),
        .I2(operand1_IBUF[29]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[31]_inst_i_36_n_0 ),
        .O(\result_OBUF[31]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[31]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_24_n_0 ),
        .I1(\result_OBUF[31]_inst_i_37_n_0 ),
        .I2(operand1_IBUF[28]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[31]_inst_i_38_n_0 ),
        .O(\result_OBUF[31]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \result_OBUF[31]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_48_n_0 ),
        .I1(instruction_IBUF[6]),
        .I2(instruction_IBUF[5]),
        .I3(instruction_IBUF[24]),
        .I4(instruction_IBUF[23]),
        .I5(\result_OBUF[31]_inst_i_49_n_0 ),
        .O(\result_OBUF[31]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hF40737C7)) 
    \result_OBUF[31]_inst_i_3 
       (.I0(data2[31]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand2_IBUF[31]),
        .I4(operand1_IBUF[31]),
        .O(\result_OBUF[31]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_OBUF[31]_inst_i_30 
       (.I0(instruction_IBUF[21]),
        .I1(\result_OBUF[31]_inst_i_19_n_0 ),
        .I2(instruction_IBUF[25]),
        .I3(instruction_IBUF[26]),
        .I4(instruction_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_31 
       (.I0(operand1_IBUF[31]),
        .I1(operand2_IBUF[31]),
        .O(\result_OBUF[31]_inst_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_32 
       (.I0(operand1_IBUF[30]),
        .I1(operand2_IBUF[30]),
        .O(\result_OBUF[31]_inst_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_33 
       (.I0(operand1_IBUF[29]),
        .I1(operand2_IBUF[29]),
        .O(\result_OBUF[31]_inst_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_34 
       (.I0(operand1_IBUF[28]),
        .I1(operand2_IBUF[28]),
        .O(\result_OBUF[31]_inst_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[31]_inst_i_35 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_50_n_0 ),
        .I3(operand1_IBUF[28]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[28]),
        .O(\result_OBUF[31]_inst_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[31]_inst_i_36 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_51_n_0 ),
        .I3(operand2_IBUF[29]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[29]),
        .O(\result_OBUF[31]_inst_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[31]_inst_i_37 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_52_n_0 ),
        .I3(operand1_IBUF[27]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[31]_inst_i_38 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_50_n_0 ),
        .I3(operand2_IBUF[28]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[28]),
        .O(\result_OBUF[31]_inst_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[31]_inst_i_39 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_53_n_0 ),
        .I3(operand1_IBUF[26]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[26]),
        .O(\result_OBUF[31]_inst_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h4056)) 
    \result_OBUF[31]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_15_n_0 ),
        .I2(\result_OBUF[31]_inst_i_16_n_0 ),
        .I3(\result_OBUF[31]_inst_i_17_n_0 ),
        .O(\result_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[31]_inst_i_40 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_52_n_0 ),
        .I3(operand2_IBUF[27]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[31]_inst_i_41 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_51_n_0 ),
        .I3(operand1_IBUF[29]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[29]),
        .O(\result_OBUF[31]_inst_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result_OBUF[31]_inst_i_42 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[30]),
        .O(\result_OBUF[31]_inst_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hBA45)) 
    \result_OBUF[31]_inst_i_43 
       (.I0(\result_OBUF[31]_inst_i_54_n_0 ),
        .I1(\result_OBUF[31]_inst_i_55_n_0 ),
        .I2(data3[31]),
        .I3(\result_OBUF[31]_inst_i_56_n_0 ),
        .O(\result_OBUF[31]_inst_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[31]_inst_i_44 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[30]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[31]_inst_i_58_n_0 ),
        .I4(operand1_IBUF[30]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[31]_inst_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0F0FFEE)) 
    \result_OBUF[31]_inst_i_45 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(operand2_IBUF[30]),
        .I3(operand1_IBUF[30]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \result_OBUF[31]_inst_i_46 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(operand2_IBUF[30]),
        .I2(\result_OBUF[31]_inst_i_16_n_0 ),
        .I3(operand1_IBUF[30]),
        .O(\result_OBUF[31]_inst_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[31]_inst_i_47 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_44_n_0 ),
        .I3(operand2_IBUF[30]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[30]),
        .O(\result_OBUF[31]_inst_i_47_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \result_OBUF[31]_inst_i_48 
       (.I0(instruction_IBUF[25]),
        .I1(instruction_IBUF[26]),
        .I2(instruction_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_49 
       (.I0(instruction_IBUF[4]),
        .I1(instruction_IBUF[7]),
        .O(\result_OBUF[31]_inst_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h1AB01ABF)) 
    \result_OBUF[31]_inst_i_5 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[31]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand2_IBUF[31]),
        .I4(operand1_IBUF[31]),
        .O(\result_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[31]_inst_i_50 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[28]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[31]_inst_i_60_n_0 ),
        .I4(operand1_IBUF[28]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[31]_inst_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[31]_inst_i_51 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[29]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[31]_inst_i_61_n_0 ),
        .I4(operand1_IBUF[29]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[31]_inst_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[31]_inst_i_52 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[27]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[31]_inst_i_62_n_0 ),
        .I4(operand1_IBUF[27]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[31]_inst_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBBBB0BBB0)) 
    \result_OBUF[31]_inst_i_53 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[26]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[31]_inst_i_63_n_0 ),
        .I4(operand1_IBUF[26]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[31]_inst_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \result_OBUF[31]_inst_i_54 
       (.I0(\result_OBUF[31]_inst_i_59_n_0 ),
        .I1(operand2_IBUF[31]),
        .I2(\result_OBUF[31]_inst_i_16_n_0 ),
        .I3(operand1_IBUF[31]),
        .I4(\result_OBUF[31]_inst_i_57_n_0 ),
        .O(\result_OBUF[31]_inst_i_54_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \result_OBUF[31]_inst_i_55 
       (.I0(\result_OBUF[31]_inst_i_17_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_15_n_0 ),
        .O(\result_OBUF[31]_inst_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h3CF03FE2)) 
    \result_OBUF[31]_inst_i_56 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(operand2_IBUF[31]),
        .I3(operand1_IBUF[31]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_56_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \result_OBUF[31]_inst_i_57 
       (.I0(\result_OBUF[31]_inst_i_17_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[31]_inst_i_15_n_0 ),
        .O(\result_OBUF[31]_inst_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[31]_inst_i_58 
       (.I0(operand2_IBUF[30]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \result_OBUF[31]_inst_i_59 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(\result_OBUF[31]_inst_i_15_n_0 ),
        .O(\result_OBUF[31]_inst_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCFFE)) 
    \result_OBUF[31]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_19_n_0 ),
        .I1(instruction_IBUF[26]),
        .I2(instruction_IBUF[25]),
        .I3(instruction_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[31]_inst_i_60 
       (.I0(operand2_IBUF[28]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[31]_inst_i_61 
       (.I0(operand2_IBUF[29]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[31]_inst_i_62 
       (.I0(operand2_IBUF[27]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[31]_inst_i_63 
       (.I0(operand2_IBUF[26]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF000FF7F)) 
    \result_OBUF[31]_inst_i_7 
       (.I0(instruction_IBUF[7]),
        .I1(\result_OBUF[31]_inst_i_20_n_0 ),
        .I2(instruction_IBUF[4]),
        .I3(instruction_IBUF[25]),
        .I4(instruction_IBUF[26]),
        .I5(instruction_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \result_OBUF[31]_inst_i_8 
       (.I0(instruction_IBUF[30]),
        .I1(instruction_IBUF[29]),
        .I2(instruction_IBUF[31]),
        .I3(instruction_IBUF[28]),
        .O(\result_OBUF[31]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \result_OBUF[31]_inst_i_9 
       (.I0(instruction_IBUF[20]),
        .I1(instruction_IBUF[24]),
        .I2(instruction_IBUF[23]),
        .O(\result_OBUF[31]_inst_i_9_n_0 ));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[3]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[3]_inst_i_3_n_0 ),
        .O(result_OBUF[3]));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[3]_inst_i_10 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[7]_inst_i_24_n_0 ),
        .I2(operand1_IBUF[3]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[7]_inst_i_25_n_0 ),
        .O(\result_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6999666966699666)) 
    \result_OBUF[3]_inst_i_11 
       (.I0(\result_OBUF[3]_inst_i_24_n_0 ),
        .I1(\result_OBUF[3]_inst_i_18_n_0 ),
        .I2(p_3_in),
        .I3(\result_OBUF[3]_inst_i_26_n_0 ),
        .I4(\result_OBUF[3]_inst_i_27_n_0 ),
        .I5(\result_OBUF[3]_inst_i_20_n_0 ),
        .O(\result_OBUF[3]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h65A6)) 
    \result_OBUF[3]_inst_i_12 
       (.I0(\result_OBUF[3]_inst_i_8_n_0 ),
        .I1(\result_OBUF[3]_inst_i_22_n_0 ),
        .I2(\result_OBUF[3]_inst_i_23_n_0 ),
        .I3(\result_OBUF[3]_inst_i_21_n_0 ),
        .O(\result_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9696699669696969)) 
    \result_OBUF[3]_inst_i_13 
       (.I0(\result_OBUF[3]_inst_i_21_n_0 ),
        .I1(\result_OBUF[3]_inst_i_22_n_0 ),
        .I2(\result_OBUF[3]_inst_i_23_n_0 ),
        .I3(operand1_IBUF[0]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(\result_OBUF[31]_inst_i_14_n_0 ),
        .O(\result_OBUF[3]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_14 
       (.I0(operand1_IBUF[3]),
        .I1(operand2_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_15 
       (.I0(operand1_IBUF[2]),
        .I1(operand2_IBUF[2]),
        .O(\result_OBUF[3]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_16 
       (.I0(operand1_IBUF[1]),
        .I1(operand2_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_17 
       (.I0(operand1_IBUF[0]),
        .I1(operand2_IBUF[0]),
        .O(\result_OBUF[3]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[3]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[7]_inst_i_29_n_0 ),
        .I3(operand2_IBUF[2]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[2]),
        .O(\result_OBUF[3]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0C000C0DCF0F0001)) 
    \result_OBUF[3]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[3]_inst_i_20_n_0 ),
        .I3(operand1_IBUF[1]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(data2[3]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[3]),
        .I4(operand2_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDD0DDD0DDDD)) 
    \result_OBUF[3]_inst_i_20 
       (.I0(data3[1]),
        .I1(\result_OBUF[31]_inst_i_55_n_0 ),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[3]_inst_i_28_n_0 ),
        .I4(operand2_IBUF[1]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[3]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1011FFFF10111011)) 
    \result_OBUF[3]_inst_i_21 
       (.I0(\result_OBUF[3]_inst_i_29_n_0 ),
        .I1(\result_OBUF[31]_inst_i_57_n_0 ),
        .I2(operand1_IBUF[0]),
        .I3(\result_OBUF[31]_inst_i_59_n_0 ),
        .I4(\result_OBUF[31]_inst_i_55_n_0 ),
        .I5(data3[0]),
        .O(\result_OBUF[3]_inst_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_OBUF[3]_inst_i_22 
       (.I0(operand1_IBUF[0]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand2_IBUF[0]),
        .I3(\result_OBUF[31]_inst_i_14_n_0 ),
        .I4(C_in_IBUF),
        .O(\result_OBUF[3]_inst_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAFF0C)) 
    \result_OBUF[3]_inst_i_23 
       (.I0(operand2_IBUF[0]),
        .I1(operand1_IBUF[0]),
        .I2(\result_OBUF[31]_inst_i_14_n_0 ),
        .I3(\result_OBUF[31]_inst_i_15_n_0 ),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[3]_inst_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result_OBUF[3]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[2]),
        .O(\result_OBUF[3]_inst_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result_OBUF[3]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[1]),
        .O(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \result_OBUF[3]_inst_i_26 
       (.I0(operand2_IBUF[1]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[1]),
        .I3(\result_OBUF[31]_inst_i_14_n_0 ),
        .O(\result_OBUF[3]_inst_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F0FFEE)) 
    \result_OBUF[3]_inst_i_27 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(operand2_IBUF[1]),
        .I3(operand1_IBUF[1]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[3]_inst_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[3]_inst_i_28 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[3]_inst_i_29 
       (.I0(operand2_IBUF[0]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[3]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[3]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[3]),
        .I4(operand2_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[3]_inst_i_4 
       (.CI(\<const0> ),
        .CO({\result_OBUF[3]_inst_i_4_n_0 ,\result_OBUF[3]_inst_i_4_n_1 ,\result_OBUF[3]_inst_i_4_n_2 ,\result_OBUF[3]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[3]_inst_i_6_n_0 ,\result_OBUF[3]_inst_i_7_n_0 ,\result_OBUF[3]_inst_i_8_n_0 ,\result_OBUF[3]_inst_i_9_n_0 }),
        .O(data2[3:0]),
        .S({\result_OBUF[3]_inst_i_10_n_0 ,\result_OBUF[3]_inst_i_11_n_0 ,\result_OBUF[3]_inst_i_12_n_0 ,\result_OBUF[3]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[3]_inst_i_5 
       (.CI(\<const0> ),
        .CO({\result_OBUF[3]_inst_i_5_n_0 ,\result_OBUF[3]_inst_i_5_n_1 ,\result_OBUF[3]_inst_i_5_n_2 ,\result_OBUF[3]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[3:0]),
        .O(data3[3:0]),
        .S({\result_OBUF[3]_inst_i_14_n_0 ,\result_OBUF[3]_inst_i_15_n_0 ,\result_OBUF[3]_inst_i_16_n_0 ,\result_OBUF[3]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h00FF0002)) 
    \result_OBUF[3]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[2]),
        .I3(\result_OBUF[3]_inst_i_18_n_0 ),
        .I4(\result_OBUF[3]_inst_i_19_n_0 ),
        .O(\result_OBUF[3]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h99969999)) 
    \result_OBUF[3]_inst_i_7 
       (.I0(\result_OBUF[3]_inst_i_19_n_0 ),
        .I1(\result_OBUF[3]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[2]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .O(\result_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC33C0FF0C30F1ED2)) 
    \result_OBUF[3]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[3]_inst_i_20_n_0 ),
        .I3(operand2_IBUF[1]),
        .I4(operand1_IBUF[1]),
        .I5(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[3]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \result_OBUF[3]_inst_i_9 
       (.I0(\result_OBUF[3]_inst_i_21_n_0 ),
        .I1(\result_OBUF[3]_inst_i_22_n_0 ),
        .I2(\result_OBUF[3]_inst_i_23_n_0 ),
        .O(\result_OBUF[3]_inst_i_9_n_0 ));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[4]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[4]_inst_i_3_n_0 ),
        .O(result_OBUF[4]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(data2[4]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[4]),
        .I4(operand2_IBUF[4]),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[4]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[4]),
        .I4(operand2_IBUF[4]),
        .O(\result_OBUF[4]_inst_i_3_n_0 ));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[5]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[5]_inst_i_3_n_0 ),
        .O(result_OBUF[5]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(data2[5]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[5]),
        .I4(operand2_IBUF[5]),
        .O(\result_OBUF[5]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[5]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[5]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[5]),
        .I4(operand2_IBUF[5]),
        .O(\result_OBUF[5]_inst_i_3_n_0 ));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[6]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[6]_inst_i_3_n_0 ),
        .O(result_OBUF[6]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[6]_inst_i_2 
       (.I0(data2[6]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[6]),
        .I4(operand2_IBUF[6]),
        .O(\result_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[6]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[6]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[6]),
        .I4(operand2_IBUF[6]),
        .O(\result_OBUF[6]_inst_i_3_n_0 ));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[7]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[7]_inst_i_3_n_0 ),
        .O(result_OBUF[7]));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[7]_inst_i_10 
       (.I0(\result_OBUF[7]_inst_i_6_n_0 ),
        .I1(\result_OBUF[11]_inst_i_24_n_0 ),
        .I2(operand1_IBUF[7]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[11]_inst_i_25_n_0 ),
        .O(\result_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[7]_inst_i_11 
       (.I0(\result_OBUF[7]_inst_i_7_n_0 ),
        .I1(\result_OBUF[7]_inst_i_18_n_0 ),
        .I2(operand1_IBUF[6]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[7]_inst_i_19_n_0 ),
        .O(\result_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[7]_inst_i_12 
       (.I0(\result_OBUF[7]_inst_i_8_n_0 ),
        .I1(\result_OBUF[7]_inst_i_20_n_0 ),
        .I2(operand1_IBUF[5]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[7]_inst_i_21_n_0 ),
        .O(\result_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9996999966696666)) 
    \result_OBUF[7]_inst_i_13 
       (.I0(\result_OBUF[7]_inst_i_9_n_0 ),
        .I1(\result_OBUF[7]_inst_i_22_n_0 ),
        .I2(operand1_IBUF[4]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(\result_OBUF[31]_inst_i_14_n_0 ),
        .I5(\result_OBUF[7]_inst_i_23_n_0 ),
        .O(\result_OBUF[7]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_14 
       (.I0(operand1_IBUF[7]),
        .I1(operand2_IBUF[7]),
        .O(\result_OBUF[7]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_15 
       (.I0(operand1_IBUF[6]),
        .I1(operand2_IBUF[6]),
        .O(\result_OBUF[7]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_16 
       (.I0(operand1_IBUF[5]),
        .I1(operand2_IBUF[5]),
        .O(\result_OBUF[7]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_17 
       (.I0(operand1_IBUF[4]),
        .I1(operand2_IBUF[4]),
        .O(\result_OBUF[7]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[7]_inst_i_18 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[7]_inst_i_26_n_0 ),
        .I3(operand1_IBUF[5]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[5]),
        .O(\result_OBUF[7]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[7]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[11]_inst_i_29_n_0 ),
        .I3(operand2_IBUF[6]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[6]),
        .O(\result_OBUF[7]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(data2[7]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[7]),
        .I4(operand2_IBUF[7]),
        .O(\result_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF30FFF0FFFFFEFE)) 
    \result_OBUF[7]_inst_i_20 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[7]_inst_i_27_n_0 ),
        .I3(operand2_IBUF[4]),
        .I4(operand1_IBUF[4]),
        .I5(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[7]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CF0F00F2DE1)) 
    \result_OBUF[7]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[7]_inst_i_26_n_0 ),
        .I3(operand2_IBUF[5]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand1_IBUF[5]),
        .O(\result_OBUF[7]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF30FFF0FFFFFEFE)) 
    \result_OBUF[7]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[7]_inst_i_28_n_0 ),
        .I3(operand2_IBUF[3]),
        .I4(operand1_IBUF[3]),
        .I5(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[7]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3C3FF02EC3C00FD1)) 
    \result_OBUF[7]_inst_i_23 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(operand2_IBUF[4]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(operand1_IBUF[4]),
        .I5(\result_OBUF[7]_inst_i_27_n_0 ),
        .O(\result_OBUF[7]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF3F230F0FFFE)) 
    \result_OBUF[7]_inst_i_24 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(\result_OBUF[7]_inst_i_29_n_0 ),
        .I3(operand1_IBUF[2]),
        .I4(\result_OBUF[31]_inst_i_16_n_0 ),
        .I5(operand2_IBUF[2]),
        .O(\result_OBUF[7]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3C3FF02EC3C00FD1)) 
    \result_OBUF[7]_inst_i_25 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_14_n_0 ),
        .I2(operand2_IBUF[3]),
        .I3(\result_OBUF[31]_inst_i_16_n_0 ),
        .I4(operand1_IBUF[3]),
        .I5(\result_OBUF[7]_inst_i_28_n_0 ),
        .O(\result_OBUF[7]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[7]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[5]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[7]_inst_i_30_n_0 ),
        .I4(operand2_IBUF[5]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[7]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDD0DDD0DDDD)) 
    \result_OBUF[7]_inst_i_27 
       (.I0(data3[4]),
        .I1(\result_OBUF[31]_inst_i_55_n_0 ),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[7]_inst_i_31_n_0 ),
        .I4(operand2_IBUF[4]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[7]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDD0DDD0DDDD)) 
    \result_OBUF[7]_inst_i_28 
       (.I0(data3[3]),
        .I1(\result_OBUF[31]_inst_i_55_n_0 ),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[7]_inst_i_32_n_0 ),
        .I4(operand2_IBUF[3]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[7]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB0BBBB)) 
    \result_OBUF[7]_inst_i_29 
       (.I0(\result_OBUF[31]_inst_i_55_n_0 ),
        .I1(data3[2]),
        .I2(\result_OBUF[31]_inst_i_57_n_0 ),
        .I3(\result_OBUF[7]_inst_i_33_n_0 ),
        .I4(operand2_IBUF[2]),
        .I5(\result_OBUF[31]_inst_i_59_n_0 ),
        .O(\result_OBUF[7]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[7]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[7]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[7]),
        .I4(operand2_IBUF[7]),
        .O(\result_OBUF[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[7]_inst_i_30 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[5]),
        .O(\result_OBUF[7]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[7]_inst_i_31 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[4]),
        .O(\result_OBUF[7]_inst_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[7]_inst_i_32 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[3]),
        .O(\result_OBUF[7]_inst_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[7]_inst_i_33 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(operand1_IBUF[2]),
        .O(\result_OBUF[7]_inst_i_33_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_OBUF[7]_inst_i_4 
       (.CI(\result_OBUF[3]_inst_i_4_n_0 ),
        .CO({\result_OBUF[7]_inst_i_4_n_0 ,\result_OBUF[7]_inst_i_4_n_1 ,\result_OBUF[7]_inst_i_4_n_2 ,\result_OBUF[7]_inst_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\result_OBUF[7]_inst_i_6_n_0 ,\result_OBUF[7]_inst_i_7_n_0 ,\result_OBUF[7]_inst_i_8_n_0 ,\result_OBUF[7]_inst_i_9_n_0 }),
        .O(data2[7:4]),
        .S({\result_OBUF[7]_inst_i_10_n_0 ,\result_OBUF[7]_inst_i_11_n_0 ,\result_OBUF[7]_inst_i_12_n_0 ,\result_OBUF[7]_inst_i_13_n_0 }));
  CARRY4 \result_OBUF[7]_inst_i_5 
       (.CI(\result_OBUF[3]_inst_i_5_n_0 ),
        .CO({\result_OBUF[7]_inst_i_5_n_0 ,\result_OBUF[7]_inst_i_5_n_1 ,\result_OBUF[7]_inst_i_5_n_2 ,\result_OBUF[7]_inst_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(operand1_IBUF[7:4]),
        .O(data3[7:4]),
        .S({\result_OBUF[7]_inst_i_14_n_0 ,\result_OBUF[7]_inst_i_15_n_0 ,\result_OBUF[7]_inst_i_16_n_0 ,\result_OBUF[7]_inst_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[7]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[6]),
        .I3(\result_OBUF[7]_inst_i_18_n_0 ),
        .I4(\result_OBUF[7]_inst_i_19_n_0 ),
        .O(\result_OBUF[7]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[7]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[5]),
        .I3(\result_OBUF[7]_inst_i_20_n_0 ),
        .I4(\result_OBUF[7]_inst_i_21_n_0 ),
        .O(\result_OBUF[7]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[7]_inst_i_8 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[4]),
        .I3(\result_OBUF[7]_inst_i_22_n_0 ),
        .I4(\result_OBUF[7]_inst_i_23_n_0 ),
        .O(\result_OBUF[7]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \result_OBUF[7]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(operand1_IBUF[3]),
        .I3(\result_OBUF[7]_inst_i_24_n_0 ),
        .I4(\result_OBUF[7]_inst_i_25_n_0 ),
        .O(\result_OBUF[7]_inst_i_9_n_0 ));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[8]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[8]_inst_i_3_n_0 ),
        .O(result_OBUF[8]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[8]_inst_i_2 
       (.I0(data2[8]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[8]),
        .I4(operand2_IBUF[8]),
        .O(\result_OBUF[8]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[8]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[8]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[8]),
        .I4(operand2_IBUF[8]),
        .O(\result_OBUF[8]_inst_i_3_n_0 ));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[9]_inst_i_2_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[9]_inst_i_3_n_0 ),
        .O(result_OBUF[9]));
  LUT5 #(
    .INIT(32'hF43707C7)) 
    \result_OBUF[9]_inst_i_2 
       (.I0(data2[9]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[9]),
        .I4(operand2_IBUF[9]),
        .O(\result_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1A1AB0BF)) 
    \result_OBUF[9]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_12_n_0 ),
        .I1(data3[9]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(operand1_IBUF[9]),
        .I4(operand2_IBUF[9]),
        .O(\result_OBUF[9]_inst_i_3_n_0 ));
endmodule
