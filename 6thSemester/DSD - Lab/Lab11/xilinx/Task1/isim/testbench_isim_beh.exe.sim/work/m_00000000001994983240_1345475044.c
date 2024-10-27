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
static const char *ng0 = "D:/Uni/DSD - Lab/Lab11/xilinx/Task1/multiplier.v";
static int ng1[] = {0, 0};
static int ng2[] = {4, 0};
static int ng3[] = {1, 0};



static void Always_34_0(char *t0)
{
    char t4[8];
    char t32[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(41, ng0);

LAB24:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB28;

LAB25:    if (t19 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t4) = 1;

LAB28:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB29;

LAB30:
LAB31:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB34;

LAB33:    t13 = (t6 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB34;

LAB37:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB35;

LAB36:    t23 = (t4 + 4);
    t7 = *((unsigned int *)t23);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB38;

LAB39:
LAB40:
LAB14:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB49;

LAB46:    if (t19 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t4) = 1;

LAB49:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB50;

LAB51:
LAB52:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(35, ng0);

LAB15:    xsi_set_current_line(36, ng0);
    t29 = (t0 + 1208U);
    t30 = *((char **)t29);
    t29 = (t0 + 2408);
    xsi_vlogvar_assign_value(t29, t30, 0, 0, 4);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB17;

LAB16:    t13 = (t6 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t5) > *((unsigned int *)t6))
        goto LAB18;

LAB19:    t23 = (t4 + 4);
    t7 = *((unsigned int *)t23);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB21;

LAB22:
LAB23:    goto LAB14;

LAB17:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB19;

LAB18:    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB21:    xsi_set_current_line(38, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 2568);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 4);
    goto LAB23;

LAB27:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(42, ng0);

LAB32:    xsi_set_current_line(43, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 1928);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    goto LAB31;

LAB34:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB36;

LAB35:    *((unsigned int *)t4) = 1;
    goto LAB36;

LAB38:    xsi_set_current_line(46, ng0);

LAB41:    xsi_set_current_line(47, ng0);
    t29 = (t0 + 2408);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memset(t32, 0, 8);
    t33 = (t32 + 4);
    t34 = (t31 + 4);
    t15 = *((unsigned int *)t31);
    t16 = (t15 >> 0);
    t17 = (t16 & 1);
    *((unsigned int *)t32) = t17;
    t18 = *((unsigned int *)t34);
    t19 = (t18 >> 0);
    t20 = (t19 & 1);
    *((unsigned int *)t33) = t20;
    t35 = (t32 + 4);
    t21 = *((unsigned int *)t35);
    t22 = (~(t21));
    t24 = *((unsigned int *)t32);
    t25 = (t24 & t22);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB42;

LAB43:
LAB44:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t32, 0, 8);
    t6 = (t32 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 1);
    *((unsigned int *)t32) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t11 & 7U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 7U);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    memset(t41, 0, 8);
    t29 = (t41 + 4);
    t30 = (t23 + 4);
    t16 = *((unsigned int *)t23);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t41) = t18;
    t19 = *((unsigned int *)t30);
    t20 = (t19 >> 0);
    t21 = (t20 & 1);
    *((unsigned int *)t29) = t21;
    xsi_vlogtype_concat(t4, 4, 4, 2U, t41, 1, t32, 3);
    t31 = (t0 + 2408);
    xsi_vlogvar_assign_value(t31, t4, 0, 0, 4);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t32, 0, 8);
    t6 = (t32 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 1);
    *((unsigned int *)t32) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t11 & 7U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 7U);
    t13 = (t0 + 2728);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    xsi_vlogtype_concat(t4, 4, 4, 2U, t23, 1, t32, 3);
    t29 = (t0 + 2248);
    xsi_vlogvar_assign_value(t29, t4, 0, 0, 4);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 4, t6, 32);
    t12 = (t0 + 2568);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 4);
    goto LAB40;

LAB42:    xsi_set_current_line(47, ng0);

LAB45:    xsi_set_current_line(48, ng0);
    t36 = (t0 + 2248);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t0 + 1048U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    xsi_vlog_unsigned_add(t41, 5, t38, 4, t40, 4);
    t39 = (t0 + 2248);
    xsi_vlogvar_assign_value(t39, t41, 0, 0, 4);
    t42 = (t0 + 2728);
    xsi_vlogvar_assign_value(t42, t41, 4, 0, 1);
    goto LAB44;

LAB48:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(56, ng0);

LAB53:    xsi_set_current_line(57, ng0);
    t29 = (t0 + 2408);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t33 = (t0 + 2248);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    xsi_vlogtype_concat(t32, 8, 8, 2U, t35, 4, t31, 4);
    t36 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t36, t32, 0, 0, 8, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB52;

}


extern void work_m_00000000001994983240_1345475044_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_00000000001994983240_1345475044", "isim/testbench_isim_beh.exe.sim/work/m_00000000001994983240_1345475044.didat");
	xsi_register_executes(pe);
}
