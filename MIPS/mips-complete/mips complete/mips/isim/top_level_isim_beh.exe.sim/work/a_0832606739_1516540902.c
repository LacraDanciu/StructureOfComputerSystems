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
static const char *ng0 = "C:/Users/student/Documents/30431/MariaB/mips-complete/mips complete/mips/alu.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1854260743_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2794316277_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_1516540902_p_0(char *t0)
{
    char t23[16];
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
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 1224U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1292U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(32, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 1360U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1428U);
    t2 = *((char **)t1);
    t5 = (0 - 0);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 4573);
    t5 = xsi_mem_cmp(t1, t2, 3U);
    if (t5 == 1)
        goto LAB3;

LAB10:    t4 = (t0 + 4576);
    t10 = xsi_mem_cmp(t4, t2, 3U);
    if (t10 == 1)
        goto LAB4;

LAB11:    t11 = (t0 + 4579);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB5;

LAB12:    t14 = (t0 + 4582);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB6;

LAB13:    t17 = (t0 + 4585);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB7;

LAB14:    t20 = (t0 + 4588);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)1, 32U);
    t3 = (t0 + 1360U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);

LAB2:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1360U);
    t2 = *((char **)t1);
    t1 = (t0 + 4364U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t32 = (t5 == 0);
    if (t32 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1428U);
    t2 = *((char **)t1);
    t5 = (0 - 0);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    *((unsigned char *)t1) = (unsigned char)2;

LAB18:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1360U);
    t2 = *((char **)t1);
    t1 = (t0 + 2224);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t9 = (t4 + 40U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1428U);
    t2 = *((char **)t1);
    t5 = (0 - 0);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t32 = *((unsigned char *)t1);
    t3 = (t0 + 2260);
    t4 = (t3 + 32U);
    t9 = *((char **)t4);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t32;
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 2180);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(39, ng0);
    t24 = (t0 + 1224U);
    t25 = *((char **)t24);
    t24 = (t0 + 4332U);
    t26 = (t0 + 1292U);
    t27 = *((char **)t26);
    t26 = (t0 + 4348U);
    t28 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t23, t25, t24, t27, t26);
    t29 = (t0 + 1360U);
    t30 = *((char **)t29);
    t29 = (t30 + 0);
    t31 = (t23 + 12U);
    t6 = *((unsigned int *)t31);
    t7 = (1U * t6);
    memcpy(t29, t28, t7);
    goto LAB2;

LAB4:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t1 = (t0 + 4332U);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t3 = (t0 + 4348U);
    t9 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t23, t2, t1, t4, t3);
    t11 = (t0 + 1360U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t23 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    memcpy(t11, t9, t7);
    goto LAB2;

LAB5:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t1 = (t0 + 4332U);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t3 = (t0 + 4348U);
    t9 = ieee_p_1242562249_sub_1854260743_1035706684(IEEE_P_1242562249, t23, t2, t1, t4, t3);
    t11 = (t0 + 1360U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t23 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    memcpy(t11, t9, t7);
    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t1 = (t0 + 4332U);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t3 = (t0 + 4348U);
    t9 = ieee_p_1242562249_sub_2794316277_1035706684(IEEE_P_1242562249, t23, t2, t1, t4, t3);
    t11 = (t0 + 1360U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t23 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    memcpy(t11, t9, t7);
    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t1 = (t0 + 4332U);
    t3 = (t0 + 868U);
    t4 = *((char **)t3);
    t3 = (t0 + 4300U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t3);
    t9 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t23, t2, t1, t5);
    t11 = (t0 + 1360U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t23 + 12U);
    t6 = *((unsigned int *)t14);
    t6 = (t6 * 1U);
    memcpy(t11, t9, t6);
    goto LAB2;

LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t1 = (t0 + 4332U);
    t3 = (t0 + 868U);
    t4 = *((char **)t3);
    t3 = (t0 + 4300U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t3);
    t9 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t23, t2, t1, t5);
    t11 = (t0 + 1360U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t14 = (t23 + 12U);
    t6 = *((unsigned int *)t14);
    t6 = (t6 * 1U);
    memcpy(t11, t9, t6);
    goto LAB2;

LAB16:;
LAB17:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1428U);
    t4 = *((char **)t3);
    t10 = (0 - 0);
    t6 = (t10 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    *((unsigned char *)t3) = (unsigned char)3;
    goto LAB18;

}


extern void work_a_0832606739_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0832606739_1516540902_p_0};
	xsi_register_didat("work_a_0832606739_1516540902", "isim/top_level_isim_beh.exe.sim/work/a_0832606739_1516540902.didat");
	xsi_register_executes(pe);
}
