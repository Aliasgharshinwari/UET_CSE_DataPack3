////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Fri May 24 22:33:18 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc6slx9-2-csg324
// Input file	: top.ngc
// Output file	: D:\Uni\DSD - Lab\Lab12\xilinx\Task1\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  CLK_IN, RST, OUT_LED, OUT_SEG
);
  input CLK_IN;
  input RST;
  output [2 : 0] OUT_LED;
  output [7 : 0] OUT_SEG;
  wire CLK_IN_BUFGP_0;
  wire RST_IBUF_1;
  wire \divider/clk_out_2 ;
  wire OUT_SEG_7_OBUF_3;
  wire \dut/out_0_0 ;
  wire OUT_SEG_2_OBUF_5;
  wire \divider/counter[27]_GND_2_o_LessThan_5_o ;
  wire \dut/_n0020 ;
  wire \dut/PS_FSM_FFd1_36 ;
  wire \dut/PS_FSM_FFd2_37 ;
  wire \dut/PS_FSM_FFd3_38 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi_95 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<0>_96 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<0>_97 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi1_98 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<1>_99 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<1>_100 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<2>_101 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<2>_102 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi2_103 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<3>_104 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<3>_105 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi3_106 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<4>_107 ;
  wire \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<4>_108 ;
  wire \divider/Mcompar_n0001_lutdi_111 ;
  wire \divider/Mcompar_n0001_lutdi1_114 ;
  wire \divider/Mcompar_n0001_lutdi2_117 ;
  wire \divider/Mcompar_n0001_lutdi3_120 ;
  wire \divider/Mcompar_n0001_lutdi4_123 ;
  wire \divider/Mcount_counter_cy<1>_rt_139 ;
  wire \divider/Mcount_counter_cy<2>_rt_140 ;
  wire \divider/Mcount_counter_cy<3>_rt_141 ;
  wire \divider/Mcount_counter_cy<4>_rt_142 ;
  wire \divider/Mcount_counter_cy<5>_rt_143 ;
  wire \divider/Mcount_counter_cy<6>_rt_144 ;
  wire \divider/Mcount_counter_cy<7>_rt_145 ;
  wire \divider/Mcount_counter_cy<8>_rt_146 ;
  wire \divider/Mcount_counter_cy<9>_rt_147 ;
  wire \divider/Mcount_counter_cy<10>_rt_148 ;
  wire \divider/Mcount_counter_cy<11>_rt_149 ;
  wire \divider/Mcount_counter_cy<12>_rt_150 ;
  wire \divider/Mcount_counter_cy<13>_rt_151 ;
  wire \divider/Mcount_counter_cy<14>_rt_152 ;
  wire \divider/Mcount_counter_cy<15>_rt_153 ;
  wire \divider/Mcount_counter_cy<16>_rt_154 ;
  wire \divider/Mcount_counter_cy<17>_rt_155 ;
  wire \divider/Mcount_counter_cy<18>_rt_156 ;
  wire \divider/Mcount_counter_cy<19>_rt_157 ;
  wire \divider/Mcount_counter_cy<20>_rt_158 ;
  wire \divider/Mcount_counter_cy<21>_rt_159 ;
  wire \divider/Mcount_counter_cy<22>_rt_160 ;
  wire \divider/Mcount_counter_cy<23>_rt_161 ;
  wire \divider/Mcount_counter_cy<24>_rt_162 ;
  wire \divider/Mcount_counter_cy<25>_rt_163 ;
  wire \divider/Mcount_counter_cy<26>_rt_164 ;
  wire \divider/Mcount_counter_xor<27>_rt_165 ;
  wire \divider/counter_0_rstpot_166 ;
  wire \divider/counter_1_rstpot_167 ;
  wire \divider/counter_2_rstpot_168 ;
  wire \divider/counter_3_rstpot_169 ;
  wire \divider/counter_4_rstpot_170 ;
  wire \divider/counter_5_rstpot_171 ;
  wire \divider/counter_6_rstpot_172 ;
  wire \divider/counter_7_rstpot_173 ;
  wire \divider/counter_8_rstpot_174 ;
  wire \divider/counter_9_rstpot_175 ;
  wire \divider/counter_10_rstpot_176 ;
  wire \divider/counter_11_rstpot_177 ;
  wire \divider/counter_12_rstpot_178 ;
  wire \divider/counter_13_rstpot_179 ;
  wire \divider/counter_14_rstpot_180 ;
  wire \divider/counter_15_rstpot_181 ;
  wire \divider/counter_16_rstpot_182 ;
  wire \divider/counter_17_rstpot_183 ;
  wire \divider/counter_18_rstpot_184 ;
  wire \divider/counter_19_rstpot_185 ;
  wire \divider/counter_20_rstpot_186 ;
  wire \divider/counter_21_rstpot_187 ;
  wire \divider/counter_22_rstpot_188 ;
  wire \divider/counter_23_rstpot_189 ;
  wire \divider/counter_24_rstpot_190 ;
  wire \divider/counter_25_rstpot_191 ;
  wire \divider/counter_26_rstpot_192 ;
  wire \divider/counter_27_rstpot_193 ;
  wire \dut/out_0_1_194 ;
  wire \dut/out_0_2_195 ;
  wire \dut/out_0_3_196 ;
  wire \dut/out_0_4_197 ;
  wire [27 : 0] \divider/counter ;
  wire [27 : 0] Result;
  wire [0 : 0] \divider/Mcount_counter_lut ;
  wire [26 : 0] \divider/Mcount_counter_cy ;
  wire [5 : 0] \divider/Mcompar_n0001_lut ;
  wire [5 : 0] \divider/Mcompar_n0001_cy ;
  VCC   XST_VCC (
    .P(OUT_SEG_7_OBUF_3)
  );
  GND   XST_GND (
    .G(OUT_SEG_2_OBUF_5)
  );
  FD   \divider/clk_out  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter[27]_GND_2_o_LessThan_5_o ),
    .Q(\divider/clk_out_2 )
  );
  LD   \dut/out_0  (
    .D(\dut/PS_FSM_FFd3_38 ),
    .G(\dut/_n0020 ),
    .Q(\dut/out_0_0 )
  );
  FDR   \dut/PS_FSM_FFd2  (
    .C(\divider/clk_out_2 ),
    .D(\dut/PS_FSM_FFd3_38 ),
    .R(RST_IBUF_1),
    .Q(\dut/PS_FSM_FFd2_37 )
  );
  FDR   \dut/PS_FSM_FFd1  (
    .C(\divider/clk_out_2 ),
    .D(\dut/PS_FSM_FFd2_37 ),
    .R(RST_IBUF_1),
    .Q(\dut/PS_FSM_FFd1_36 )
  );
  FDS   \dut/PS_FSM_FFd3  (
    .C(\divider/clk_out_2 ),
    .D(\dut/PS_FSM_FFd1_36 ),
    .S(RST_IBUF_1),
    .Q(\dut/PS_FSM_FFd3_38 )
  );
  MUXCY   \divider/Mcount_counter_cy<0>  (
    .CI(OUT_SEG_2_OBUF_5),
    .DI(OUT_SEG_7_OBUF_3),
    .S(\divider/Mcount_counter_lut [0]),
    .O(\divider/Mcount_counter_cy [0])
  );
  XORCY   \divider/Mcount_counter_xor<0>  (
    .CI(OUT_SEG_2_OBUF_5),
    .LI(\divider/Mcount_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \divider/Mcount_counter_cy<1>  (
    .CI(\divider/Mcount_counter_cy [0]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<1>_rt_139 ),
    .O(\divider/Mcount_counter_cy [1])
  );
  XORCY   \divider/Mcount_counter_xor<1>  (
    .CI(\divider/Mcount_counter_cy [0]),
    .LI(\divider/Mcount_counter_cy<1>_rt_139 ),
    .O(Result[1])
  );
  MUXCY   \divider/Mcount_counter_cy<2>  (
    .CI(\divider/Mcount_counter_cy [1]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<2>_rt_140 ),
    .O(\divider/Mcount_counter_cy [2])
  );
  XORCY   \divider/Mcount_counter_xor<2>  (
    .CI(\divider/Mcount_counter_cy [1]),
    .LI(\divider/Mcount_counter_cy<2>_rt_140 ),
    .O(Result[2])
  );
  MUXCY   \divider/Mcount_counter_cy<3>  (
    .CI(\divider/Mcount_counter_cy [2]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<3>_rt_141 ),
    .O(\divider/Mcount_counter_cy [3])
  );
  XORCY   \divider/Mcount_counter_xor<3>  (
    .CI(\divider/Mcount_counter_cy [2]),
    .LI(\divider/Mcount_counter_cy<3>_rt_141 ),
    .O(Result[3])
  );
  MUXCY   \divider/Mcount_counter_cy<4>  (
    .CI(\divider/Mcount_counter_cy [3]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<4>_rt_142 ),
    .O(\divider/Mcount_counter_cy [4])
  );
  XORCY   \divider/Mcount_counter_xor<4>  (
    .CI(\divider/Mcount_counter_cy [3]),
    .LI(\divider/Mcount_counter_cy<4>_rt_142 ),
    .O(Result[4])
  );
  MUXCY   \divider/Mcount_counter_cy<5>  (
    .CI(\divider/Mcount_counter_cy [4]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<5>_rt_143 ),
    .O(\divider/Mcount_counter_cy [5])
  );
  XORCY   \divider/Mcount_counter_xor<5>  (
    .CI(\divider/Mcount_counter_cy [4]),
    .LI(\divider/Mcount_counter_cy<5>_rt_143 ),
    .O(Result[5])
  );
  MUXCY   \divider/Mcount_counter_cy<6>  (
    .CI(\divider/Mcount_counter_cy [5]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<6>_rt_144 ),
    .O(\divider/Mcount_counter_cy [6])
  );
  XORCY   \divider/Mcount_counter_xor<6>  (
    .CI(\divider/Mcount_counter_cy [5]),
    .LI(\divider/Mcount_counter_cy<6>_rt_144 ),
    .O(Result[6])
  );
  MUXCY   \divider/Mcount_counter_cy<7>  (
    .CI(\divider/Mcount_counter_cy [6]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<7>_rt_145 ),
    .O(\divider/Mcount_counter_cy [7])
  );
  XORCY   \divider/Mcount_counter_xor<7>  (
    .CI(\divider/Mcount_counter_cy [6]),
    .LI(\divider/Mcount_counter_cy<7>_rt_145 ),
    .O(Result[7])
  );
  MUXCY   \divider/Mcount_counter_cy<8>  (
    .CI(\divider/Mcount_counter_cy [7]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<8>_rt_146 ),
    .O(\divider/Mcount_counter_cy [8])
  );
  XORCY   \divider/Mcount_counter_xor<8>  (
    .CI(\divider/Mcount_counter_cy [7]),
    .LI(\divider/Mcount_counter_cy<8>_rt_146 ),
    .O(Result[8])
  );
  MUXCY   \divider/Mcount_counter_cy<9>  (
    .CI(\divider/Mcount_counter_cy [8]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<9>_rt_147 ),
    .O(\divider/Mcount_counter_cy [9])
  );
  XORCY   \divider/Mcount_counter_xor<9>  (
    .CI(\divider/Mcount_counter_cy [8]),
    .LI(\divider/Mcount_counter_cy<9>_rt_147 ),
    .O(Result[9])
  );
  MUXCY   \divider/Mcount_counter_cy<10>  (
    .CI(\divider/Mcount_counter_cy [9]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<10>_rt_148 ),
    .O(\divider/Mcount_counter_cy [10])
  );
  XORCY   \divider/Mcount_counter_xor<10>  (
    .CI(\divider/Mcount_counter_cy [9]),
    .LI(\divider/Mcount_counter_cy<10>_rt_148 ),
    .O(Result[10])
  );
  MUXCY   \divider/Mcount_counter_cy<11>  (
    .CI(\divider/Mcount_counter_cy [10]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<11>_rt_149 ),
    .O(\divider/Mcount_counter_cy [11])
  );
  XORCY   \divider/Mcount_counter_xor<11>  (
    .CI(\divider/Mcount_counter_cy [10]),
    .LI(\divider/Mcount_counter_cy<11>_rt_149 ),
    .O(Result[11])
  );
  MUXCY   \divider/Mcount_counter_cy<12>  (
    .CI(\divider/Mcount_counter_cy [11]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<12>_rt_150 ),
    .O(\divider/Mcount_counter_cy [12])
  );
  XORCY   \divider/Mcount_counter_xor<12>  (
    .CI(\divider/Mcount_counter_cy [11]),
    .LI(\divider/Mcount_counter_cy<12>_rt_150 ),
    .O(Result[12])
  );
  MUXCY   \divider/Mcount_counter_cy<13>  (
    .CI(\divider/Mcount_counter_cy [12]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<13>_rt_151 ),
    .O(\divider/Mcount_counter_cy [13])
  );
  XORCY   \divider/Mcount_counter_xor<13>  (
    .CI(\divider/Mcount_counter_cy [12]),
    .LI(\divider/Mcount_counter_cy<13>_rt_151 ),
    .O(Result[13])
  );
  MUXCY   \divider/Mcount_counter_cy<14>  (
    .CI(\divider/Mcount_counter_cy [13]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<14>_rt_152 ),
    .O(\divider/Mcount_counter_cy [14])
  );
  XORCY   \divider/Mcount_counter_xor<14>  (
    .CI(\divider/Mcount_counter_cy [13]),
    .LI(\divider/Mcount_counter_cy<14>_rt_152 ),
    .O(Result[14])
  );
  MUXCY   \divider/Mcount_counter_cy<15>  (
    .CI(\divider/Mcount_counter_cy [14]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<15>_rt_153 ),
    .O(\divider/Mcount_counter_cy [15])
  );
  XORCY   \divider/Mcount_counter_xor<15>  (
    .CI(\divider/Mcount_counter_cy [14]),
    .LI(\divider/Mcount_counter_cy<15>_rt_153 ),
    .O(Result[15])
  );
  MUXCY   \divider/Mcount_counter_cy<16>  (
    .CI(\divider/Mcount_counter_cy [15]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<16>_rt_154 ),
    .O(\divider/Mcount_counter_cy [16])
  );
  XORCY   \divider/Mcount_counter_xor<16>  (
    .CI(\divider/Mcount_counter_cy [15]),
    .LI(\divider/Mcount_counter_cy<16>_rt_154 ),
    .O(Result[16])
  );
  MUXCY   \divider/Mcount_counter_cy<17>  (
    .CI(\divider/Mcount_counter_cy [16]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<17>_rt_155 ),
    .O(\divider/Mcount_counter_cy [17])
  );
  XORCY   \divider/Mcount_counter_xor<17>  (
    .CI(\divider/Mcount_counter_cy [16]),
    .LI(\divider/Mcount_counter_cy<17>_rt_155 ),
    .O(Result[17])
  );
  MUXCY   \divider/Mcount_counter_cy<18>  (
    .CI(\divider/Mcount_counter_cy [17]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<18>_rt_156 ),
    .O(\divider/Mcount_counter_cy [18])
  );
  XORCY   \divider/Mcount_counter_xor<18>  (
    .CI(\divider/Mcount_counter_cy [17]),
    .LI(\divider/Mcount_counter_cy<18>_rt_156 ),
    .O(Result[18])
  );
  MUXCY   \divider/Mcount_counter_cy<19>  (
    .CI(\divider/Mcount_counter_cy [18]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<19>_rt_157 ),
    .O(\divider/Mcount_counter_cy [19])
  );
  XORCY   \divider/Mcount_counter_xor<19>  (
    .CI(\divider/Mcount_counter_cy [18]),
    .LI(\divider/Mcount_counter_cy<19>_rt_157 ),
    .O(Result[19])
  );
  MUXCY   \divider/Mcount_counter_cy<20>  (
    .CI(\divider/Mcount_counter_cy [19]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<20>_rt_158 ),
    .O(\divider/Mcount_counter_cy [20])
  );
  XORCY   \divider/Mcount_counter_xor<20>  (
    .CI(\divider/Mcount_counter_cy [19]),
    .LI(\divider/Mcount_counter_cy<20>_rt_158 ),
    .O(Result[20])
  );
  MUXCY   \divider/Mcount_counter_cy<21>  (
    .CI(\divider/Mcount_counter_cy [20]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<21>_rt_159 ),
    .O(\divider/Mcount_counter_cy [21])
  );
  XORCY   \divider/Mcount_counter_xor<21>  (
    .CI(\divider/Mcount_counter_cy [20]),
    .LI(\divider/Mcount_counter_cy<21>_rt_159 ),
    .O(Result[21])
  );
  MUXCY   \divider/Mcount_counter_cy<22>  (
    .CI(\divider/Mcount_counter_cy [21]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<22>_rt_160 ),
    .O(\divider/Mcount_counter_cy [22])
  );
  XORCY   \divider/Mcount_counter_xor<22>  (
    .CI(\divider/Mcount_counter_cy [21]),
    .LI(\divider/Mcount_counter_cy<22>_rt_160 ),
    .O(Result[22])
  );
  MUXCY   \divider/Mcount_counter_cy<23>  (
    .CI(\divider/Mcount_counter_cy [22]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<23>_rt_161 ),
    .O(\divider/Mcount_counter_cy [23])
  );
  XORCY   \divider/Mcount_counter_xor<23>  (
    .CI(\divider/Mcount_counter_cy [22]),
    .LI(\divider/Mcount_counter_cy<23>_rt_161 ),
    .O(Result[23])
  );
  MUXCY   \divider/Mcount_counter_cy<24>  (
    .CI(\divider/Mcount_counter_cy [23]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<24>_rt_162 ),
    .O(\divider/Mcount_counter_cy [24])
  );
  XORCY   \divider/Mcount_counter_xor<24>  (
    .CI(\divider/Mcount_counter_cy [23]),
    .LI(\divider/Mcount_counter_cy<24>_rt_162 ),
    .O(Result[24])
  );
  MUXCY   \divider/Mcount_counter_cy<25>  (
    .CI(\divider/Mcount_counter_cy [24]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<25>_rt_163 ),
    .O(\divider/Mcount_counter_cy [25])
  );
  XORCY   \divider/Mcount_counter_xor<25>  (
    .CI(\divider/Mcount_counter_cy [24]),
    .LI(\divider/Mcount_counter_cy<25>_rt_163 ),
    .O(Result[25])
  );
  MUXCY   \divider/Mcount_counter_cy<26>  (
    .CI(\divider/Mcount_counter_cy [25]),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcount_counter_cy<26>_rt_164 ),
    .O(\divider/Mcount_counter_cy [26])
  );
  XORCY   \divider/Mcount_counter_xor<26>  (
    .CI(\divider/Mcount_counter_cy [25]),
    .LI(\divider/Mcount_counter_cy<26>_rt_164 ),
    .O(Result[26])
  );
  XORCY   \divider/Mcount_counter_xor<27>  (
    .CI(\divider/Mcount_counter_cy [26]),
    .LI(\divider/Mcount_counter_xor<27>_rt_165 ),
    .O(Result[27])
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi  (
    .I0(\divider/counter [8]),
    .I1(\divider/counter [7]),
    .I2(\divider/counter [6]),
    .I3(\divider/counter [9]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi_95 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<0>  (
    .I0(\divider/counter [6]),
    .I1(\divider/counter [5]),
    .I2(\divider/counter [7]),
    .I3(\divider/counter [8]),
    .I4(\divider/counter [9]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<0>_96 )
  );
  MUXCY   \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<0>  (
    .CI(OUT_SEG_7_OBUF_3),
    .DI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi_95 ),
    .S(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<0>_96 ),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<0>_97 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi1  (
    .I0(\divider/counter [13]),
    .I1(\divider/counter [12]),
    .I2(\divider/counter [11]),
    .I3(\divider/counter [10]),
    .I4(\divider/counter [14]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi1_98 )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<1>  (
    .I0(\divider/counter [10]),
    .I1(\divider/counter [13]),
    .I2(\divider/counter [11]),
    .I3(\divider/counter [12]),
    .I4(\divider/counter [14]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<1>_99 )
  );
  MUXCY   \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<1>  (
    .CI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<0>_97 ),
    .DI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi1_98 ),
    .S(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<1>_99 ),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<1>_100 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<2>  (
    .I0(\divider/counter [19]),
    .I1(\divider/counter [16]),
    .I2(\divider/counter [17]),
    .I3(\divider/counter [18]),
    .I4(\divider/counter [15]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<2>_101 )
  );
  MUXCY   \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<2>  (
    .CI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<1>_100 ),
    .DI(\divider/counter [19]),
    .S(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<2>_101 ),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<2>_102 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi2  (
    .I0(\divider/counter [24]),
    .I1(\divider/counter [23]),
    .I2(\divider/counter [22]),
    .I3(\divider/counter [21]),
    .I4(\divider/counter [20]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi2_103 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<3>  (
    .I0(\divider/counter [20]),
    .I1(\divider/counter [21]),
    .I2(\divider/counter [22]),
    .I3(\divider/counter [23]),
    .I4(\divider/counter [24]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<3>_104 )
  );
  MUXCY   \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<3>  (
    .CI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<2>_102 ),
    .DI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi2_103 ),
    .S(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<3>_104 ),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<3>_105 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi3  (
    .I0(\divider/counter [27]),
    .I1(\divider/counter [26]),
    .I2(\divider/counter [25]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi3_106 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<4>  (
    .I0(\divider/counter [25]),
    .I1(\divider/counter [26]),
    .I2(\divider/counter [27]),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<4>_107 )
  );
  MUXCY   \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<4>  (
    .CI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<3>_105 ),
    .DI(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lutdi3_106 ),
    .S(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_lut<4>_107 ),
    .O(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<4>_108 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \divider/Mcompar_n0001_lut<0>  (
    .I0(\divider/counter [0]),
    .I1(\divider/counter [1]),
    .I2(\divider/counter [2]),
    .I3(\divider/counter [3]),
    .I4(\divider/counter [4]),
    .O(\divider/Mcompar_n0001_lut [0])
  );
  MUXCY   \divider/Mcompar_n0001_cy<0>  (
    .CI(OUT_SEG_7_OBUF_3),
    .DI(OUT_SEG_2_OBUF_5),
    .S(\divider/Mcompar_n0001_lut [0]),
    .O(\divider/Mcompar_n0001_cy [0])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \divider/Mcompar_n0001_lutdi  (
    .I0(\divider/counter [9]),
    .I1(\divider/counter [8]),
    .I2(\divider/counter [7]),
    .I3(\divider/counter [6]),
    .O(\divider/Mcompar_n0001_lutdi_111 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \divider/Mcompar_n0001_lut<1>  (
    .I0(\divider/counter [6]),
    .I1(\divider/counter [9]),
    .I2(\divider/counter [7]),
    .I3(\divider/counter [5]),
    .I4(\divider/counter [8]),
    .O(\divider/Mcompar_n0001_lut [1])
  );
  MUXCY   \divider/Mcompar_n0001_cy<1>  (
    .CI(\divider/Mcompar_n0001_cy [0]),
    .DI(\divider/Mcompar_n0001_lutdi_111 ),
    .S(\divider/Mcompar_n0001_lut [1]),
    .O(\divider/Mcompar_n0001_cy [1])
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  \divider/Mcompar_n0001_lutdi1  (
    .I0(\divider/counter [14]),
    .I1(\divider/counter [13]),
    .I2(\divider/counter [12]),
    .I3(\divider/counter [11]),
    .I4(\divider/counter [10]),
    .O(\divider/Mcompar_n0001_lutdi1_114 )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \divider/Mcompar_n0001_lut<2>  (
    .I0(\divider/counter [10]),
    .I1(\divider/counter [14]),
    .I2(\divider/counter [11]),
    .I3(\divider/counter [12]),
    .I4(\divider/counter [13]),
    .O(\divider/Mcompar_n0001_lut [2])
  );
  MUXCY   \divider/Mcompar_n0001_cy<2>  (
    .CI(\divider/Mcompar_n0001_cy [1]),
    .DI(\divider/Mcompar_n0001_lutdi1_114 ),
    .S(\divider/Mcompar_n0001_lut [2]),
    .O(\divider/Mcompar_n0001_cy [2])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \divider/Mcompar_n0001_lutdi2  (
    .I0(\divider/counter [19]),
    .I1(\divider/counter [18]),
    .I2(\divider/counter [17]),
    .I3(\divider/counter [16]),
    .I4(\divider/counter [15]),
    .O(\divider/Mcompar_n0001_lutdi2_117 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \divider/Mcompar_n0001_lut<3>  (
    .I0(\divider/counter [15]),
    .I1(\divider/counter [16]),
    .I2(\divider/counter [17]),
    .I3(\divider/counter [18]),
    .I4(\divider/counter [19]),
    .O(\divider/Mcompar_n0001_lut [3])
  );
  MUXCY   \divider/Mcompar_n0001_cy<3>  (
    .CI(\divider/Mcompar_n0001_cy [2]),
    .DI(\divider/Mcompar_n0001_lutdi2_117 ),
    .S(\divider/Mcompar_n0001_lut [3]),
    .O(\divider/Mcompar_n0001_cy [3])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \divider/Mcompar_n0001_lutdi3  (
    .I0(\divider/counter [24]),
    .I1(\divider/counter [23]),
    .I2(\divider/counter [22]),
    .I3(\divider/counter [21]),
    .I4(\divider/counter [20]),
    .O(\divider/Mcompar_n0001_lutdi3_120 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \divider/Mcompar_n0001_lut<4>  (
    .I0(\divider/counter [20]),
    .I1(\divider/counter [21]),
    .I2(\divider/counter [22]),
    .I3(\divider/counter [23]),
    .I4(\divider/counter [24]),
    .O(\divider/Mcompar_n0001_lut [4])
  );
  MUXCY   \divider/Mcompar_n0001_cy<4>  (
    .CI(\divider/Mcompar_n0001_cy [3]),
    .DI(\divider/Mcompar_n0001_lutdi3_120 ),
    .S(\divider/Mcompar_n0001_lut [4]),
    .O(\divider/Mcompar_n0001_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \divider/Mcompar_n0001_lutdi4  (
    .I0(\divider/counter [27]),
    .I1(\divider/counter [26]),
    .I2(\divider/counter [25]),
    .O(\divider/Mcompar_n0001_lutdi4_123 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \divider/Mcompar_n0001_lut<5>  (
    .I0(\divider/counter [25]),
    .I1(\divider/counter [26]),
    .I2(\divider/counter [27]),
    .O(\divider/Mcompar_n0001_lut [5])
  );
  MUXCY   \divider/Mcompar_n0001_cy<5>  (
    .CI(\divider/Mcompar_n0001_cy [4]),
    .DI(\divider/Mcompar_n0001_lutdi4_123 ),
    .S(\divider/Mcompar_n0001_lut [5]),
    .O(\divider/Mcompar_n0001_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \dut/PS_dut/_n00201  (
    .I0(\dut/PS_FSM_FFd2_37 ),
    .I1(\dut/PS_FSM_FFd3_38 ),
    .I2(\dut/PS_FSM_FFd1_36 ),
    .O(\dut/_n0020 )
  );
  IBUF   RST_IBUF (
    .I(RST),
    .O(RST_IBUF_1)
  );
  OBUF   OUT_LED_2_OBUF (
    .I(OUT_SEG_2_OBUF_5),
    .O(OUT_LED[2])
  );
  OBUF   OUT_LED_1_OBUF (
    .I(OUT_SEG_2_OBUF_5),
    .O(OUT_LED[1])
  );
  OBUF   OUT_LED_0_OBUF (
    .I(\dut/out_0_1_194 ),
    .O(OUT_LED[0])
  );
  OBUF   OUT_SEG_7_OBUF (
    .I(OUT_SEG_7_OBUF_3),
    .O(OUT_SEG[7])
  );
  OBUF   OUT_SEG_6_OBUF (
    .I(OUT_SEG_7_OBUF_3),
    .O(OUT_SEG[6])
  );
  OBUF   OUT_SEG_5_OBUF (
    .I(\dut/out_0_2_195 ),
    .O(OUT_SEG[5])
  );
  OBUF   OUT_SEG_4_OBUF (
    .I(\dut/out_0_3_196 ),
    .O(OUT_SEG[4])
  );
  OBUF   OUT_SEG_3_OBUF (
    .I(\dut/out_0_4_197 ),
    .O(OUT_SEG[3])
  );
  OBUF   OUT_SEG_2_OBUF (
    .I(OUT_SEG_2_OBUF_5),
    .O(OUT_SEG[2])
  );
  OBUF   OUT_SEG_1_OBUF (
    .I(OUT_SEG_2_OBUF_5),
    .O(OUT_SEG[1])
  );
  OBUF   OUT_SEG_0_OBUF (
    .I(\dut/out_0_0 ),
    .O(OUT_SEG[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<1>_rt  (
    .I0(\divider/counter [1]),
    .O(\divider/Mcount_counter_cy<1>_rt_139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<2>_rt  (
    .I0(\divider/counter [2]),
    .O(\divider/Mcount_counter_cy<2>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<3>_rt  (
    .I0(\divider/counter [3]),
    .O(\divider/Mcount_counter_cy<3>_rt_141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<4>_rt  (
    .I0(\divider/counter [4]),
    .O(\divider/Mcount_counter_cy<4>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<5>_rt  (
    .I0(\divider/counter [5]),
    .O(\divider/Mcount_counter_cy<5>_rt_143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<6>_rt  (
    .I0(\divider/counter [6]),
    .O(\divider/Mcount_counter_cy<6>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<7>_rt  (
    .I0(\divider/counter [7]),
    .O(\divider/Mcount_counter_cy<7>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<8>_rt  (
    .I0(\divider/counter [8]),
    .O(\divider/Mcount_counter_cy<8>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<9>_rt  (
    .I0(\divider/counter [9]),
    .O(\divider/Mcount_counter_cy<9>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<10>_rt  (
    .I0(\divider/counter [10]),
    .O(\divider/Mcount_counter_cy<10>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<11>_rt  (
    .I0(\divider/counter [11]),
    .O(\divider/Mcount_counter_cy<11>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<12>_rt  (
    .I0(\divider/counter [12]),
    .O(\divider/Mcount_counter_cy<12>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<13>_rt  (
    .I0(\divider/counter [13]),
    .O(\divider/Mcount_counter_cy<13>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<14>_rt  (
    .I0(\divider/counter [14]),
    .O(\divider/Mcount_counter_cy<14>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<15>_rt  (
    .I0(\divider/counter [15]),
    .O(\divider/Mcount_counter_cy<15>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<16>_rt  (
    .I0(\divider/counter [16]),
    .O(\divider/Mcount_counter_cy<16>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<17>_rt  (
    .I0(\divider/counter [17]),
    .O(\divider/Mcount_counter_cy<17>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<18>_rt  (
    .I0(\divider/counter [18]),
    .O(\divider/Mcount_counter_cy<18>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<19>_rt  (
    .I0(\divider/counter [19]),
    .O(\divider/Mcount_counter_cy<19>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<20>_rt  (
    .I0(\divider/counter [20]),
    .O(\divider/Mcount_counter_cy<20>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<21>_rt  (
    .I0(\divider/counter [21]),
    .O(\divider/Mcount_counter_cy<21>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<22>_rt  (
    .I0(\divider/counter [22]),
    .O(\divider/Mcount_counter_cy<22>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<23>_rt  (
    .I0(\divider/counter [23]),
    .O(\divider/Mcount_counter_cy<23>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<24>_rt  (
    .I0(\divider/counter [24]),
    .O(\divider/Mcount_counter_cy<24>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<25>_rt  (
    .I0(\divider/counter [25]),
    .O(\divider/Mcount_counter_cy<25>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_cy<26>_rt  (
    .I0(\divider/counter [26]),
    .O(\divider/Mcount_counter_cy<26>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Mcount_counter_xor<27>_rt  (
    .I0(\divider/counter [27]),
    .O(\divider/Mcount_counter_xor<27>_rt_165 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_0_rstpot  (
    .I0(Result[0]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_0_rstpot_166 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_0  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_0_rstpot_166 ),
    .Q(\divider/counter [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_1_rstpot  (
    .I0(Result[1]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_1_rstpot_167 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_1  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_1_rstpot_167 ),
    .Q(\divider/counter [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_2_rstpot  (
    .I0(Result[2]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_2_rstpot_168 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_2  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_2_rstpot_168 ),
    .Q(\divider/counter [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_3_rstpot  (
    .I0(Result[3]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_3_rstpot_169 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_3  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_3_rstpot_169 ),
    .Q(\divider/counter [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_4_rstpot  (
    .I0(Result[4]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_4_rstpot_170 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_4  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_4_rstpot_170 ),
    .Q(\divider/counter [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_5_rstpot  (
    .I0(Result[5]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_5_rstpot_171 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_5  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_5_rstpot_171 ),
    .Q(\divider/counter [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_6_rstpot  (
    .I0(Result[6]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_6_rstpot_172 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_6  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_6_rstpot_172 ),
    .Q(\divider/counter [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_7_rstpot  (
    .I0(Result[7]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_7_rstpot_173 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_7  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_7_rstpot_173 ),
    .Q(\divider/counter [7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_8_rstpot  (
    .I0(Result[8]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_8_rstpot_174 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_8  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_8_rstpot_174 ),
    .Q(\divider/counter [8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_9_rstpot  (
    .I0(Result[9]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_9_rstpot_175 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_9  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_9_rstpot_175 ),
    .Q(\divider/counter [9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_10_rstpot  (
    .I0(Result[10]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_10_rstpot_176 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_10  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_10_rstpot_176 ),
    .Q(\divider/counter [10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_11_rstpot  (
    .I0(Result[11]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_11_rstpot_177 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_11  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_11_rstpot_177 ),
    .Q(\divider/counter [11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_12_rstpot  (
    .I0(Result[12]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_12_rstpot_178 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_12  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_12_rstpot_178 ),
    .Q(\divider/counter [12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_13_rstpot  (
    .I0(Result[13]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_13_rstpot_179 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_13  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_13_rstpot_179 ),
    .Q(\divider/counter [13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_14_rstpot  (
    .I0(Result[14]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_14_rstpot_180 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_14  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_14_rstpot_180 ),
    .Q(\divider/counter [14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_15_rstpot  (
    .I0(Result[15]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_15_rstpot_181 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_15  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_15_rstpot_181 ),
    .Q(\divider/counter [15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_16_rstpot  (
    .I0(Result[16]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_16_rstpot_182 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_16  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_16_rstpot_182 ),
    .Q(\divider/counter [16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_17_rstpot  (
    .I0(Result[17]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_17_rstpot_183 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_17  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_17_rstpot_183 ),
    .Q(\divider/counter [17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_18_rstpot  (
    .I0(Result[18]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_18_rstpot_184 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_18  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_18_rstpot_184 ),
    .Q(\divider/counter [18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_19_rstpot  (
    .I0(Result[19]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_19_rstpot_185 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_19  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_19_rstpot_185 ),
    .Q(\divider/counter [19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_20_rstpot  (
    .I0(Result[20]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_20_rstpot_186 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_20  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_20_rstpot_186 ),
    .Q(\divider/counter [20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_21_rstpot  (
    .I0(Result[21]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_21_rstpot_187 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_21  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_21_rstpot_187 ),
    .Q(\divider/counter [21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_22_rstpot  (
    .I0(Result[22]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_22_rstpot_188 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_22  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_22_rstpot_188 ),
    .Q(\divider/counter [22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_23_rstpot  (
    .I0(Result[23]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_23_rstpot_189 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_23  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_23_rstpot_189 ),
    .Q(\divider/counter [23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_24_rstpot  (
    .I0(Result[24]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_24_rstpot_190 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_24  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_24_rstpot_190 ),
    .Q(\divider/counter [24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_25_rstpot  (
    .I0(Result[25]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_25_rstpot_191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_25  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_25_rstpot_191 ),
    .Q(\divider/counter [25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_26_rstpot  (
    .I0(Result[26]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_26_rstpot_192 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_26  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_26_rstpot_192 ),
    .Q(\divider/counter [26])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \divider/counter_27_rstpot  (
    .I0(Result[27]),
    .I1(\divider/Mcompar_n0001_cy [5]),
    .O(\divider/counter_27_rstpot_193 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \divider/counter_27  (
    .C(CLK_IN_BUFGP_0),
    .D(\divider/counter_27_rstpot_193 ),
    .Q(\divider/counter [27])
  );
  BUFGP   CLK_IN_BUFGP (
    .I(CLK_IN),
    .O(CLK_IN_BUFGP_0)
  );
  INV   \divider/Mcount_counter_lut<0>_INV_0  (
    .I(\divider/counter [0]),
    .O(\divider/Mcount_counter_lut [0])
  );
  INV   \divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<4>_inv1_INV_0  (
    .I(\divider/Mcompar_counter[27]_GND_2_o_LessThan_5_o_cy<4>_108 ),
    .O(\divider/counter[27]_GND_2_o_LessThan_5_o )
  );
  LD   \dut/out_0_1  (
    .D(\dut/PS_FSM_FFd3_38 ),
    .G(\dut/_n0020 ),
    .Q(\dut/out_0_1_194 )
  );
  LD   \dut/out_0_2  (
    .D(\dut/PS_FSM_FFd3_38 ),
    .G(\dut/_n0020 ),
    .Q(\dut/out_0_2_195 )
  );
  LD   \dut/out_0_3  (
    .D(\dut/PS_FSM_FFd3_38 ),
    .G(\dut/_n0020 ),
    .Q(\dut/out_0_3_196 )
  );
  LD   \dut/out_0_4  (
    .D(\dut/PS_FSM_FFd3_38 ),
    .G(\dut/_n0020 ),
    .Q(\dut/out_0_4_197 )
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

