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
static const char *ng0 = "D:/Uni/DSD/Codes/Serial Parity Detector/ParityDetector/parity_det.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void Always_29_0(char *t0)
{
    char t10[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 2960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3280);
    *((int *)t2) = 1;
    t3 = (t0 + 2992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 2040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB5:    t7 = (t0 + 472);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 1, t8, 32);
    if (t9 == 1)
        goto LAB6;

LAB7:    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 1, t3, 32);
    if (t9 == 1)
        goto LAB8;

LAB9:
LAB11:
LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB12:    goto LAB2;

LAB6:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(32, ng0);
    t7 = (t0 + 1320U);
    t12 = *((char **)t7);
    memset(t11, 0, 8);
    t7 = (t12 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t7) != 0)
        goto LAB16;

LAB17:    t19 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t19);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB18;

LAB19:    t24 = *((unsigned int *)t11);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t19) > 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t11) > 0)
        goto LAB24;

LAB25:    memcpy(t10, t28, 8);

LAB26:    t29 = (t0 + 1880);
    xsi_vlogvar_wait_assign_value(t29, t10, 0, 0, 1, 0LL);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1320U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t13 = *((unsigned int *)t2);
    t14 = (~(t13));
    t15 = *((unsigned int *)t3);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t2) != 0)
        goto LAB29;

LAB30:    t5 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t5);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB31;

LAB32:    t24 = *((unsigned int *)t11);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t5) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t11) > 0)
        goto LAB37;

LAB38:    memcpy(t10, t12, 8);

LAB39:    t7 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t7, t10, 0, 0, 1, 0LL);
    goto LAB12;

LAB8:    xsi_set_current_line(35, ng0);

LAB40:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1320U);
    t4 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t4 + 4);
    t13 = *((unsigned int *)t2);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t2) != 0)
        goto LAB43;

LAB44:    t7 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB45;

LAB46:    t24 = *((unsigned int *)t11);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t7) > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t11) > 0)
        goto LAB51;

LAB52:    memcpy(t10, t12, 8);

LAB53:    t18 = (t0 + 1880);
    xsi_vlogvar_wait_assign_value(t18, t10, 0, 0, 1, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1320U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t13 = *((unsigned int *)t2);
    t14 = (~(t13));
    t15 = *((unsigned int *)t3);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t2) != 0)
        goto LAB56;

LAB57:    t5 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t5);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB58;

LAB59:    t24 = *((unsigned int *)t11);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t5) > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t11) > 0)
        goto LAB64;

LAB65:    memcpy(t10, t12, 8);

LAB66:    t7 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t7, t10, 0, 0, 1, 0LL);
    goto LAB12;

LAB14:    *((unsigned int *)t11) = 1;
    goto LAB17;

LAB16:    t18 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB17;

LAB18:    t23 = ((char*)((ng1)));
    goto LAB19;

LAB20:    t28 = ((char*)((ng2)));
    goto LAB21;

LAB22:    xsi_vlog_unsigned_bit_combine(t10, 32, t23, 32, t28, 32);
    goto LAB26;

LAB24:    memcpy(t10, t23, 8);
    goto LAB26;

LAB27:    *((unsigned int *)t11) = 1;
    goto LAB30;

LAB29:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB30;

LAB31:    t7 = (t0 + 608);
    t8 = *((char **)t7);
    goto LAB32;

LAB33:    t7 = (t0 + 472);
    t12 = *((char **)t7);
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t10, 32, t8, 32, t12, 32);
    goto LAB39;

LAB37:    memcpy(t10, t8, 8);
    goto LAB39;

LAB41:    *((unsigned int *)t11) = 1;
    goto LAB44;

LAB43:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB44;

LAB45:    t8 = ((char*)((ng2)));
    goto LAB46;

LAB47:    t12 = ((char*)((ng1)));
    goto LAB48;

LAB49:    xsi_vlog_unsigned_bit_combine(t10, 32, t8, 32, t12, 32);
    goto LAB53;

LAB51:    memcpy(t10, t8, 8);
    goto LAB53;

LAB54:    *((unsigned int *)t11) = 1;
    goto LAB57;

LAB56:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB57;

LAB58:    t7 = (t0 + 472);
    t8 = *((char **)t7);
    goto LAB59;

LAB60:    t7 = (t0 + 608);
    t12 = *((char **)t7);
    goto LAB61;

LAB62:    xsi_vlog_unsigned_bit_combine(t10, 32, t8, 32, t12, 32);
    goto LAB66;

LAB64:    memcpy(t10, t8, 8);
    goto LAB66;

}


extern void work_m_00000000003314767941_2903213259_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000003314767941_2903213259", "isim/tst_parity_det_isim_beh.exe.sim/work/m_00000000003314767941_2903213259.didat");
	xsi_register_executes(pe);
}
