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
static const char *ng0 = "D:/Uni/DSD - Lab/Lab12/xilinx/Task2/traffic_controller_fsm.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {4U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {9, 0};
static unsigned int ng8[] = {3U, 0U};
static int ng9[] = {12, 0};



static void Always_34_0(char *t0)
{
    char t13[8];
    char t14[8];
    char t15[8];
    char t44[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t45;

LAB0:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 4960);
    *((int *)t2) = 1;
    t3 = (t0 + 4424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 2432U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3312);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t12);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB12;

LAB9:    if (t20 != 0)
        goto LAB11;

LAB10:    *((unsigned int *)t15) = 1;

LAB12:    memset(t14, 0, 8);
    t24 = (t15 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t15);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t24) != 0)
        goto LAB15;

LAB16:    t31 = (t14 + 4);
    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB17;

LAB18:    t36 = *((unsigned int *)t14);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t31) > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t14) > 0)
        goto LAB23;

LAB24:    memcpy(t13, t44, 8);

LAB25:    t45 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t45, t13, 0, 0, 4, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

LAB11:    t23 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB12;

LAB13:    *((unsigned int *)t14) = 1;
    goto LAB16;

LAB15:    t30 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB16;

LAB17:    t35 = ((char*)((ng1)));
    goto LAB18;

LAB19:    t40 = (t0 + 3152);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = ((char*)((ng2)));
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 32, t42, 4, t43, 32);
    goto LAB20;

LAB21:    xsi_vlog_unsigned_bit_combine(t13, 32, t35, 32, t44, 32);
    goto LAB25;

LAB23:    memcpy(t13, t35, 8);
    goto LAB25;

}

static void Always_44_1(char *t0)
{
    char t11[8];
    char t12[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 4640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4976);
    *((int *)t2) = 1;
    t3 = (t0 + 4672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 3312);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB5:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB12;

LAB13:
LAB15:
LAB14:    xsi_set_current_line(71, ng0);

LAB75:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB16:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);

LAB17:    xsi_set_current_line(47, ng0);
    t9 = ((char*)((ng3)));
    t10 = (t0 + 3472);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 3);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB16;

LAB8:    xsi_set_current_line(52, ng0);

LAB18:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 3152);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB20;

LAB19:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB20;

LAB23:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB21;

LAB22:    memset(t12, 0, 8);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t13);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t15) != 0)
        goto LAB26;

LAB27:    t22 = (t12 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t22);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB28;

LAB29:    t27 = *((unsigned int *)t12);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t22) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t12) > 0)
        goto LAB34;

LAB35:    memcpy(t11, t31, 8);

LAB36:    t32 = (t0 + 3472);
    xsi_vlogvar_assign_value(t32, t11, 0, 0, 3);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB16;

LAB10:    xsi_set_current_line(58, ng0);

LAB37:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 3152);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB39;

LAB38:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB39;

LAB42:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB40;

LAB41:    memset(t12, 0, 8);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t13);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t15) != 0)
        goto LAB45;

LAB46:    t22 = (t12 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t22);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB47;

LAB48:    t27 = *((unsigned int *)t12);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t22) > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t12) > 0)
        goto LAB53;

LAB54:    memcpy(t11, t31, 8);

LAB55:    t32 = (t0 + 3472);
    xsi_vlogvar_assign_value(t32, t11, 0, 0, 3);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB16;

LAB12:    xsi_set_current_line(65, ng0);

LAB56:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 3152);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng9)));
    memset(t13, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB58;

LAB57:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB58;

LAB61:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB59;

LAB60:    memset(t12, 0, 8);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t13);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t15) != 0)
        goto LAB64;

LAB65:    t22 = (t12 + 4);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t22);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB66;

LAB67:    t27 = *((unsigned int *)t12);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t22) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t12) > 0)
        goto LAB72;

LAB73:    memcpy(t11, t31, 8);

LAB74:    t32 = (t0 + 3472);
    xsi_vlogvar_assign_value(t32, t11, 0, 0, 3);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB16;

LAB20:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB22;

LAB21:    *((unsigned int *)t13) = 1;
    goto LAB22;

LAB24:    *((unsigned int *)t12) = 1;
    goto LAB27;

LAB26:    t21 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB27;

LAB28:    t26 = ((char*)((ng3)));
    goto LAB29;

LAB30:    t31 = ((char*)((ng6)));
    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t11, 3, t26, 3, t31, 3);
    goto LAB36;

LAB34:    memcpy(t11, t26, 8);
    goto LAB36;

LAB39:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB41;

LAB40:    *((unsigned int *)t13) = 1;
    goto LAB41;

LAB43:    *((unsigned int *)t12) = 1;
    goto LAB46;

LAB45:    t21 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB46;

LAB47:    t26 = ((char*)((ng6)));
    goto LAB48;

LAB49:    t31 = ((char*)((ng8)));
    goto LAB50;

LAB51:    xsi_vlog_unsigned_bit_combine(t11, 3, t26, 3, t31, 3);
    goto LAB55;

LAB53:    memcpy(t11, t26, 8);
    goto LAB55;

LAB58:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB60;

LAB59:    *((unsigned int *)t13) = 1;
    goto LAB60;

LAB62:    *((unsigned int *)t12) = 1;
    goto LAB65;

LAB64:    t21 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB65;

LAB66:    t26 = ((char*)((ng8)));
    goto LAB67;

LAB68:    t31 = ((char*)((ng1)));
    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t11, 3, t26, 3, t31, 3);
    goto LAB74;

LAB72:    memcpy(t11, t26, 8);
    goto LAB74;

}


extern void work_m_00000000000220544920_1213803193_init()
{
	static char *pe[] = {(void *)Always_34_0,(void *)Always_44_1};
	xsi_register_didat("work_m_00000000000220544920_1213803193", "isim/testbench_isim_beh.exe.sim/work/m_00000000000220544920_1213803193.didat");
	xsi_register_executes(pe);
}
