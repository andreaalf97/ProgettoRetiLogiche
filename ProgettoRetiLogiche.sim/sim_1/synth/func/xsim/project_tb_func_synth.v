// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Mar 26 14:13:10 2019
// Host        : corrado running 64-bit Ubuntu 18.10
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/andreaalf/VivadoProjects/ProgettoRetiLogiche/ProgettoRetiLogiche.sim/sim_1/synth/func/xsim/project_tb_func_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_start,
    i_rst,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_start;
  input i_rst;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire \FSM_sequential_PS[3]_i_2_n_0 ;
  wire \FSM_sequential_PS[3]_i_3_n_0 ;
  wire \FSM_sequential_PS[3]_i_4_n_0 ;
  wire [3:0]NS;
  wire [3:0]PS;
  wire checkedAll;
  wire checkedAll_next;
  wire checkedAll_next_reg_i_1_n_0;
  wire checkedAll_next_reg_i_2_n_0;
  wire checkedAll_next_reg_i_3_n_0;
  wire checkedAll_next_reg_i_4_n_0;
  wire [2:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire [8:0]distMin;
  wire \distMin[0]_i_1_n_0 ;
  wire \distMin[1]_i_1_n_0 ;
  wire \distMin[2]_i_1_n_0 ;
  wire \distMin[3]_i_12_n_0 ;
  wire \distMin[3]_i_13_n_0 ;
  wire \distMin[3]_i_14_n_0 ;
  wire \distMin[3]_i_15_n_0 ;
  wire \distMin[3]_i_17_n_0 ;
  wire \distMin[3]_i_18_n_0 ;
  wire \distMin[3]_i_19_n_0 ;
  wire \distMin[3]_i_1_n_0 ;
  wire \distMin[3]_i_20_n_0 ;
  wire \distMin[3]_i_21_n_0 ;
  wire \distMin[3]_i_22_n_0 ;
  wire \distMin[3]_i_23_n_0 ;
  wire \distMin[3]_i_24_n_0 ;
  wire \distMin[3]_i_4_n_0 ;
  wire \distMin[3]_i_5_n_0 ;
  wire \distMin[3]_i_6_n_0 ;
  wire \distMin[3]_i_7_n_0 ;
  wire \distMin[4]_i_1_n_0 ;
  wire \distMin[5]_i_1_n_0 ;
  wire \distMin[6]_i_1_n_0 ;
  wire \distMin[7]_i_11_n_0 ;
  wire \distMin[7]_i_12_n_0 ;
  wire \distMin[7]_i_13_n_0 ;
  wire \distMin[7]_i_14_n_0 ;
  wire \distMin[7]_i_17_n_0 ;
  wire \distMin[7]_i_18_n_0 ;
  wire \distMin[7]_i_19_n_0 ;
  wire \distMin[7]_i_1_n_0 ;
  wire \distMin[7]_i_20_n_0 ;
  wire \distMin[7]_i_21_n_0 ;
  wire \distMin[7]_i_22_n_0 ;
  wire \distMin[7]_i_23_n_0 ;
  wire \distMin[7]_i_24_n_0 ;
  wire \distMin[7]_i_25_n_0 ;
  wire \distMin[7]_i_26_n_0 ;
  wire \distMin[7]_i_27_n_0 ;
  wire \distMin[7]_i_28_n_0 ;
  wire \distMin[7]_i_29_n_0 ;
  wire \distMin[7]_i_30_n_0 ;
  wire \distMin[7]_i_31_n_0 ;
  wire \distMin[7]_i_33_n_0 ;
  wire \distMin[7]_i_34_n_0 ;
  wire \distMin[7]_i_35_n_0 ;
  wire \distMin[7]_i_36_n_0 ;
  wire \distMin[7]_i_37_n_0 ;
  wire \distMin[7]_i_38_n_0 ;
  wire \distMin[7]_i_39_n_0 ;
  wire \distMin[7]_i_40_n_0 ;
  wire \distMin[7]_i_4_n_0 ;
  wire \distMin[7]_i_5_n_0 ;
  wire \distMin[7]_i_6_n_0 ;
  wire \distMin[7]_i_7_n_0 ;
  wire \distMin[8]_i_2_n_0 ;
  wire distMin_next;
  wire \distMin_reg[3]_i_16_n_0 ;
  wire \distMin_reg[3]_i_16_n_1 ;
  wire \distMin_reg[3]_i_16_n_2 ;
  wire \distMin_reg[3]_i_16_n_3 ;
  wire \distMin_reg[3]_i_2_n_0 ;
  wire \distMin_reg[3]_i_2_n_1 ;
  wire \distMin_reg[3]_i_2_n_2 ;
  wire \distMin_reg[3]_i_2_n_3 ;
  wire \distMin_reg[3]_i_3_n_0 ;
  wire \distMin_reg[3]_i_3_n_1 ;
  wire \distMin_reg[3]_i_3_n_2 ;
  wire \distMin_reg[3]_i_3_n_3 ;
  wire \distMin_reg[7]_i_15_n_1 ;
  wire \distMin_reg[7]_i_15_n_2 ;
  wire \distMin_reg[7]_i_15_n_3 ;
  wire \distMin_reg[7]_i_16_n_1 ;
  wire \distMin_reg[7]_i_16_n_2 ;
  wire \distMin_reg[7]_i_16_n_3 ;
  wire \distMin_reg[7]_i_2_n_0 ;
  wire \distMin_reg[7]_i_2_n_1 ;
  wire \distMin_reg[7]_i_2_n_2 ;
  wire \distMin_reg[7]_i_2_n_3 ;
  wire \distMin_reg[7]_i_32_n_0 ;
  wire \distMin_reg[7]_i_32_n_1 ;
  wire \distMin_reg[7]_i_32_n_2 ;
  wire \distMin_reg[7]_i_32_n_3 ;
  wire \distMin_reg[7]_i_3_n_1 ;
  wire \distMin_reg[7]_i_3_n_2 ;
  wire \distMin_reg[7]_i_3_n_3 ;
  wire [7:0]distTempX;
  wire [7:0]distTempY;
  wire eqOp;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire [8:0]in7;
  wire ltOp;
  wire [7:0]mask;
  wire \mask[0]_i_1_n_0 ;
  wire \mask[1]_i_1_n_0 ;
  wire \mask[2]_i_1_n_0 ;
  wire \mask[3]_i_1_n_0 ;
  wire \mask[4]_i_1_n_0 ;
  wire \mask[5]_i_1_n_0 ;
  wire \mask[6]_i_1_n_0 ;
  wire \mask[7]_i_2_n_0 ;
  wire mask_next;
  wire \mask_reg[7]__0_i_1_n_0 ;
  wire [15:0]o_address;
  wire [4:0]o_address_OBUF;
  wire \o_address_reg[0]_i_1_n_0 ;
  wire \o_address_reg[1]_i_1_n_0 ;
  wire \o_address_reg[2]_i_1_n_0 ;
  wire \o_address_reg[3]_i_1_n_0 ;
  wire \o_address_reg[4]_i_1_n_0 ;
  wire \o_address_reg[4]_i_2_n_0 ;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire \o_data_reg[0]_i_1_n_0 ;
  wire \o_data_reg[0]_i_2_n_0 ;
  wire \o_data_reg[1]_i_1_n_0 ;
  wire \o_data_reg[1]_i_2_n_0 ;
  wire \o_data_reg[2]_i_1_n_0 ;
  wire \o_data_reg[2]_i_2_n_0 ;
  wire \o_data_reg[3]_i_1_n_0 ;
  wire \o_data_reg[3]_i_2_n_0 ;
  wire \o_data_reg[4]_i_1_n_0 ;
  wire \o_data_reg[4]_i_2_n_0 ;
  wire \o_data_reg[4]_i_3_n_0 ;
  wire \o_data_reg[5]_i_1_n_0 ;
  wire \o_data_reg[5]_i_2_n_0 ;
  wire \o_data_reg[5]_i_3_n_0 ;
  wire \o_data_reg[6]_i_1_n_0 ;
  wire \o_data_reg[6]_i_2_n_0 ;
  wire \o_data_reg[6]_i_3_n_0 ;
  wire \o_data_reg[7]_i_10_n_0 ;
  wire \o_data_reg[7]_i_11_n_0 ;
  wire \o_data_reg[7]_i_12_n_0 ;
  wire \o_data_reg[7]_i_13_n_0 ;
  wire \o_data_reg[7]_i_14_n_0 ;
  wire \o_data_reg[7]_i_15_n_0 ;
  wire \o_data_reg[7]_i_16_n_0 ;
  wire \o_data_reg[7]_i_17_n_0 ;
  wire \o_data_reg[7]_i_18_n_0 ;
  wire \o_data_reg[7]_i_19_n_0 ;
  wire \o_data_reg[7]_i_1_n_0 ;
  wire \o_data_reg[7]_i_2_n_0 ;
  wire \o_data_reg[7]_i_3_n_2 ;
  wire \o_data_reg[7]_i_3_n_3 ;
  wire \o_data_reg[7]_i_4_n_0 ;
  wire \o_data_reg[7]_i_6_n_0 ;
  wire \o_data_reg[7]_i_7_n_0 ;
  wire \o_data_reg[7]_i_8_n_0 ;
  wire \o_data_reg[7]_i_9_n_0 ;
  wire \o_data_reg[7]_i_9_n_1 ;
  wire \o_data_reg[7]_i_9_n_2 ;
  wire \o_data_reg[7]_i_9_n_3 ;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_en_reg_i_1_n_0;
  wire o_en_reg_i_2_n_0;
  wire o_we;
  wire o_we_OBUF;
  wire o_we_reg_i_1_n_0;
  wire p_0_in;
  wire [6:0]p_1_in;
  wire [7:0]pivotX;
  wire pivotX_next;
  wire \pivotX_reg[7]__0_i_1_n_0 ;
  wire [7:0]pivotY;
  wire \pivotY[0]_i_1_n_0 ;
  wire \pivotY[1]_i_1_n_0 ;
  wire \pivotY[2]_i_1_n_0 ;
  wire \pivotY[3]_i_1_n_0 ;
  wire \pivotY[4]_i_1_n_0 ;
  wire \pivotY[5]_i_1_n_0 ;
  wire \pivotY[6]_i_1_n_0 ;
  wire \pivotY[7]_i_2_n_0 ;
  wire pivotY_next;
  wire \pivotY_reg[7]__0_i_1_n_0 ;
  wire [7:0]tempX;
  wire tempX_next;
  wire \tempX_reg[7]__0_i_1_n_0 ;
  wire [7:0]tempY;
  wire \tempY[0]_i_1_n_0 ;
  wire \tempY[1]_i_1_n_0 ;
  wire \tempY[2]_i_1_n_0 ;
  wire \tempY[3]_i_1_n_0 ;
  wire \tempY[4]_i_1_n_0 ;
  wire \tempY[5]_i_1_n_0 ;
  wire \tempY[6]_i_1_n_0 ;
  wire \tempY[7]_i_2_n_0 ;
  wire tempY_next;
  wire \tempY_reg[7]__0_i_1_n_0 ;
  wire [3:3]\NLW_distMin_reg[7]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_distMin_reg[7]_i_16_O_UNCONNECTED ;
  wire [3:3]\NLW_distMin_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_distMin_reg[7]_i_32_O_UNCONNECTED ;
  wire [3:1]\NLW_distMin_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_distMin_reg[8]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_o_data_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_data_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_o_data_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_data_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_o_data_reg[7]_i_9_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFAFF00FF00FF88EE)) 
    \FSM_sequential_PS[0]_i_1 
       (.I0(PS[3]),
        .I1(i_start_IBUF),
        .I2(\FSM_sequential_PS[3]_i_2_n_0 ),
        .I3(PS[0]),
        .I4(PS[1]),
        .I5(PS[2]),
        .O(NS[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h8FCFD0D0)) 
    \FSM_sequential_PS[1]_i_1 
       (.I0(PS[3]),
        .I1(PS[2]),
        .I2(PS[0]),
        .I3(checkedAll),
        .I4(PS[1]),
        .O(NS[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFA0DFA0)) 
    \FSM_sequential_PS[2]_i_1 
       (.I0(PS[0]),
        .I1(\FSM_sequential_PS[3]_i_2_n_0 ),
        .I2(PS[1]),
        .I3(PS[2]),
        .I4(PS[3]),
        .O(NS[2]));
  LUT6 #(
    .INIT(64'h03F0F0F0F0F0A0F0)) 
    \FSM_sequential_PS[3]_i_1 
       (.I0(i_start_IBUF),
        .I1(\FSM_sequential_PS[3]_i_2_n_0 ),
        .I2(PS[3]),
        .I3(PS[0]),
        .I4(PS[2]),
        .I5(PS[1]),
        .O(NS[3]));
  LUT4 #(
    .INIT(16'h0053)) 
    \FSM_sequential_PS[3]_i_2 
       (.I0(\FSM_sequential_PS[3]_i_3_n_0 ),
        .I1(\FSM_sequential_PS[3]_i_4_n_0 ),
        .I2(counter[2]),
        .I3(checkedAll),
        .O(\FSM_sequential_PS[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \FSM_sequential_PS[3]_i_3 
       (.I0(mask[5]),
        .I1(mask[7]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(mask[4]),
        .I5(mask[6]),
        .O(\FSM_sequential_PS[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \FSM_sequential_PS[3]_i_4 
       (.I0(mask[1]),
        .I1(mask[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(mask[0]),
        .I5(mask[2]),
        .O(\FSM_sequential_PS[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "readpx:0100,askpx:0011,readmask:0010,updateout:1111,readcy:1101,letemstabilize:1110,askcy:1100,askmask:0001,rst:0000,readcx:1011,processor:0111,readpy:0110,askcx:1010,fine:1001,finewrite:1000,askpy:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(NS[0]),
        .Q(PS[0]));
  (* FSM_ENCODED_STATES = "readpx:0100,askpx:0011,readmask:0010,updateout:1111,readcy:1101,letemstabilize:1110,askcy:1100,askmask:0001,rst:0000,readcx:1011,processor:0111,readpy:0110,askcx:1010,fine:1001,finewrite:1000,askpy:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(NS[1]),
        .Q(PS[1]));
  (* FSM_ENCODED_STATES = "readpx:0100,askpx:0011,readmask:0010,updateout:1111,readcy:1101,letemstabilize:1110,askcy:1100,askmask:0001,rst:0000,readcx:1011,processor:0111,readpy:0110,askcx:1010,fine:1001,finewrite:1000,askpy:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(NS[2]),
        .Q(PS[2]));
  (* FSM_ENCODED_STATES = "readpx:0100,askpx:0011,readmask:0010,updateout:1111,readcy:1101,letemstabilize:1110,askcy:1100,askmask:0001,rst:0000,readcx:1011,processor:0111,readpy:0110,askcx:1010,fine:1001,finewrite:1000,askpy:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(NS[3]),
        .Q(PS[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    checkedAll_next_reg
       (.CLR(1'b0),
        .D(checkedAll_next_reg_i_1_n_0),
        .G(checkedAll_next_reg_i_2_n_0),
        .GE(1'b1),
        .Q(checkedAll_next));
  LUT6 #(
    .INIT(64'hBAA8AAA8AAA8AAA8)) 
    checkedAll_next_reg_i_1
       (.I0(checkedAll),
        .I1(checkedAll_next_reg_i_3_n_0),
        .I2(PS[0]),
        .I3(PS[3]),
        .I4(counter[2]),
        .I5(checkedAll_next_reg_i_4_n_0),
        .O(checkedAll_next_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE9)) 
    checkedAll_next_reg_i_2
       (.I0(PS[1]),
        .I1(PS[3]),
        .I2(PS[2]),
        .O(checkedAll_next_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    checkedAll_next_reg_i_3
       (.I0(PS[1]),
        .I1(PS[2]),
        .O(checkedAll_next_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    checkedAll_next_reg_i_4
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(checkedAll_next_reg_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    checkedAll_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(checkedAll_next),
        .Q(checkedAll));
  LUT6 #(
    .INIT(64'h1FFFFFFAE0000000)) 
    \counter[0]_i_1 
       (.I0(PS[3]),
        .I1(\FSM_sequential_PS[3]_i_2_n_0 ),
        .I2(PS[2]),
        .I3(PS[1]),
        .I4(PS[0]),
        .I5(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF747C00008880)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(PS[2]),
        .I2(PS[3]),
        .I3(\FSM_sequential_PS[3]_i_2_n_0 ),
        .I4(\counter[2]_i_2_n_0 ),
        .I5(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF747C00008880)) 
    \counter[2]_i_1 
       (.I0(checkedAll_next_reg_i_4_n_0),
        .I1(PS[2]),
        .I2(PS[3]),
        .I3(\FSM_sequential_PS[3]_i_2_n_0 ),
        .I4(\counter[2]_i_2_n_0 ),
        .I5(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \counter[2]_i_2 
       (.I0(PS[0]),
        .I1(PS[1]),
        .I2(PS[2]),
        .O(\counter[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[0]_i_1 
       (.I0(in7[0]),
        .I1(PS[0]),
        .O(\distMin[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[1]_i_1 
       (.I0(in7[1]),
        .I1(PS[0]),
        .O(\distMin[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[2]_i_1 
       (.I0(in7[2]),
        .I1(PS[0]),
        .O(\distMin[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[3]_i_1 
       (.I0(in7[3]),
        .I1(PS[0]),
        .O(\distMin[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_10 
       (.I0(pivotX[1]),
        .I1(ltOp),
        .I2(tempX[1]),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_11 
       (.I0(pivotX[0]),
        .I1(ltOp),
        .I2(tempX[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_12 
       (.I0(pivotX[3]),
        .I1(tempX[3]),
        .O(\distMin[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_13 
       (.I0(pivotX[2]),
        .I1(tempX[2]),
        .O(\distMin[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_14 
       (.I0(pivotX[1]),
        .I1(tempX[1]),
        .O(\distMin[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_15 
       (.I0(pivotX[0]),
        .I1(tempX[0]),
        .O(\distMin[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_17 
       (.I0(pivotY[3]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[3]),
        .O(\distMin[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_18 
       (.I0(pivotY[2]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[2]),
        .O(\distMin[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_19 
       (.I0(pivotY[1]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[1]),
        .O(\distMin[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_20 
       (.I0(pivotY[0]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[0]),
        .O(\distMin[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_21 
       (.I0(pivotY[3]),
        .I1(tempY[3]),
        .O(\distMin[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_22 
       (.I0(pivotY[2]),
        .I1(tempY[2]),
        .O(\distMin[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_23 
       (.I0(pivotY[1]),
        .I1(tempY[1]),
        .O(\distMin[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[3]_i_24 
       (.I0(pivotY[0]),
        .I1(tempY[0]),
        .O(\distMin[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[3]_i_4 
       (.I0(distTempX[3]),
        .I1(distTempY[3]),
        .O(\distMin[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[3]_i_5 
       (.I0(distTempX[2]),
        .I1(distTempY[2]),
        .O(\distMin[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[3]_i_6 
       (.I0(distTempX[1]),
        .I1(distTempY[1]),
        .O(\distMin[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[3]_i_7 
       (.I0(distTempX[0]),
        .I1(distTempY[0]),
        .O(\distMin[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_8 
       (.I0(pivotX[3]),
        .I1(ltOp),
        .I2(tempX[3]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[3]_i_9 
       (.I0(pivotX[2]),
        .I1(ltOp),
        .I2(tempX[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[4]_i_1 
       (.I0(in7[4]),
        .I1(PS[0]),
        .O(\distMin[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[5]_i_1 
       (.I0(in7[5]),
        .I1(PS[0]),
        .O(\distMin[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[6]_i_1 
       (.I0(in7[6]),
        .I1(PS[0]),
        .O(\distMin[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[7]_i_1 
       (.I0(in7[7]),
        .I1(PS[0]),
        .O(\distMin[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[7]_i_10 
       (.I0(pivotX[4]),
        .I1(ltOp),
        .I2(tempX[4]),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_11 
       (.I0(pivotX[7]),
        .I1(tempX[7]),
        .O(\distMin[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_12 
       (.I0(pivotX[6]),
        .I1(tempX[6]),
        .O(\distMin[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_13 
       (.I0(pivotX[5]),
        .I1(tempX[5]),
        .O(\distMin[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_14 
       (.I0(pivotX[4]),
        .I1(tempX[4]),
        .O(\distMin[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[7]_i_17 
       (.I0(pivotY[6]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[6]),
        .O(\distMin[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[7]_i_18 
       (.I0(pivotY[5]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[5]),
        .O(\distMin[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[7]_i_19 
       (.I0(pivotY[4]),
        .I1(\distMin_reg[7]_i_32_n_0 ),
        .I2(tempY[4]),
        .O(\distMin[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_20 
       (.I0(pivotY[7]),
        .I1(tempY[7]),
        .O(\distMin[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_21 
       (.I0(pivotY[6]),
        .I1(tempY[6]),
        .O(\distMin[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_22 
       (.I0(pivotY[5]),
        .I1(tempY[5]),
        .O(\distMin[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distMin[7]_i_23 
       (.I0(pivotY[4]),
        .I1(tempY[4]),
        .O(\distMin[7]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_24 
       (.I0(tempX[6]),
        .I1(pivotX[6]),
        .I2(pivotX[7]),
        .I3(tempX[7]),
        .O(\distMin[7]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_25 
       (.I0(tempX[4]),
        .I1(pivotX[4]),
        .I2(pivotX[5]),
        .I3(tempX[5]),
        .O(\distMin[7]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_26 
       (.I0(tempX[2]),
        .I1(pivotX[2]),
        .I2(pivotX[3]),
        .I3(tempX[3]),
        .O(\distMin[7]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_27 
       (.I0(tempX[0]),
        .I1(pivotX[0]),
        .I2(pivotX[1]),
        .I3(tempX[1]),
        .O(\distMin[7]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_28 
       (.I0(pivotX[7]),
        .I1(tempX[7]),
        .I2(pivotX[6]),
        .I3(tempX[6]),
        .O(\distMin[7]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_29 
       (.I0(pivotX[5]),
        .I1(tempX[5]),
        .I2(pivotX[4]),
        .I3(tempX[4]),
        .O(\distMin[7]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_30 
       (.I0(pivotX[3]),
        .I1(tempX[3]),
        .I2(pivotX[2]),
        .I3(tempX[2]),
        .O(\distMin[7]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_31 
       (.I0(pivotX[1]),
        .I1(tempX[1]),
        .I2(pivotX[0]),
        .I3(tempX[0]),
        .O(\distMin[7]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_33 
       (.I0(tempY[6]),
        .I1(pivotY[6]),
        .I2(pivotY[7]),
        .I3(tempY[7]),
        .O(\distMin[7]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_34 
       (.I0(tempY[4]),
        .I1(pivotY[4]),
        .I2(pivotY[5]),
        .I3(tempY[5]),
        .O(\distMin[7]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_35 
       (.I0(tempY[2]),
        .I1(pivotY[2]),
        .I2(pivotY[3]),
        .I3(tempY[3]),
        .O(\distMin[7]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \distMin[7]_i_36 
       (.I0(tempY[0]),
        .I1(pivotY[0]),
        .I2(pivotY[1]),
        .I3(tempY[1]),
        .O(\distMin[7]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_37 
       (.I0(pivotY[7]),
        .I1(tempY[7]),
        .I2(pivotY[6]),
        .I3(tempY[6]),
        .O(\distMin[7]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_38 
       (.I0(pivotY[5]),
        .I1(tempY[5]),
        .I2(pivotY[4]),
        .I3(tempY[4]),
        .O(\distMin[7]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_39 
       (.I0(pivotY[3]),
        .I1(tempY[3]),
        .I2(pivotY[2]),
        .I3(tempY[2]),
        .O(\distMin[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[7]_i_4 
       (.I0(distTempX[7]),
        .I1(distTempY[7]),
        .O(\distMin[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \distMin[7]_i_40 
       (.I0(pivotY[1]),
        .I1(tempY[1]),
        .I2(pivotY[0]),
        .I3(tempY[0]),
        .O(\distMin[7]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[7]_i_5 
       (.I0(distTempX[6]),
        .I1(distTempY[6]),
        .O(\distMin[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[7]_i_6 
       (.I0(distTempX[5]),
        .I1(distTempY[5]),
        .O(\distMin[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distMin[7]_i_7 
       (.I0(distTempX[4]),
        .I1(distTempY[4]),
        .O(\distMin[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[7]_i_8 
       (.I0(pivotX[6]),
        .I1(ltOp),
        .I2(tempX[6]),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h47)) 
    \distMin[7]_i_9 
       (.I0(pivotX[5]),
        .I1(ltOp),
        .I2(tempX[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h400000000000000F)) 
    \distMin[8]_i_1 
       (.I0(eqOp),
        .I1(p_0_in),
        .I2(PS[0]),
        .I3(PS[1]),
        .I4(PS[2]),
        .I5(PS[3]),
        .O(distMin_next));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \distMin[8]_i_2 
       (.I0(in7[8]),
        .I1(PS[0]),
        .O(\distMin[8]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[0]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[0]));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[1]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[1]));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[2]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[2]));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[3]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[3]_i_16 
       (.CI(1'b0),
        .CO({\distMin_reg[3]_i_16_n_0 ,\distMin_reg[3]_i_16_n_1 ,\distMin_reg[3]_i_16_n_2 ,\distMin_reg[3]_i_16_n_3 }),
        .CYINIT(1'b1),
        .DI({\distMin[3]_i_17_n_0 ,\distMin[3]_i_18_n_0 ,\distMin[3]_i_19_n_0 ,\distMin[3]_i_20_n_0 }),
        .O(distTempY[3:0]),
        .S({\distMin[3]_i_21_n_0 ,\distMin[3]_i_22_n_0 ,\distMin[3]_i_23_n_0 ,\distMin[3]_i_24_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\distMin_reg[3]_i_2_n_0 ,\distMin_reg[3]_i_2_n_1 ,\distMin_reg[3]_i_2_n_2 ,\distMin_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(distTempX[3:0]),
        .O(in7[3:0]),
        .S({\distMin[3]_i_4_n_0 ,\distMin[3]_i_5_n_0 ,\distMin[3]_i_6_n_0 ,\distMin[3]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\distMin_reg[3]_i_3_n_0 ,\distMin_reg[3]_i_3_n_1 ,\distMin_reg[3]_i_3_n_2 ,\distMin_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(distTempX[3:0]),
        .S({\distMin[3]_i_12_n_0 ,\distMin[3]_i_13_n_0 ,\distMin[3]_i_14_n_0 ,\distMin[3]_i_15_n_0 }));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[4]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[4]));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[5]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[5]));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[6]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[6]));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[7]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[7]_i_15 
       (.CI(\distMin_reg[3]_i_16_n_0 ),
        .CO({\NLW_distMin_reg[7]_i_15_CO_UNCONNECTED [3],\distMin_reg[7]_i_15_n_1 ,\distMin_reg[7]_i_15_n_2 ,\distMin_reg[7]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\distMin[7]_i_17_n_0 ,\distMin[7]_i_18_n_0 ,\distMin[7]_i_19_n_0 }),
        .O(distTempY[7:4]),
        .S({\distMin[7]_i_20_n_0 ,\distMin[7]_i_21_n_0 ,\distMin[7]_i_22_n_0 ,\distMin[7]_i_23_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[7]_i_16 
       (.CI(1'b0),
        .CO({ltOp,\distMin_reg[7]_i_16_n_1 ,\distMin_reg[7]_i_16_n_2 ,\distMin_reg[7]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\distMin[7]_i_24_n_0 ,\distMin[7]_i_25_n_0 ,\distMin[7]_i_26_n_0 ,\distMin[7]_i_27_n_0 }),
        .O(\NLW_distMin_reg[7]_i_16_O_UNCONNECTED [3:0]),
        .S({\distMin[7]_i_28_n_0 ,\distMin[7]_i_29_n_0 ,\distMin[7]_i_30_n_0 ,\distMin[7]_i_31_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[7]_i_2 
       (.CI(\distMin_reg[3]_i_2_n_0 ),
        .CO({\distMin_reg[7]_i_2_n_0 ,\distMin_reg[7]_i_2_n_1 ,\distMin_reg[7]_i_2_n_2 ,\distMin_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(distTempX[7:4]),
        .O(in7[7:4]),
        .S({\distMin[7]_i_4_n_0 ,\distMin[7]_i_5_n_0 ,\distMin[7]_i_6_n_0 ,\distMin[7]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \distMin_reg[7]_i_3 
       (.CI(\distMin_reg[3]_i_3_n_0 ),
        .CO({\NLW_distMin_reg[7]_i_3_CO_UNCONNECTED [3],\distMin_reg[7]_i_3_n_1 ,\distMin_reg[7]_i_3_n_2 ,\distMin_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[6:4]}),
        .O(distTempX[7:4]),
        .S({\distMin[7]_i_11_n_0 ,\distMin[7]_i_12_n_0 ,\distMin[7]_i_13_n_0 ,\distMin[7]_i_14_n_0 }));
  CARRY4 \distMin_reg[7]_i_32 
       (.CI(1'b0),
        .CO({\distMin_reg[7]_i_32_n_0 ,\distMin_reg[7]_i_32_n_1 ,\distMin_reg[7]_i_32_n_2 ,\distMin_reg[7]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({\distMin[7]_i_33_n_0 ,\distMin[7]_i_34_n_0 ,\distMin[7]_i_35_n_0 ,\distMin[7]_i_36_n_0 }),
        .O(\NLW_distMin_reg[7]_i_32_O_UNCONNECTED [3:0]),
        .S({\distMin[7]_i_37_n_0 ,\distMin[7]_i_38_n_0 ,\distMin[7]_i_39_n_0 ,\distMin[7]_i_40_n_0 }));
  FDPE #(
    .INIT(1'b1)) 
    \distMin_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(distMin_next),
        .D(\distMin[8]_i_2_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(distMin[8]));
  CARRY4 \distMin_reg[8]_i_3 
       (.CI(\distMin_reg[7]_i_2_n_0 ),
        .CO({\NLW_distMin_reg[8]_i_3_CO_UNCONNECTED [3:1],in7[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_distMin_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[0]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[0]),
        .O(\mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[1]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[1]),
        .O(\mask[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[2]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[2]),
        .O(\mask[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[3]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[3]),
        .O(\mask[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[4]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[4]),
        .O(\mask[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[5]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[5]),
        .O(\mask[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[6]_i_1 
       (.I0(PS[1]),
        .I1(i_data_IBUF[6]),
        .O(\mask[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mask[7]_i_1 
       (.I0(PS[3]),
        .I1(PS[0]),
        .I2(PS[2]),
        .O(mask_next));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mask[7]_i_2 
       (.I0(PS[1]),
        .I1(i_data_IBUF[7]),
        .O(\mask[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[0]_i_1_n_0 ),
        .Q(mask[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[0]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[0]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[1]_i_1_n_0 ),
        .Q(mask[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[1]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[1]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[1]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[2]_i_1_n_0 ),
        .Q(mask[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[2]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[2]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[3]_i_1_n_0 ),
        .Q(mask[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[3]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[3]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[3]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[4]_i_1_n_0 ),
        .Q(mask[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[4]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[4]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[4]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[5]_i_1_n_0 ),
        .Q(mask[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[5]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[5]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[5]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[6]_i_1_n_0 ),
        .Q(mask[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[6]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[6]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[6]));
  FDCE #(
    .INIT(1'b0)) 
    \mask_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(mask_next),
        .CLR(i_rst_IBUF),
        .D(\mask[7]_i_2_n_0 ),
        .Q(mask[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mask_reg[7]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[7]),
        .G(\mask_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(mask[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \mask_reg[7]__0_i_1 
       (.I0(PS[0]),
        .I1(PS[1]),
        .I2(PS[2]),
        .I3(PS[3]),
        .O(\mask_reg[7]__0_i_1_n_0 ));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(1'b0),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(o_address_OBUF[4]),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(1'b0),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(1'b0),
        .O(o_address[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_address_reg[0] 
       (.CLR(1'b0),
        .D(\o_address_reg[0]_i_1_n_0 ),
        .G(\o_address_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_address_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hC0C0FEFC)) 
    \o_address_reg[0]_i_1 
       (.I0(PS[0]),
        .I1(PS[3]),
        .I2(PS[1]),
        .I3(counter[0]),
        .I4(PS[2]),
        .O(\o_address_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_address_reg[1] 
       (.CLR(1'b0),
        .D(\o_address_reg[1]_i_1_n_0 ),
        .G(\o_address_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_address_OBUF[1]));
  LUT6 #(
    .INIT(64'hCC00B3FFCC00ECEC)) 
    \o_address_reg[1]_i_1 
       (.I0(PS[0]),
        .I1(PS[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(PS[1]),
        .I5(PS[2]),
        .O(\o_address_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_address_reg[2] 
       (.CLR(1'b0),
        .D(\o_address_reg[2]_i_1_n_0 ),
        .G(\o_address_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_address_OBUF[2]));
  LUT6 #(
    .INIT(64'h000000F0CC66CC00)) 
    \o_address_reg[2]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(PS[1]),
        .I4(PS[2]),
        .I5(PS[0]),
        .O(\o_address_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_address_reg[3] 
       (.CLR(1'b0),
        .D(\o_address_reg[3]_i_1_n_0 ),
        .G(\o_address_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_address_OBUF[3]));
  LUT6 #(
    .INIT(64'h02C8C8C800000000)) 
    \o_address_reg[3]_i_1 
       (.I0(PS[2]),
        .I1(counter[2]),
        .I2(PS[1]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(PS[3]),
        .O(\o_address_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_address_reg[4] 
       (.CLR(1'b0),
        .D(\o_address_reg[4]_i_1_n_0 ),
        .G(\o_address_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_address_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \o_address_reg[4]_i_1 
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(PS[3]),
        .O(\o_address_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0667)) 
    \o_address_reg[4]_i_2 
       (.I0(PS[0]),
        .I1(PS[3]),
        .I2(PS[2]),
        .I3(PS[1]),
        .O(\o_address_reg[4]_i_2_n_0 ));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[0] 
       (.CLR(1'b0),
        .D(\o_data_reg[0]_i_1_n_0 ),
        .G(\o_data_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF000100)) 
    \o_data_reg[0]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200F200FF00F000F)) 
    \o_data_reg[0]_i_2 
       (.I0(\o_data_reg[4]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[1] 
       (.CLR(1'b0),
        .D(\o_data_reg[1]_i_1_n_0 ),
        .G(\o_data_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF000400)) 
    \o_data_reg[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200F200FF00F000F)) 
    \o_data_reg[1]_i_2 
       (.I0(\o_data_reg[5]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[2] 
       (.CLR(1'b0),
        .D(\o_data_reg[2]_i_1_n_0 ),
        .G(\o_data_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF000400)) 
    \o_data_reg[2]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200F200FF00F000F)) 
    \o_data_reg[2]_i_2 
       (.I0(\o_data_reg[6]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[3] 
       (.CLR(1'b0),
        .D(\o_data_reg[3]_i_1_n_0 ),
        .G(\o_data_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF000800)) 
    \o_data_reg[3]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200F200FF00F000F)) 
    \o_data_reg[3]_i_2 
       (.I0(checkedAll_next_reg_i_4_n_0),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[4] 
       (.CLR(1'b0),
        .D(\o_data_reg[4]_i_1_n_0 ),
        .G(\o_data_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF001000)) 
    \o_data_reg[4]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800F800FF00F000F)) 
    \o_data_reg[4]_i_2 
       (.I0(\o_data_reg[4]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_data_reg[4]_i_3 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\o_data_reg[4]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[5] 
       (.CLR(1'b0),
        .D(\o_data_reg[5]_i_1_n_0 ),
        .G(\o_data_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF004000)) 
    \o_data_reg[5]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800F800FF00F000F)) 
    \o_data_reg[5]_i_2 
       (.I0(\o_data_reg[5]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_data_reg[5]_i_3 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\o_data_reg[5]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[6] 
       (.CLR(1'b0),
        .D(\o_data_reg[6]_i_1_n_0 ),
        .G(\o_data_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF004000)) 
    \o_data_reg[6]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800F800FF00F000F)) 
    \o_data_reg[6]_i_2 
       (.I0(\o_data_reg[6]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_data_reg[6]_i_3 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\o_data_reg[6]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_data_reg[7] 
       (.CLR(1'b0),
        .D(\o_data_reg[7]_i_1_n_0 ),
        .G(\o_data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(o_data_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF008000)) 
    \o_data_reg[7]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(PS[3]),
        .I4(eqOp),
        .O(\o_data_reg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_data_reg[7]_i_10 
       (.I0(distMin[8]),
        .I1(in7[8]),
        .O(\o_data_reg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_data_reg[7]_i_11 
       (.I0(in7[8]),
        .I1(distMin[8]),
        .O(\o_data_reg[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \o_data_reg[7]_i_12 
       (.I0(distMin[6]),
        .I1(in7[6]),
        .I2(in7[7]),
        .I3(distMin[7]),
        .O(\o_data_reg[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \o_data_reg[7]_i_13 
       (.I0(distMin[4]),
        .I1(in7[4]),
        .I2(in7[5]),
        .I3(distMin[5]),
        .O(\o_data_reg[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \o_data_reg[7]_i_14 
       (.I0(distMin[2]),
        .I1(in7[2]),
        .I2(in7[3]),
        .I3(distMin[3]),
        .O(\o_data_reg[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \o_data_reg[7]_i_15 
       (.I0(distMin[0]),
        .I1(in7[0]),
        .I2(in7[1]),
        .I3(distMin[1]),
        .O(\o_data_reg[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \o_data_reg[7]_i_16 
       (.I0(distMin[6]),
        .I1(in7[6]),
        .I2(distMin[7]),
        .I3(in7[7]),
        .O(\o_data_reg[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \o_data_reg[7]_i_17 
       (.I0(distMin[4]),
        .I1(in7[4]),
        .I2(distMin[5]),
        .I3(in7[5]),
        .O(\o_data_reg[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \o_data_reg[7]_i_18 
       (.I0(distMin[2]),
        .I1(in7[2]),
        .I2(distMin[3]),
        .I3(in7[3]),
        .O(\o_data_reg[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \o_data_reg[7]_i_19 
       (.I0(distMin[0]),
        .I1(in7[0]),
        .I2(distMin[1]),
        .I3(in7[1]),
        .O(\o_data_reg[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h800F800FF00F000F)) 
    \o_data_reg[7]_i_2 
       (.I0(checkedAll_next_reg_i_4_n_0),
        .I1(counter[2]),
        .I2(\o_data_reg[7]_i_4_n_0 ),
        .I3(PS[3]),
        .I4(p_0_in),
        .I5(eqOp),
        .O(\o_data_reg[7]_i_2_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \o_data_reg[7]_i_3 
       (.CI(1'b0),
        .CO({\NLW_o_data_reg[7]_i_3_CO_UNCONNECTED [3],eqOp,\o_data_reg[7]_i_3_n_2 ,\o_data_reg[7]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_o_data_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\o_data_reg[7]_i_6_n_0 ,\o_data_reg[7]_i_7_n_0 ,\o_data_reg[7]_i_8_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_data_reg[7]_i_4 
       (.I0(PS[2]),
        .I1(PS[1]),
        .I2(PS[0]),
        .O(\o_data_reg[7]_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \o_data_reg[7]_i_5 
       (.CI(\o_data_reg[7]_i_9_n_0 ),
        .CO({\NLW_o_data_reg[7]_i_5_CO_UNCONNECTED [3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_data_reg[7]_i_10_n_0 }),
        .O(\NLW_o_data_reg[7]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\o_data_reg[7]_i_11_n_0 }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \o_data_reg[7]_i_6 
       (.I0(in7[8]),
        .I1(distMin[8]),
        .I2(in7[7]),
        .I3(distMin[7]),
        .I4(distMin[6]),
        .I5(in7[6]),
        .O(\o_data_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \o_data_reg[7]_i_7 
       (.I0(in7[5]),
        .I1(distMin[5]),
        .I2(in7[4]),
        .I3(distMin[4]),
        .I4(distMin[3]),
        .I5(in7[3]),
        .O(\o_data_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \o_data_reg[7]_i_8 
       (.I0(in7[2]),
        .I1(distMin[2]),
        .I2(in7[1]),
        .I3(distMin[1]),
        .I4(distMin[0]),
        .I5(in7[0]),
        .O(\o_data_reg[7]_i_8_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \o_data_reg[7]_i_9 
       (.CI(1'b0),
        .CO({\o_data_reg[7]_i_9_n_0 ,\o_data_reg[7]_i_9_n_1 ,\o_data_reg[7]_i_9_n_2 ,\o_data_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_data_reg[7]_i_12_n_0 ,\o_data_reg[7]_i_13_n_0 ,\o_data_reg[7]_i_14_n_0 ,\o_data_reg[7]_i_15_n_0 }),
        .O(\NLW_o_data_reg[7]_i_9_O_UNCONNECTED [3:0]),
        .S({\o_data_reg[7]_i_16_n_0 ,\o_data_reg[7]_i_17_n_0 ,\o_data_reg[7]_i_18_n_0 ,\o_data_reg[7]_i_19_n_0 }));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    o_done_OBUF_inst_i_1
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(i_start_IBUF),
        .I3(PS[3]),
        .I4(PS[0]),
        .O(o_done_OBUF));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    o_en_reg
       (.CLR(1'b0),
        .D(o_en_reg_i_1_n_0),
        .G(o_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(o_en_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    o_en_reg_i_1
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(PS[0]),
        .I3(PS[3]),
        .O(o_en_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    o_en_reg_i_2
       (.I0(PS[3]),
        .I1(PS[0]),
        .I2(PS[2]),
        .I3(PS[1]),
        .O(o_en_reg_i_2_n_0));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    o_we_reg
       (.CLR(1'b0),
        .D(o_we_reg_i_1_n_0),
        .G(o_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(o_we_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    o_we_reg_i_1
       (.I0(PS[3]),
        .I1(PS[2]),
        .I2(PS[1]),
        .O(o_we_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \pivotX[7]_i_1 
       (.I0(PS[3]),
        .I1(PS[0]),
        .I2(PS[1]),
        .O(pivotX_next));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[0]_i_1_n_0 ),
        .Q(pivotX[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[0]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[0]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[1]_i_1_n_0 ),
        .Q(pivotX[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[1]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[1]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[2]_i_1_n_0 ),
        .Q(pivotX[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[2]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[2]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[3]_i_1_n_0 ),
        .Q(pivotX[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[3]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[3]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[4]_i_1_n_0 ),
        .Q(pivotX[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[4]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[4]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[5]_i_1_n_0 ),
        .Q(pivotX[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[5]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[5]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[6]_i_1_n_0 ),
        .Q(pivotX[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[6]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[6]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotX_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[7]_i_2_n_0 ),
        .Q(pivotX[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotX_reg[7]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[7]),
        .G(\pivotX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotX[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \pivotX_reg[7]__0_i_1 
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(\pivotX_reg[7]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[0]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[0]),
        .O(\pivotY[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[1]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[1]),
        .O(\pivotY[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[2]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[2]),
        .O(\pivotY[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[3]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[3]),
        .O(\pivotY[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[4]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[4]),
        .O(\pivotY[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[5]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[5]),
        .O(\pivotY[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[6]_i_1 
       (.I0(PS[2]),
        .I1(i_data_IBUF[6]),
        .O(\pivotY[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \pivotY[7]_i_1 
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(PS[0]),
        .I3(PS[3]),
        .O(pivotY_next));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pivotY[7]_i_2 
       (.I0(PS[2]),
        .I1(i_data_IBUF[7]),
        .O(\pivotY[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[0]_i_1_n_0 ),
        .Q(pivotY[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[0]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[0]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[1]_i_1_n_0 ),
        .Q(pivotY[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[1]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[1]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[2]_i_1_n_0 ),
        .Q(pivotY[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[2]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[2]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[3]_i_1_n_0 ),
        .Q(pivotY[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[3]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[3]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[4]_i_1_n_0 ),
        .Q(pivotY[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[4]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[4]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[5]_i_1_n_0 ),
        .Q(pivotY[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[5]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[5]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[6]_i_1_n_0 ),
        .Q(pivotY[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[6]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[6]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(pivotY_next),
        .CLR(i_rst_IBUF),
        .D(\pivotY[7]_i_2_n_0 ),
        .Q(pivotY[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pivotY_reg[7]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[7]),
        .G(\pivotY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(pivotY[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pivotY_reg[7]__0_i_1 
       (.I0(PS[2]),
        .I1(PS[1]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(\pivotY_reg[7]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2001)) 
    \tempX[7]_i_1 
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(PS[0]),
        .I3(PS[3]),
        .O(tempX_next));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[0]_i_1_n_0 ),
        .Q(tempX[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[0]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[0]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[1]_i_1_n_0 ),
        .Q(tempX[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[1]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[1]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[2]_i_1_n_0 ),
        .Q(tempX[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[2]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[2]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[3]_i_1_n_0 ),
        .Q(tempX[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[3]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[3]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[4]_i_1_n_0 ),
        .Q(tempX[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[4]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[4]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[5]_i_1_n_0 ),
        .Q(tempX[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[5]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[5]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[6]_i_1_n_0 ),
        .Q(tempX[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[6]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[6]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tempX_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempX_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[7]_i_2_n_0 ),
        .Q(tempX[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempX_reg[7]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[7]),
        .G(\tempX_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempX[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \tempX_reg[7]__0_i_1 
       (.I0(PS[2]),
        .I1(PS[3]),
        .I2(PS[0]),
        .I3(PS[1]),
        .O(\tempX_reg[7]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[0]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[0]),
        .O(\tempY[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[1]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[1]),
        .O(\tempY[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[2]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[2]),
        .O(\tempY[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[3]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[3]),
        .O(\tempY[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[4]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[4]),
        .O(\tempY[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[5]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[5]),
        .O(\tempY[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[6]_i_1 
       (.I0(PS[3]),
        .I1(i_data_IBUF[6]),
        .O(\tempY[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0081)) 
    \tempY[7]_i_1 
       (.I0(PS[3]),
        .I1(PS[2]),
        .I2(PS[0]),
        .I3(PS[1]),
        .O(tempY_next));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempY[7]_i_2 
       (.I0(PS[3]),
        .I1(i_data_IBUF[7]),
        .O(\tempY[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[0]_i_1_n_0 ),
        .Q(tempY[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[0]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[0]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[1]_i_1_n_0 ),
        .Q(tempY[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[1]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[1]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[2]_i_1_n_0 ),
        .Q(tempY[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[2]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[2]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[3]_i_1_n_0 ),
        .Q(tempY[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[3]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[3]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[4]_i_1_n_0 ),
        .Q(tempY[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[4]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[4]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[5]_i_1_n_0 ),
        .Q(tempY[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[5]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[5]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[6]_i_1_n_0 ),
        .Q(tempY[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[6]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[6]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tempY_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(tempY_next),
        .CLR(i_rst_IBUF),
        .D(\tempY[7]_i_2_n_0 ),
        .Q(tempY[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tempY_reg[7]__0 
       (.CLR(1'b0),
        .D(i_data_IBUF[7]),
        .G(\tempY_reg[7]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(tempY[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \tempY_reg[7]__0_i_1 
       (.I0(PS[1]),
        .I1(PS[2]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(\tempY_reg[7]__0_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
