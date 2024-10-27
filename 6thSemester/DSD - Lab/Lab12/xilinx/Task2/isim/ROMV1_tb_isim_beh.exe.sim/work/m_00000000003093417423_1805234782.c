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
static const char *ng0 = "D:/Uni/DSD - Lab/Lab12/xilinx/Task2/ROMV1.v";
static int ng1[] = {0, 0};
static int ng2[] = {21, 0};
static int ng3[] = {1, 0};
static int ng4[] = {255, 0};
static int ng5[] = {2, 0};
static int ng6[] = {33, 0};
static int ng7[] = {3, 0};
static int ng8[] = {99, 0};
static int ng9[] = {4, 0};
static int ng10[] = {127, 0};
static int ng11[] = {5, 0};
static int ng12[] = {13, 0};
static int ng13[] = {6, 0};
static int ng14[] = {10, 0};
static int ng15[] = {7, 0};
static int ng16[] = {88, 0};
static unsigned int ng17[] = {0U, 255U};



static void Always_30_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    int t46;
    char *t47;
    char *t48;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 & t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB5;

LAB6:
LAB7:    t38 = (t7 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t7);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB10:    goto LAB2;

LAB5:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (~(t26));
    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = (t23 & t25);
    t31 = (t27 & t29);
    t32 = (~(t30));
    t33 = (~(t31));
    t34 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t34 & t32);
    t35 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t35 & t33);
    t36 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t36 & t32);
    t37 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t37 & t33);
    goto LAB7;

LAB8:    xsi_set_current_line(32, ng0);
    t44 = (t0 + 1048U);
    t45 = *((char **)t44);

LAB11:    t44 = ((char*)((ng1)));
    t46 = xsi_vlog_unsigned_case_compare(t45, 3, t44, 32);
    if (t46 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t45, 3, t2, 32);
    if (t30 == 1)
        goto LAB26;

LAB27:
LAB28:    goto LAB10;

LAB12:    xsi_set_current_line(33, ng0);
    t47 = ((char*)((ng2)));
    t48 = (t0 + 1768);
    xsi_vlogvar_assign_value(t48, t47, 0, 0, 8);
    goto LAB28;

LAB14:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

LAB16:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

LAB18:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

LAB20:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

LAB22:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

LAB24:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

LAB26:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB28;

}


extern void work_m_00000000003093417423_1805234782_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000003093417423_1805234782", "isim/ROMV1_tb_isim_beh.exe.sim/work/m_00000000003093417423_1805234782.didat");
	xsi_register_executes(pe);
}
