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
static const char *ng0 = "C:/Users/student/Desktop/mips complete/mips/data_memory.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1632567566_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2092);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 4588);
    t6 = (32U != 32U);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 2136);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_delta(t7, 0U, 32U, 0LL);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t6 = (t4 == (unsigned char)3);
    if (t6 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB12;

LAB13:    xsi_set_current_line(40, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 2172);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1236U);
    t7 = *((char **)t2);
    t2 = (t0 + 1052U);
    t8 = *((char **)t2);
    t2 = (t0 + 3936U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t8, t2);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t12);
    t15 = (32U * t14);
    t16 = (0 + t15);
    t9 = (t7 + t16);
    t10 = (t0 + 2172);
    t11 = (t10 + 32U);
    t17 = *((char **)t11);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB10;

LAB12:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t1 = (t0 + 1052U);
    t7 = *((char **)t1);
    t1 = (t0 + 3936U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t1);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (32U * t14);
    t16 = (0U + t15);
    t8 = (t0 + 2136);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t17 = *((char **)t11);
    memcpy(t17, t5, 32U);
    xsi_driver_first_trans_delta(t8, t16, 32U, 0LL);
    xsi_set_current_line(38, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 2172);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB10;

}


extern void work_a_1632567566_1516540902_init()
{
	static char *pe[] = {(void *)work_a_1632567566_1516540902_p_0};
	xsi_register_didat("work_a_1632567566_1516540902", "isim/asd_isim_beh.exe.sim/work/a_1632567566_1516540902.didat");
	xsi_register_executes(pe);
}
