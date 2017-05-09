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
static const char *ng0 = "C:/Users/student/Documents/30431/MariaB/mips-complete/mips complete/mips/phase_generator.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3183410539_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 1868);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3629);
    t6 = (t0 + 1920);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 868U);
    t5 = *((char **)t2);
    t2 = (t0 + 3600U);
    t6 = (t0 + 3632);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t13;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t6, t11);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 3600U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t2, t1, 1);
    t6 = (t11 + 12U);
    t13 = *((unsigned int *)t6);
    t19 = (1U * t13);
    t3 = (3U != t19);
    if (t3 == 1)
        goto LAB10;

LAB11:    t7 = (t0 + 1920);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 3U);
    xsi_driver_first_trans_fast(t7);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(52, ng0);
    t9 = (t0 + 3635);
    t14 = (t0 + 1920);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 3U);
    xsi_driver_first_trans_fast(t14);
    goto LAB8;

LAB10:    xsi_size_not_matching(3U, t19, 0);
    goto LAB11;

}

static void work_a_3183410539_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 1956);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 1876);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3183410539_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3183410539_3212880686_p_0,(void *)work_a_3183410539_3212880686_p_1};
	xsi_register_didat("work_a_3183410539_3212880686", "isim/top_level_isim_beh.exe.sim/work/a_3183410539_3212880686.didat");
	xsi_register_executes(pe);
}
