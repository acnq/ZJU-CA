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
static const char *ng0 = "C:/E/study/thi_autwin/ca/pro/experiment03/exp03/CHECK_BRANCH.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};



static void Always_26_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);

LAB24:    xsi_set_current_line(30, ng0);
    t8 = (t0 + 1048U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 3U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 3U);
    t17 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t17, t7, 0, 0, 2, 0LL);
    goto LAB23;

LAB9:    xsi_set_current_line(33, ng0);

LAB25:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(37, ng0);

LAB30:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB28:    goto LAB23;

LAB11:    xsi_set_current_line(42, ng0);

LAB31:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 3U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 3U);
    t9 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 2, 0LL);
    goto LAB23;

LAB13:    xsi_set_current_line(46, ng0);

LAB32:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 3U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 3U);
    t9 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 2, 0LL);
    goto LAB23;

LAB15:    xsi_set_current_line(50, ng0);

LAB33:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(54, ng0);

LAB38:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB36:    goto LAB23;

LAB17:    xsi_set_current_line(59, ng0);

LAB39:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 2, 0LL);
    goto LAB23;

LAB19:    xsi_set_current_line(63, ng0);

LAB40:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 2, 0LL);
    goto LAB23;

LAB21:    xsi_set_current_line(67, ng0);

LAB41:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 2, 0LL);
    goto LAB23;

LAB26:    xsi_set_current_line(34, ng0);

LAB29:    xsi_set_current_line(35, ng0);
    t8 = (t0 + 1048U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t10 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    t18 = (t16 >> 0);
    *((unsigned int *)t7) = t18;
    t19 = *((unsigned int *)t10);
    t20 = (t19 >> 0);
    *((unsigned int *)t8) = t20;
    t21 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t21 & 3U);
    t22 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t22 & 3U);
    t17 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t17, t7, 0, 0, 2, 0LL);
    goto LAB28;

LAB34:    xsi_set_current_line(51, ng0);

LAB37:    xsi_set_current_line(52, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 2, 0LL);
    goto LAB36;

}


extern void work_m_00000000000158274915_3928365522_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000000158274915_3928365522", "isim/test_sec_mips_isim_beh.exe.sim/work/m_00000000000158274915_3928365522.didat");
	xsi_register_executes(pe);
}
