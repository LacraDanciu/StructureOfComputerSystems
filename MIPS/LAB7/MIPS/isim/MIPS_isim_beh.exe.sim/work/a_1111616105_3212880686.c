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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/student/Documents/30431/MariaB/LAB7/MIPS/regfile.vhd";
extern char *WORK_P_3894346536;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1111616105_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = ((WORK_P_3894346536) + 740U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 - 1);
    t1 = (t0 + 6002);
    *((int *)t1) = 0;
    t5 = (t0 + 6006);
    *((int *)t5) = t4;
    t6 = 0;
    t7 = t4;

LAB2:    if (t6 <= t7)
        goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 568U);
    t21 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t21 != 0)
        goto LAB7;

LAB9:
LAB8:    t1 = (t0 + 2564);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(56, ng0);
    t8 = xsi_get_transient_memory(32U);
    memset(t8, 0, 32U);
    t9 = t8;
    memset(t9, (unsigned char)2, 32U);
    t10 = (t0 + 6002);
    t11 = *((int *)t10);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t16 = (t0 + 2624);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_delta(t16, t15, 32U, 0LL);

LAB4:    t1 = (t0 + 6002);
    t6 = *((int *)t1);
    t2 = (t0 + 6006);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB5;

LAB6:    t3 = (t6 + 1);
    t6 = t3;
    t5 = (t0 + 6002);
    *((int *)t5) = t6;
    goto LAB2;

LAB7:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 868U);
    t8 = *((char **)t2);
    t2 = (t0 + 960U);
    t9 = *((char **)t2);
    t2 = (t0 + 4808U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t2);
    t4 = (t3 - 0);
    t13 = (t4 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t10 = (t0 + 2624);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 32U);
    xsi_driver_first_trans_delta(t10, t15, 32U, 0LL);
    goto LAB11;

}

static void work_a_1111616105_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2660);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_delta(t1, 27U, 5U, 0LL);

LAB2:    t7 = (t0 + 2572);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1111616105_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 2696);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_delta(t1, 27U, 5U, 0LL);

LAB2:    t7 = (t0 + 2580);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1111616105_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1111616105_3212880686_p_0,(void *)work_a_1111616105_3212880686_p_1,(void *)work_a_1111616105_3212880686_p_2};
	xsi_register_didat("work_a_1111616105_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_1111616105_3212880686.didat");
	xsi_register_executes(pe);
}
