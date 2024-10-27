////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: topm_synthesis.v
// /___/   /\     Timestamp: Tue Mar 26 19:22:19 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim topm.ngc topm_synthesis.v 
// Device	: xc6slx4-3-tqg144
// Input file	: topm.ngc
// Output file	: D:\Uni\DSD - Lab\SAP\SAP-1\netgen\synthesis\topm_synthesis.v
// # of Modules	: 1
// Design Name	: topm
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

module topm (
  CLK, CLR, out
);
  input CLK;
  input CLR;
  output [7 : 0] out;
  wire CLK_BUFGP_0;
  wire CLR_IBUF_1;
  wire \con_word[11] ;
  wire \con_word[10] ;
  wire \con_word[8] ;
  wire \con_word[7] ;
  wire \con_word[6] ;
  wire \con_word[3] ;
  wire \con_word[2] ;
  wire \con_word[4] ;
  wire \my_ir/ir_val[5] ;
  wire \my_ir/ir_val[4] ;
  wire \my_ir/ir_val[3] ;
  wire \my_ir/ir_val[2] ;
  wire \my_ir/ir_val[1] ;
  wire \my_ir/ir_val[0] ;
  wire \my_reg_b/reg_out[7] ;
  wire \my_reg_b/reg_out[5] ;
  wire \my_reg_b/reg_out[4] ;
  wire \my_reg_b/reg_out[3] ;
  wire \my_reg_b/reg_out[2] ;
  wire \my_reg_b/reg_out[1] ;
  wire \my_reg_b/reg_out[0] ;
  wire \decoder/O_6_51 ;
  wire \decoder/O_5_52 ;
  wire \decoder/O_4_53 ;
  wire \decoder/O_3_54 ;
  wire \decoder/O_2_55 ;
  wire \decoder/O_1_56 ;
  wire \decoder/O_0_57 ;
  wire out_7_OBUF_66;
  wire \my_mar/Lm_inv_67 ;
  wire CLK_inv;
  wire Mmux_bus81_92;
  wire \my_cu/con_word<9>1 ;
  wire \my_cu/con_word<2>1 ;
  wire \my_ir/ir_val[7] ;
  wire \my_ir/Li_inv ;
  wire \my_ir/_n0010 ;
  wire \my_ac/La_inv_104 ;
  wire \my_reg_b/Lb_inv_105 ;
  wire \decoder/_n0208[2] ;
  wire \decoder/_n0208[0] ;
  wire \decoder/_n0072 ;
  wire \decoder/_n0052 ;
  wire \decoder/_n0094 ;
  wire \decoder/_n0182 ;
  wire \decoder/_n0116 ;
  wire \decoder/_n0374 ;
  wire N01;
  wire Mmux_bus8;
  wire Mmux_bus82_116;
  wire N2;
  wire N4;
  wire Mmux_bus6;
  wire Mmux_bus61_120;
  wire N6;
  wire Mmux_bus2;
  wire Mmux_bus21_123;
  wire Mmux_bus4;
  wire Mmux_bus41_125;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire N20;
  wire \my_cu/count_0_glue_set ;
  wire N22;
  wire N30;
  wire N32;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire [3 : 0] \my_mar/mar_out ;
  wire [7 : 0] \my_ac/acc_val ;
  wire [7 : 0] \my_output_register/o_val ;
  wire [7 : 0] ALU_out;
  wire [7 : 0] bus;
  wire [3 : 0] Result;
  wire [3 : 0] \my_pc/value ;
  wire [7 : 0] \my_alu/Maddsub_Out_lut ;
  wire [6 : 0] \my_alu/Maddsub_Out_cy ;
  wire [5 : 0] \my_cu/count ;
  GND   XST_GND (
    .G(out_7_OBUF_66)
  );
  FDE   \my_mar/mar_out_3  (
    .C(CLK_BUFGP_0),
    .CE(\my_mar/Lm_inv_67 ),
    .D(bus[3]),
    .Q(\my_mar/mar_out [3])
  );
  FDE   \my_mar/mar_out_2  (
    .C(CLK_BUFGP_0),
    .CE(\my_mar/Lm_inv_67 ),
    .D(bus[2]),
    .Q(\my_mar/mar_out [2])
  );
  FDE   \my_mar/mar_out_1  (
    .C(CLK_BUFGP_0),
    .CE(\my_mar/Lm_inv_67 ),
    .D(bus[1]),
    .Q(\my_mar/mar_out [1])
  );
  FDE   \my_mar/mar_out_0  (
    .C(CLK_BUFGP_0),
    .CE(\my_mar/Lm_inv_67 ),
    .D(bus[0]),
    .Q(\my_mar/mar_out [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \my_pc/value_0  (
    .C(CLK_inv),
    .CE(\con_word[11] ),
    .D(Result[0]),
    .R(CLR_IBUF_1),
    .Q(\my_pc/value [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \my_pc/value_1  (
    .C(CLK_inv),
    .CE(\con_word[11] ),
    .D(Result[1]),
    .R(CLR_IBUF_1),
    .Q(\my_pc/value [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \my_pc/value_2  (
    .C(CLK_inv),
    .CE(\con_word[11] ),
    .D(Result[2]),
    .R(CLR_IBUF_1),
    .Q(\my_pc/value [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \my_pc/value_3  (
    .C(CLK_inv),
    .CE(\con_word[11] ),
    .D(Result[3]),
    .R(CLR_IBUF_1),
    .Q(\my_pc/value [3])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<0>  (
    .CI(\con_word[3] ),
    .DI(\my_ac/acc_val [0]),
    .S(\my_alu/Maddsub_Out_lut [0]),
    .O(\my_alu/Maddsub_Out_cy [0])
  );
  XORCY   \my_alu/Maddsub_Out_xor<0>  (
    .CI(\con_word[3] ),
    .LI(\my_alu/Maddsub_Out_lut [0]),
    .O(ALU_out[0])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<1>  (
    .CI(\my_alu/Maddsub_Out_cy [0]),
    .DI(\my_ac/acc_val [1]),
    .S(\my_alu/Maddsub_Out_lut [1]),
    .O(\my_alu/Maddsub_Out_cy [1])
  );
  XORCY   \my_alu/Maddsub_Out_xor<1>  (
    .CI(\my_alu/Maddsub_Out_cy [0]),
    .LI(\my_alu/Maddsub_Out_lut [1]),
    .O(ALU_out[1])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<2>  (
    .CI(\my_alu/Maddsub_Out_cy [1]),
    .DI(\my_ac/acc_val [2]),
    .S(\my_alu/Maddsub_Out_lut [2]),
    .O(\my_alu/Maddsub_Out_cy [2])
  );
  XORCY   \my_alu/Maddsub_Out_xor<2>  (
    .CI(\my_alu/Maddsub_Out_cy [1]),
    .LI(\my_alu/Maddsub_Out_lut [2]),
    .O(ALU_out[2])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<3>  (
    .CI(\my_alu/Maddsub_Out_cy [2]),
    .DI(\my_ac/acc_val [3]),
    .S(\my_alu/Maddsub_Out_lut [3]),
    .O(\my_alu/Maddsub_Out_cy [3])
  );
  XORCY   \my_alu/Maddsub_Out_xor<3>  (
    .CI(\my_alu/Maddsub_Out_cy [2]),
    .LI(\my_alu/Maddsub_Out_lut [3]),
    .O(ALU_out[3])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<4>  (
    .CI(\my_alu/Maddsub_Out_cy [3]),
    .DI(\my_ac/acc_val [4]),
    .S(\my_alu/Maddsub_Out_lut [4]),
    .O(\my_alu/Maddsub_Out_cy [4])
  );
  XORCY   \my_alu/Maddsub_Out_xor<4>  (
    .CI(\my_alu/Maddsub_Out_cy [3]),
    .LI(\my_alu/Maddsub_Out_lut [4]),
    .O(ALU_out[4])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<5>  (
    .CI(\my_alu/Maddsub_Out_cy [4]),
    .DI(\my_ac/acc_val [5]),
    .S(\my_alu/Maddsub_Out_lut [5]),
    .O(\my_alu/Maddsub_Out_cy [5])
  );
  XORCY   \my_alu/Maddsub_Out_xor<5>  (
    .CI(\my_alu/Maddsub_Out_cy [4]),
    .LI(\my_alu/Maddsub_Out_lut [5]),
    .O(ALU_out[5])
  );
  MUXCY   \my_alu/Maddsub_Out_cy<6>  (
    .CI(\my_alu/Maddsub_Out_cy [5]),
    .DI(\my_ac/acc_val [6]),
    .S(\my_alu/Maddsub_Out_lut [6]),
    .O(\my_alu/Maddsub_Out_cy [6])
  );
  XORCY   \my_alu/Maddsub_Out_xor<6>  (
    .CI(\my_alu/Maddsub_Out_cy [5]),
    .LI(\my_alu/Maddsub_Out_lut [6]),
    .O(ALU_out[6])
  );
  XORCY   \my_alu/Maddsub_Out_xor<7>  (
    .CI(\my_alu/Maddsub_Out_cy [6]),
    .LI(\my_alu/Maddsub_Out_lut [7]),
    .O(ALU_out[7])
  );
  FDR_1 #(
    .INIT ( 1'b0 ))
  \my_cu/count_5  (
    .C(CLK_BUFGP_0),
    .D(\my_cu/count [4]),
    .R(\my_cu/count_0_glue_set ),
    .Q(\my_cu/count [5])
  );
  FDR_1 #(
    .INIT ( 1'b0 ))
  \my_cu/count_4  (
    .C(CLK_BUFGP_0),
    .D(\my_cu/count [3]),
    .R(\my_cu/count_0_glue_set ),
    .Q(\my_cu/count [4])
  );
  FDR_1 #(
    .INIT ( 1'b0 ))
  \my_cu/count_3  (
    .C(CLK_BUFGP_0),
    .D(\my_cu/count [2]),
    .R(\my_cu/count_0_glue_set ),
    .Q(\my_cu/count [3])
  );
  FDR_1 #(
    .INIT ( 1'b0 ))
  \my_cu/count_2  (
    .C(CLK_BUFGP_0),
    .D(\my_cu/count [1]),
    .R(\my_cu/count_0_glue_set ),
    .Q(\my_cu/count [2])
  );
  FDR_1 #(
    .INIT ( 1'b0 ))
  \my_cu/count_1  (
    .C(CLK_BUFGP_0),
    .D(\my_cu/count [0]),
    .R(\my_cu/count_0_glue_set ),
    .Q(\my_cu/count [1])
  );
  FDRE   \my_ir/ir_val_7  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[7]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[7] )
  );
  FDRE   \my_ir/ir_val_5  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[5]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[5] )
  );
  FDRE   \my_ir/ir_val_4  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[4]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[4] )
  );
  FDRE   \my_ir/ir_val_3  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[3]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[3] )
  );
  FDRE   \my_ir/ir_val_2  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[2]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[2] )
  );
  FDRE   \my_ir/ir_val_1  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[1]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[1] )
  );
  FDRE   \my_ir/ir_val_0  (
    .C(CLK_BUFGP_0),
    .CE(\my_ir/Li_inv ),
    .D(bus[0]),
    .R(\my_ir/_n0010 ),
    .Q(\my_ir/ir_val[0] )
  );
  FDE   \my_ac/acc_val_7  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[7]),
    .Q(\my_ac/acc_val [7])
  );
  FDE   \my_ac/acc_val_6  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[6]),
    .Q(\my_ac/acc_val [6])
  );
  FDE   \my_ac/acc_val_5  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[5]),
    .Q(\my_ac/acc_val [5])
  );
  FDE   \my_ac/acc_val_4  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[4]),
    .Q(\my_ac/acc_val [4])
  );
  FDE   \my_ac/acc_val_3  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[3]),
    .Q(\my_ac/acc_val [3])
  );
  FDE   \my_ac/acc_val_2  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[2]),
    .Q(\my_ac/acc_val [2])
  );
  FDE   \my_ac/acc_val_1  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[1]),
    .Q(\my_ac/acc_val [1])
  );
  FDE   \my_ac/acc_val_0  (
    .C(CLK_BUFGP_0),
    .CE(\my_ac/La_inv_104 ),
    .D(bus[0]),
    .Q(\my_ac/acc_val [0])
  );
  FDE   \my_reg_b/reg_out_7  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[7]),
    .Q(\my_reg_b/reg_out[7] )
  );
  FDE   \my_reg_b/reg_out_5  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[5]),
    .Q(\my_reg_b/reg_out[5] )
  );
  FDE   \my_reg_b/reg_out_4  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[4]),
    .Q(\my_reg_b/reg_out[4] )
  );
  FDE   \my_reg_b/reg_out_3  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[3]),
    .Q(\my_reg_b/reg_out[3] )
  );
  FDE   \my_reg_b/reg_out_2  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[2]),
    .Q(\my_reg_b/reg_out[2] )
  );
  FDE   \my_reg_b/reg_out_1  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[1]),
    .Q(\my_reg_b/reg_out[1] )
  );
  FDE   \my_reg_b/reg_out_0  (
    .C(CLK_BUFGP_0),
    .CE(\my_reg_b/Lb_inv_105 ),
    .D(bus[0]),
    .Q(\my_reg_b/reg_out[0] )
  );
  FDE   \my_output_register/o_val_7  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[7]),
    .Q(\my_output_register/o_val [7])
  );
  FDE   \my_output_register/o_val_6  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[6]),
    .Q(\my_output_register/o_val [6])
  );
  FDE   \my_output_register/o_val_5  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[5]),
    .Q(\my_output_register/o_val [5])
  );
  FDE   \my_output_register/o_val_4  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[4]),
    .Q(\my_output_register/o_val [4])
  );
  FDE   \my_output_register/o_val_3  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[3]),
    .Q(\my_output_register/o_val [3])
  );
  FDE   \my_output_register/o_val_2  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[2]),
    .Q(\my_output_register/o_val [2])
  );
  FDE   \my_output_register/o_val_1  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[1]),
    .Q(\my_output_register/o_val [1])
  );
  FDE   \my_output_register/o_val_0  (
    .C(CLK_BUFGP_0),
    .CE(\con_word[4] ),
    .D(bus[0]),
    .Q(\my_output_register/o_val [0])
  );
  LD   \decoder/O_3  (
    .D(\decoder/_n0116 ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_3_54 )
  );
  LD   \decoder/O_0  (
    .D(\decoder/_n0182 ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_0_57 )
  );
  LD   \decoder/O_4  (
    .D(\decoder/_n0094 ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_4_53 )
  );
  LD   \decoder/O_5  (
    .D(\decoder/_n0072 ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_5_52 )
  );
  LD   \decoder/O_1  (
    .D(\decoder/_n0208[2] ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_1_56 )
  );
  LD   \decoder/O_2  (
    .D(\decoder/_n0374 ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_2_55 )
  );
  LD   \decoder/O_6  (
    .D(\decoder/_n0208[0] ),
    .G(\decoder/_n0052 ),
    .Q(\decoder/O_6_51 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \my_pc/Mcount_value_xor<1>11  (
    .I0(\my_pc/value [1]),
    .I1(\my_pc/value [0]),
    .O(Result[1])
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  Mmux_bus811 (
    .I0(\con_word[8] ),
    .I1(\my_mar/mar_out [3]),
    .I2(\con_word[4] ),
    .I3(\con_word[6] ),
    .I4(\con_word[2] ),
    .O(Mmux_bus81_92)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \my_pc/Mcount_value_xor<3>11  (
    .I0(\my_pc/value [3]),
    .I1(\my_pc/value [0]),
    .I2(\my_pc/value [1]),
    .I3(\my_pc/value [2]),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \my_pc/Mcount_value_xor<2>11  (
    .I0(\my_pc/value [2]),
    .I1(\my_pc/value [0]),
    .I2(\my_pc/value [1]),
    .O(Result[2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  \my_cu/con_word<7>1  (
    .I0(\my_cu/count [2]),
    .I1(\my_cu/count [1]),
    .I2(\my_cu/count [3]),
    .I3(\my_cu/count [4]),
    .I4(\my_cu/count [5]),
    .I5(\my_cu/count [0]),
    .O(\con_word[7] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \my_cu/con_word<6>1  (
    .I0(\my_cu/count [0]),
    .I1(\my_cu/count [1]),
    .I2(\my_cu/count [2]),
    .I3(\my_cu/count [4]),
    .I4(\my_cu/count [5]),
    .I5(\my_cu/con_word<9>1 ),
    .O(\con_word[6] )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \my_cu/count[5]_GND_11_o_equal_29_o<5>1  (
    .I0(\my_cu/count [1]),
    .I1(\my_cu/count [3]),
    .I2(\my_cu/count [5]),
    .I3(\my_cu/count [4]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/count [2]),
    .O(\con_word[11] )
  );
  LUT6 #(
    .INIT ( 64'h0000060000000000 ))
  \my_cu/con_word<2>2  (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_ir/ir_val[7] ),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\con_word[2] )
  );
  LUT4 #(
    .INIT ( 16'hEAFF ))
  \my_cu/con_word<9>11  (
    .I0(\my_ir/ir_val[7] ),
    .I1(\my_ir/ir_val[5] ),
    .I2(\my_ir/ir_val[4] ),
    .I3(\my_cu/count [3]),
    .O(\my_cu/con_word<9>1 )
  );
  LUT6 #(
    .INIT ( 64'h0000040000000000 ))
  \my_cu/con_word<3>1  (
    .I0(\my_ir/ir_val[7] ),
    .I1(\my_ir/ir_val[5] ),
    .I2(\my_ir/ir_val[4] ),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\con_word[3] )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \my_cu/con_word<2>11  (
    .I0(\my_cu/count [2]),
    .I1(\my_cu/count [1]),
    .I2(\my_cu/count [3]),
    .I3(\my_cu/count [4]),
    .O(\my_cu/con_word<2>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \my_ir/_n00101  (
    .I0(CLR_IBUF_1),
    .I1(\con_word[7] ),
    .O(\my_ir/_n0010 )
  );
  LUT4 #(
    .INIT ( 16'h4101 ))
  \decoder/_n0208<0>1  (
    .I0(\my_output_register/o_val [3]),
    .I1(\my_output_register/o_val [1]),
    .I2(\my_output_register/o_val [2]),
    .I3(\my_output_register/o_val [0]),
    .O(\decoder/_n0208[0] )
  );
  LUT4 #(
    .INIT ( 16'h0110 ))
  \decoder/Mmux__n0116111  (
    .I0(\my_output_register/o_val [1]),
    .I1(\my_output_register/o_val [3]),
    .I2(\my_output_register/o_val [0]),
    .I3(\my_output_register/o_val [2]),
    .O(\decoder/_n0182 )
  );
  LUT4 #(
    .INIT ( 16'h4104 ))
  \decoder/Mmux__n011611  (
    .I0(\my_output_register/o_val [3]),
    .I1(\my_output_register/o_val [0]),
    .I2(\my_output_register/o_val [1]),
    .I3(\my_output_register/o_val [2]),
    .O(\decoder/_n0116 )
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \decoder/Mmux__n009411  (
    .I0(\my_output_register/o_val [0]),
    .I1(\my_output_register/o_val [1]),
    .I2(\my_output_register/o_val [2]),
    .I3(\my_output_register/o_val [3]),
    .O(\decoder/_n0094 )
  );
  LUT4 #(
    .INIT ( 16'h4054 ))
  \decoder/Mmux__n007211  (
    .I0(\my_output_register/o_val [3]),
    .I1(\my_output_register/o_val [0]),
    .I2(\my_output_register/o_val [1]),
    .I3(\my_output_register/o_val [2]),
    .O(\decoder/_n0072 )
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \decoder/_n0208<2>1  (
    .I0(\my_output_register/o_val [2]),
    .I1(\my_output_register/o_val [3]),
    .I2(\my_output_register/o_val [0]),
    .I3(\my_output_register/o_val [1]),
    .O(\decoder/_n0208[2] )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \decoder/_n0374<3>1  (
    .I0(\my_output_register/o_val [3]),
    .I1(\my_output_register/o_val [2]),
    .I2(\my_output_register/o_val [1]),
    .I3(\my_output_register/o_val [0]),
    .O(\decoder/_n0374 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \my_mar/Lm_inv_SW0  (
    .I0(\my_cu/count [1]),
    .I1(\my_cu/count [2]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0001000000010101 ))
  \my_mar/Lm_inv  (
    .I0(\my_cu/count [5]),
    .I1(\my_cu/count [4]),
    .I2(N01),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<9>1 ),
    .O(\my_mar/Lm_inv_67 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAC0AA00 ))
  Mmux_bus81 (
    .I0(\my_ac/acc_val [3]),
    .I1(\my_pc/value [3]),
    .I2(\con_word[10] ),
    .I3(\con_word[4] ),
    .I4(\con_word[8] ),
    .I5(\con_word[2] ),
    .O(Mmux_bus8)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEFEFEF2F2F2 ))
  Mmux_bus83 (
    .I0(\my_ir/ir_val[3] ),
    .I1(\con_word[6] ),
    .I2(Mmux_bus82_116),
    .I3(\con_word[2] ),
    .I4(ALU_out[3]),
    .I5(Mmux_bus8),
    .O(bus[3])
  );
  LUT6 #(
    .INIT ( 64'hEEEAAAEACCC000C0 ))
  Mmux_bus12 (
    .I0(\my_mar/mar_out [2]),
    .I1(\con_word[6] ),
    .I2(N2),
    .I3(\con_word[2] ),
    .I4(ALU_out[7]),
    .I5(Mmux_bus81_92),
    .O(bus[7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFA820A820A820 ))
  Mmux_bus11 (
    .I0(\con_word[6] ),
    .I1(\con_word[2] ),
    .I2(N4),
    .I3(ALU_out[6]),
    .I4(\my_mar/mar_out [2]),
    .I5(Mmux_bus81_92),
    .O(bus[6])
  );
  LUT4 #(
    .INIT ( 16'hAA48 ))
  Mmux_bus61 (
    .I0(\my_mar/mar_out [3]),
    .I1(\my_mar/mar_out [1]),
    .I2(\my_mar/mar_out [0]),
    .I3(\my_mar/mar_out [2]),
    .O(Mmux_bus6)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAF000CCCC ))
  Mmux_bus62 (
    .I0(\my_ac/acc_val [2]),
    .I1(Mmux_bus6),
    .I2(\my_pc/value [2]),
    .I3(\con_word[10] ),
    .I4(\con_word[8] ),
    .I5(\con_word[4] ),
    .O(Mmux_bus61_120)
  );
  LUT5 #(
    .INIT ( 32'hEEE22E22 ))
  Mmux_bus63 (
    .I0(\my_ir/ir_val[2] ),
    .I1(\con_word[6] ),
    .I2(\con_word[2] ),
    .I3(Mmux_bus61_120),
    .I4(ALU_out[2]),
    .O(bus[2])
  );
  LUT6 #(
    .INIT ( 64'hFFF0FF80FF00FF80 ))
  Mmux_bus9 (
    .I0(\my_ac/acc_val [4]),
    .I1(\con_word[4] ),
    .I2(\con_word[6] ),
    .I3(N6),
    .I4(\con_word[2] ),
    .I5(ALU_out[4]),
    .O(bus[4])
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  Mmux_bus21 (
    .I0(\my_mar/mar_out [0]),
    .I1(\my_mar/mar_out [2]),
    .I2(\my_mar/mar_out [3]),
    .O(Mmux_bus2)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAF000CCCC ))
  Mmux_bus22 (
    .I0(\my_ac/acc_val [0]),
    .I1(Mmux_bus2),
    .I2(\my_pc/value [0]),
    .I3(\con_word[10] ),
    .I4(\con_word[8] ),
    .I5(\con_word[4] ),
    .O(Mmux_bus21_123)
  );
  LUT5 #(
    .INIT ( 32'hE2EEE222 ))
  Mmux_bus23 (
    .I0(\my_ir/ir_val[0] ),
    .I1(\con_word[6] ),
    .I2(ALU_out[0]),
    .I3(\con_word[2] ),
    .I4(Mmux_bus21_123),
    .O(bus[0])
  );
  LUT4 #(
    .INIT ( 16'hAA94 ))
  Mmux_bus41 (
    .I0(\my_mar/mar_out [3]),
    .I1(\my_mar/mar_out [1]),
    .I2(\my_mar/mar_out [0]),
    .I3(\my_mar/mar_out [2]),
    .O(Mmux_bus4)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAF000CCCC ))
  Mmux_bus42 (
    .I0(\my_ac/acc_val [1]),
    .I1(Mmux_bus4),
    .I2(\my_pc/value [1]),
    .I3(\con_word[10] ),
    .I4(\con_word[8] ),
    .I5(\con_word[4] ),
    .O(Mmux_bus41_125)
  );
  LUT5 #(
    .INIT ( 32'hEEE22E22 ))
  Mmux_bus43 (
    .I0(\my_ir/ir_val[1] ),
    .I1(\con_word[6] ),
    .I2(\con_word[2] ),
    .I3(Mmux_bus41_125),
    .I4(ALU_out[1]),
    .O(bus[1])
  );
  LUT6 #(
    .INIT ( 64'hFFF0FF80FF00FF80 ))
  Mmux_bus10 (
    .I0(\my_ac/acc_val [5]),
    .I1(\con_word[4] ),
    .I2(\con_word[6] ),
    .I3(N8),
    .I4(\con_word[2] ),
    .I5(ALU_out[5]),
    .O(bus[5])
  );
  LUT5 #(
    .INIT ( 32'hFFEA00FF ))
  \my_cu/con_word<8>_SW0  (
    .I0(\my_ir/ir_val[7] ),
    .I1(\my_ir/ir_val[5] ),
    .I2(\my_ir/ir_val[4] ),
    .I3(\my_cu/count [2]),
    .I4(\my_cu/count [4]),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \my_cu/con_word<8>  (
    .I0(\my_cu/count [5]),
    .I1(\my_cu/count [3]),
    .I2(\my_cu/count [1]),
    .I3(\my_cu/count [0]),
    .I4(N10),
    .O(\con_word[8] )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \my_cu/con_word<4>_SW0  (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_ir/ir_val[7] ),
    .I3(\my_cu/count [2]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \my_cu/con_word<4>  (
    .I0(\my_cu/count [3]),
    .I1(\my_cu/count [5]),
    .I2(\my_cu/count [4]),
    .I3(\my_cu/count [1]),
    .I4(\my_cu/count [0]),
    .I5(N12),
    .O(\con_word[4] )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \my_ac/La_inv_SW0  (
    .I0(\my_ir/ir_val[7] ),
    .I1(\my_cu/count [2]),
    .I2(\my_cu/count [1]),
    .I3(\my_cu/count [0]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0000000000060010 ))
  \my_ac/La_inv  (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_cu/count [4]),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [5]),
    .I5(N14),
    .O(\my_ac/La_inv_104 )
  );
  LUT4 #(
    .INIT ( 16'hFFF9 ))
  \my_reg_b/Lb_inv_SW0  (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_cu/count [2]),
    .I3(\my_ir/ir_val[7] ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \my_reg_b/Lb_inv  (
    .I0(\my_cu/count [4]),
    .I1(\my_cu/count [5]),
    .I2(\my_cu/count [3]),
    .I3(\my_cu/count [1]),
    .I4(\my_cu/count [0]),
    .I5(N16),
    .O(\my_reg_b/Lb_inv_105 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \decoder/out_SW0  (
    .I0(\my_output_register/o_val [2]),
    .I1(\my_output_register/o_val [1]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h0000000100010001 ))
  \decoder/out  (
    .I0(\my_output_register/o_val [7]),
    .I1(\my_output_register/o_val [6]),
    .I2(\my_output_register/o_val [5]),
    .I3(\my_output_register/o_val [4]),
    .I4(\my_output_register/o_val [3]),
    .I5(N20),
    .O(\decoder/_n0052 )
  );
  IBUF   CLR_IBUF (
    .I(CLR),
    .O(CLR_IBUF_1)
  );
  OBUF   out_7_OBUF (
    .I(out_7_OBUF_66),
    .O(out[7])
  );
  OBUF   out_6_OBUF (
    .I(\decoder/O_6_51 ),
    .O(out[6])
  );
  OBUF   out_5_OBUF (
    .I(\decoder/O_5_52 ),
    .O(out[5])
  );
  OBUF   out_4_OBUF (
    .I(\decoder/O_4_53 ),
    .O(out[4])
  );
  OBUF   out_3_OBUF (
    .I(\decoder/O_3_54 ),
    .O(out[3])
  );
  OBUF   out_2_OBUF (
    .I(\decoder/O_2_55 ),
    .O(out[2])
  );
  OBUF   out_1_OBUF (
    .I(\decoder/O_1_56 ),
    .O(out[1])
  );
  OBUF   out_0_OBUF (
    .I(\decoder/O_0_57 ),
    .O(out[0])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \my_cu/count_0  (
    .C(CLK_BUFGP_0),
    .D(\my_cu/count_0_glue_set ),
    .Q(\my_cu/count [0])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \my_cu/con_word<3>1_SW0  (
    .I0(\my_ir/ir_val[7] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_ir/ir_val[5] ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<0>  (
    .I0(\my_reg_b/reg_out[0] ),
    .I1(\my_ac/acc_val [0]),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<1>  (
    .I0(\my_reg_b/reg_out[1] ),
    .I1(\my_ac/acc_val [1]),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<2>  (
    .I0(\my_reg_b/reg_out[2] ),
    .I1(\my_ac/acc_val [2]),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<3>  (
    .I0(\my_reg_b/reg_out[3] ),
    .I1(\my_ac/acc_val [3]),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h63 ))
  Mmux_bus811_SW0 (
    .I0(\my_mar/mar_out [2]),
    .I1(\my_mar/mar_out [0]),
    .I2(\my_mar/mar_out [1]),
    .O(N30)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  Mmux_bus811_SW1 (
    .I0(\my_mar/mar_out [2]),
    .I1(\my_mar/mar_out [1]),
    .I2(\my_mar/mar_out [0]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<4>  (
    .I0(\my_reg_b/reg_out[4] ),
    .I1(\my_ac/acc_val [4]),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<5>  (
    .I0(\my_reg_b/reg_out[5] ),
    .I1(\my_ac/acc_val [5]),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<6>  (
    .I0(\my_ac/acc_val [6]),
    .I1(\my_reg_b/reg_out[7] ),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \my_cu/count[5]_GND_11_o_equal_28_o<5>1  (
    .I0(\my_cu/count [2]),
    .I1(\my_cu/count [1]),
    .I2(\my_cu/count [3]),
    .I3(\my_cu/count [4]),
    .I4(\my_cu/count [5]),
    .I5(\my_cu/count [0]),
    .O(\con_word[10] )
  );
  LUT6 #(
    .INIT ( 64'h6666966666666666 ))
  \my_alu/Maddsub_Out_lut<7>  (
    .I0(\my_ac/acc_val [7]),
    .I1(\my_reg_b/reg_out[7] ),
    .I2(N22),
    .I3(\my_cu/count [5]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/con_word<2>1 ),
    .O(\my_alu/Maddsub_Out_lut [7])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \my_cu/con_word<4>_SW1  (
    .I0(\my_ac/acc_val [7]),
    .I1(\my_cu/count [0]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000010 ))
  Mmux_bus12_SW0 (
    .I0(\my_cu/count [1]),
    .I1(\my_cu/count [4]),
    .I2(\my_cu/count [3]),
    .I3(\my_cu/count [5]),
    .I4(N12),
    .I5(N42),
    .O(N2)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \my_cu/con_word<4>_SW2  (
    .I0(\my_ac/acc_val [6]),
    .I1(\my_cu/count [0]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000010 ))
  Mmux_bus11_SW0 (
    .I0(\my_cu/count [1]),
    .I1(\my_cu/count [4]),
    .I2(\my_cu/count [3]),
    .I3(\my_cu/count [5]),
    .I4(N12),
    .I5(N44),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_bus82_SW0 (
    .I0(\my_mar/mar_out [3]),
    .I1(\my_mar/mar_out [2]),
    .I2(\my_cu/count [1]),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [5]),
    .I5(\my_cu/count [0]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_bus9_SW0_SW0 (
    .I0(\my_mar/mar_out [3]),
    .I1(N30),
    .I2(\my_cu/count [1]),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [5]),
    .I5(\my_cu/count [0]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_bus10_SW0_SW0 (
    .I0(\my_mar/mar_out [3]),
    .I1(N32),
    .I2(\my_cu/count [1]),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [5]),
    .I5(\my_cu/count [0]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \my_ir/Li_inv1  (
    .I0(\my_cu/count [2]),
    .I1(\my_cu/count [5]),
    .I2(\my_cu/count [4]),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [0]),
    .I5(\my_cu/count [1]),
    .O(\my_ir/Li_inv )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \my_cu/count[5]_GND_11_o_equal_2_o<5>1  (
    .I0(\my_cu/count [0]),
    .I1(\my_cu/count [5]),
    .I2(\my_cu/count [4]),
    .I3(\my_cu/count [3]),
    .I4(\my_cu/count [1]),
    .I5(\my_cu/count [2]),
    .O(\my_cu/count_0_glue_set )
  );
  LUT6 #(
    .INIT ( 64'h000000000007FF00 ))
  Mmux_bus82 (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_ir/ir_val[7] ),
    .I3(\my_cu/count [2]),
    .I4(\my_cu/count [4]),
    .I5(N46),
    .O(Mmux_bus82_116)
  );
  LUT6 #(
    .INIT ( 64'h000000000007FF00 ))
  Mmux_bus9_SW0 (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_ir/ir_val[7] ),
    .I3(\my_cu/count [2]),
    .I4(\my_cu/count [4]),
    .I5(N48),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h000000000007FF00 ))
  Mmux_bus10_SW0 (
    .I0(\my_ir/ir_val[5] ),
    .I1(\my_ir/ir_val[4] ),
    .I2(\my_ir/ir_val[7] ),
    .I3(\my_cu/count [2]),
    .I4(\my_cu/count [4]),
    .I5(N50),
    .O(N8)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_0)
  );
  INV   CLK_inv1_INV_0 (
    .I(CLK_BUFGP_0),
    .O(CLK_inv)
  );
  INV   \my_pc/Mcount_value_xor<0>11_INV_0  (
    .I(\my_pc/value [0]),
    .O(Result[0])
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

