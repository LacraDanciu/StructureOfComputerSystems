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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *WORK_P_0126613777;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_0126613777_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3183410539_3212880686_init();
    work_a_3853510154_3212880686_init();
    work_a_4230703719_1516540902_init();
    work_a_3219856015_1516540902_init();
    work_a_3430011751_1516540902_init();
    work_a_0136541135_1516540902_init();
    work_a_2615964831_1516540902_init();
    work_a_2563274267_1516540902_init();
    work_a_0832606739_1516540902_init();
    work_a_3619386065_1516540902_init();
    work_a_1632567566_1516540902_init();
    work_a_3392787015_1516540902_init();
    work_a_1163904914_1181938964_init();


    xsi_register_tops("work_a_1163904914_1181938964");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_0126613777 = xsi_get_engine_memory("work_p_0126613777");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
