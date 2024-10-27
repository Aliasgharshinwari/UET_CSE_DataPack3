/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Uni/DSD/Codes/Serial Parity Detector/ParityDetector/testbench.v";
static int ng1[] = {0, 0};
static int ng2[] = {10, 0};



static void Initial_29_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);

LAB4:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(32, ng0);

LAB6:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB7:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t7) == 0)
        goto LAB8;

LAB10:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB11:    t14 = (t4 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t4) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB13;

LAB12:    t22 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1608);
    xsi_vlogvar_assign_value(t24, t4, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 3000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB13:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t4) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB12;

LAB14:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t7) == 0)
        goto LAB15;

LAB17:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB18:    t14 = (t4 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t4) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB20;

LAB19:    t22 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1608);
    xsi_vlogvar_assign_value(t24, t4, 0, 0, 1);
    goto LAB5;

LAB15:    *((unsigned int *)t4) = 1;
    goto LAB18;

LAB20:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t4) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB19;

LAB21:    goto LAB1;

}

static void Initial_38_1(char *t0)
{
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4636);
    *((int *)t8) = t7;

LAB4:    t9 = (t0 + 4636);
    if (*((int *)t9) > 0)
        goto LAB5;

LAB6:
LAB1:    return;
LAB5:    xsi_set_current_line(39, ng0);
    t10 = (t0 + 3096);
    *((int *)t10) = 1;
    t11 = (t0 + 2808);
    *((char **)t11) = t10;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(40, ng0);
    *((int *)t12) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t13 = (t12 + 4);
    *((int *)t13) = 0;
    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t12, 0, 0, 1);
    t2 = (t0 + 4636);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB4;

}


extern void work_m_00000000003128231203_1229324031_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Initial_38_1};
	xsi_register_didat("work_m_00000000003128231203_1229324031", "isim/tst_parity_det_isim_beh.exe.sim/work/m_00000000003128231203_1229324031.didat");
	xsi_register_executes(pe);
}
