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
static const char *ng0 = "C:/Users/student/Documents/30431/MariaB/mips-complete/mips complete/mips/register_file.vhd";
extern char *WORK_P_0126613777;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2615964831_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB14;

LAB15:
LAB3:    t1 = (t0 + 2564);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = ((WORK_P_0126613777) + 740U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 1);
    t1 = (t0 + 6446);
    *((int *)t1) = 0;
    t8 = (t0 + 6450);
    *((int *)t8) = t7;
    t9 = 0;
    t10 = t7;

LAB5:    if (t9 <= t10)
        goto LAB6;

LAB8:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 6454);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB10;

LAB11:    t5 = (t0 + 2624);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_delta(t5, 0U, 32U, 0LL);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 6486);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB12;

LAB13:    t5 = (t0 + 2624);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_delta(t5, 32U, 32U, 0LL);
    goto LAB3;

LAB6:    xsi_set_current_line(29, ng0);
    t11 = xsi_get_transient_memory(32U);
    memset(t11, 0, 32U);
    t12 = t11;
    memset(t12, (unsigned char)2, 32U);
    t13 = (t0 + 6446);
    t14 = *((int *)t13);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    t17 = (32U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 2624);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 32U);
    xsi_driver_first_trans_delta(t19, t18, 32U, 0LL);

LAB7:    t1 = (t0 + 6446);
    t9 = *((int *)t1);
    t2 = (t0 + 6450);
    t10 = *((int *)t2);
    if (t9 == t10)
        goto LAB8;

LAB9:    t6 = (t9 + 1);
    t9 = t6;
    t5 = (t0 + 6446);
    *((int *)t5) = t9;
    goto LAB5;

LAB10:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t24 = (t4 == (unsigned char)3);
    if (t24 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB3;

LAB16:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 868U);
    t8 = *((char **)t2);
    t2 = (t0 + 960U);
    t11 = *((char **)t2);
    t2 = (t0 + 5252U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t2);
    t7 = (t6 - 0);
    t16 = (t7 * 1);
    t17 = (32U * t16);
    t18 = (0U + t17);
    t12 = (t0 + 2624);
    t13 = (t12 + 32U);
    t19 = *((char **)t13);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 32U);
    xsi_driver_first_trans_delta(t12, t18, 32U, 0LL);
    goto LAB17;

}

static void work_a_2615964831_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t1 = (t0 + 1052U);
    t3 = *((char **)t1);
    t1 = (t0 + 5268U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 2660);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 2572);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2615964831_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t1 = (t0 + 1144U);
    t3 = *((char **)t1);
    t1 = (t0 + 5284U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 2696);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 2580);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_2615964831_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2615964831_1516540902_p_0,(void *)work_a_2615964831_1516540902_p_1,(void *)work_a_2615964831_1516540902_p_2};
	xsi_register_didat("work_a_2615964831_1516540902", "isim/top_level_isim_beh.exe.sim/work/a_2615964831_1516540902.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
