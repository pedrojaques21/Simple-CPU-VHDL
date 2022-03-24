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
static const char *ng0 = "C:/.Xilinx/Trabalho1_PedroJaques_2046919_JoelFreitas_2031915/ALU.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_1742983514_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698860368_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_4058165771_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_4060537613_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3798478767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_43738421_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t29[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned int t41;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5853);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB13:    t5 = (t0 + 5857);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB14:    t8 = (t0 + 5861);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB15:    t11 = (t0 + 5865);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB16:    t14 = (t0 + 5869);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB17:    t17 = (t0 + 5873);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB18:    t20 = (t0 + 5877);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB19:    t23 = (t0 + 5881);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB20:    t26 = (t0 + 5885);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(72, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t3 = (t0 + 1968U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 8U);

LAB2:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 3472);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3536);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(25, ng0);
    t30 = (t0 + 1032U);
    t31 = *((char **)t30);
    t30 = (t0 + 5700U);
    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t32 = (t0 + 5716U);
    t34 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t29, t31, t30, t33, t32);
    t35 = (t0 + 1968U);
    t36 = *((char **)t35);
    t35 = (t36 + 0);
    t37 = (t29 + 12U);
    t38 = *((unsigned int *)t37);
    t39 = (1U * t38);
    memcpy(t35, t34, t39);
    goto LAB2;

LAB4:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB5:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB6:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_2592010699_sub_3798478767_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB8:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB9:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB10:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t6 = ieee_p_2592010699_sub_43738421_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB11:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t40 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t4 = (0 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t1 = (t2 + t41);
    *((unsigned char *)t1) = (unsigned char)2;

LAB24:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t40 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t4 = (1 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t1 = (t2 + t41);
    *((unsigned char *)t1) = (unsigned char)2;

LAB27:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t40 = ieee_p_0774719531_sub_4058165771_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t4 = (2 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t1 = (t2 + t41);
    *((unsigned char *)t1) = (unsigned char)2;

LAB30:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t40 = ieee_p_0774719531_sub_4060537613_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t4 = (3 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t1 = (t2 + t41);
    *((unsigned char *)t1) = (unsigned char)2;

LAB33:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5700U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5716U);
    t40 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB35;

LAB37:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t4 = (4 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t1 = (t2 + t41);
    *((unsigned char *)t1) = (unsigned char)2;

LAB36:    goto LAB2;

LAB22:;
LAB23:    xsi_set_current_line(43, ng0);
    t6 = (t0 + 2088U);
    t8 = *((char **)t6);
    t4 = (0 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t6 = (t8 + t41);
    *((unsigned char *)t6) = (unsigned char)3;
    goto LAB24;

LAB26:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 2088U);
    t8 = *((char **)t6);
    t4 = (1 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t6 = (t8 + t41);
    *((unsigned char *)t6) = (unsigned char)3;
    goto LAB27;

LAB29:    xsi_set_current_line(55, ng0);
    t6 = (t0 + 2088U);
    t8 = *((char **)t6);
    t4 = (2 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t6 = (t8 + t41);
    *((unsigned char *)t6) = (unsigned char)3;
    goto LAB30;

LAB32:    xsi_set_current_line(61, ng0);
    t6 = (t0 + 2088U);
    t8 = *((char **)t6);
    t4 = (3 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t6 = (t8 + t41);
    *((unsigned char *)t6) = (unsigned char)3;
    goto LAB33;

LAB35:    xsi_set_current_line(67, ng0);
    t6 = (t0 + 2088U);
    t8 = *((char **)t6);
    t4 = (4 - 4);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t41 = (0 + t39);
    t6 = (t8 + t41);
    *((unsigned char *)t6) = (unsigned char)3;
    goto LAB36;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/test_PlacaMae_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
