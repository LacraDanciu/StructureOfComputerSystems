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
static const char *ng0 = "C:/Users/student/Documents/30431/MariaB/LAB7/MIPS/ALU.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1854260743_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2794316277_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 1132U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1200U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 1268U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1336U);
    t2 = *((char **)t1);
    t5 = (0 - 0);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 4091);
    t5 = xsi_mem_cmp(t1, t2, 2U);
    if (t5 == 1)
        goto LAB3;

LAB8:    t4 = (t0 + 4093);
    t10 = xsi_mem_cmp(t4, t2, 2U);
    if (t10 == 1)
        goto LAB4;

LAB9:    t11 = (t0 + 4095);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB5;

LAB10:    t14 = (t0 + 4097);
    t16 = xsi_mem_cmp(t14, t2, 2U);
    if (t16 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(71, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)1, 32U);
    t3 = (t0 + 1268U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);

LAB2:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t1 = (t0 + 3888U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t26 = (t5 == 0);
    if (t26 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1336U);
    t2 = *((char **)t1);
    t5 = (0 - 0);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    *((unsigned char *)t1) = (unsigned char)2;

LAB14:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t1 = (t0 + 2132);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t9 = (t4 + 40U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1336U);
    t2 = *((char **)t1);
    t5 = (0 - 0);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t26 = *((unsigned char *)t1);
    t3 = (t0 + 2168);
    t4 = (t3 + 32U);
    t9 = *((char **)t4);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t26;
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 2088);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(60, ng0);
    t18 = (t0 + 1132U);
    t19 = *((char **)t18);
    t18 = (t0 + 3856U);
    t20 = (t0 + 1200U);
    t21 = *((char **)t20);
    t20 = (t0 + 3872U);
    t22 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t17, t19, t18, t21, t20);
    t23 = (t0 + 1268U);
    t24 = *((char **)t23);
    t23 = (t24 + 0);
    t25 = (t17 + 12U);
    t6 = *((unsigned int *)t25);
    t7 = (1U * t6);
    memcpy(t23, t22, t7);
    goto LAB2;

LAB4:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 3856U);
    t3 = (t0 + 1200U);
    t4 = *((char **)t3);
    t3 = (t0 + 3872U);
    t9 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t17, t2, t1, t4, t3);
    t11 = (t0 + 1268U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t17 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    memcpy(t11, t9, t7);
    goto LAB2;

LAB5:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 3856U);
    t3 = (t0 + 1200U);
    t4 = *((char **)t3);
    t3 = (t0 + 3872U);
    t9 = ieee_p_1242562249_sub_1854260743_1035706684(IEEE_P_1242562249, t17, t2, t1, t4, t3);
    t11 = (t0 + 1268U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t17 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    memcpy(t11, t9, t7);
    goto LAB2;

LAB6:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 3856U);
    t3 = (t0 + 1200U);
    t4 = *((char **)t3);
    t3 = (t0 + 3872U);
    t9 = ieee_p_1242562249_sub_2794316277_1035706684(IEEE_P_1242562249, t17, t2, t1, t4, t3);
    t11 = (t0 + 1268U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t17 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    memcpy(t11, t9, t7);
    goto LAB2;

LAB12:;
LAB13:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 1336U);
    t4 = *((char **)t3);
    t10 = (0 - 0);
    t6 = (t10 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    *((unsigned char *)t3) = (unsigned char)3;
    goto LAB14;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
