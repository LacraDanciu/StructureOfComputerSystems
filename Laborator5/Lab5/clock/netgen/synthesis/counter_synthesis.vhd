--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: counter_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 27 08:17:28 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm counter -w -dir netgen/synthesis -ofmt vhdl -sim counter.ngc counter_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: counter.ngc
-- Output file	: C:\Users\student\Documents\30431\MariaB\Lab5\clock\netgen\synthesis\counter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: counter
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    hour : in STD_LOGIC := 'X'; 
    anode : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    segments : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end counter;

architecture Structure of counter is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_1 : STD_LOGIC; 
  signal hour_IBUF_2 : STD_LOGIC; 
  signal div_22_dff_40_16_Q : STD_LOGIC; 
  signal div_22_dff_40_15_Q : STD_LOGIC; 
  signal segments_7_5 : STD_LOGIC; 
  signal segments_6_6 : STD_LOGIC; 
  signal segments_5_7 : STD_LOGIC; 
  signal segments_4_8 : STD_LOGIC; 
  signal segments_3_9 : STD_LOGIC; 
  signal segments_2_10 : STD_LOGIC; 
  signal segments_1_11 : STD_LOGIC; 
  signal segments_0_12 : STD_LOGIC; 
  signal anode_3_13 : STD_LOGIC; 
  signal anode_2_14 : STD_LOGIC; 
  signal anode_1_15 : STD_LOGIC; 
  signal anode_0_16 : STD_LOGIC; 
  signal clk1_BUFG_44 : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_7_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_6_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_5_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_4_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_3_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_2_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_1_Q : STD_LOGIC; 
  signal digit1_3_digit3_3_mux_72_OUT_0_Q : STD_LOGIC; 
  signal clk1_INV_8_o : STD_LOGIC; 
  signal GND_5_o_count_31_equal_44_o : STD_LOGIC; 
  signal GND_5_o_digit1_31_equal_2_o : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o : STD_LOGIC; 
  signal GND_5_o_digit3_31_equal_6_o : STD_LOGIC; 
  signal GND_5_o_digit4_31_equal_8_o : STD_LOGIC; 
  signal GND_5_o_digit5_31_equal_10_o : STD_LOGIC; 
  signal GND_5_o_digit6_31_equal_12_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal div_22_dff_40_1_Q : STD_LOGIC; 
  signal div_22_dff_40_2_Q : STD_LOGIC; 
  signal div_22_dff_40_3_Q : STD_LOGIC; 
  signal div_22_dff_40_4_Q : STD_LOGIC; 
  signal div_22_dff_40_5_Q : STD_LOGIC; 
  signal div_22_dff_40_6_Q : STD_LOGIC; 
  signal div_22_dff_40_7_Q : STD_LOGIC; 
  signal div_22_dff_40_8_Q : STD_LOGIC; 
  signal div_22_dff_40_9_Q : STD_LOGIC; 
  signal div_22_dff_40_10_Q : STD_LOGIC; 
  signal div_22_dff_40_11_Q : STD_LOGIC; 
  signal div_22_dff_40_12_Q : STD_LOGIC; 
  signal div_22_dff_40_13_Q : STD_LOGIC; 
  signal div_22_dff_40_14_Q : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Mcount_digit1_eqn_0 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Mcount_digit1_eqn_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Mcount_digit1_eqn_2 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Mcount_digit1_eqn_3 : STD_LOGIC; 
  signal Result_0_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_0 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_1 : STD_LOGIC; 
  signal Result_2_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_2 : STD_LOGIC; 
  signal Result_3_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_3 : STD_LOGIC; 
  signal Result_4_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_4 : STD_LOGIC; 
  signal Result_5_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_5 : STD_LOGIC; 
  signal Result_6_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_6 : STD_LOGIC; 
  signal Result_7_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_7 : STD_LOGIC; 
  signal Result_8_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_8 : STD_LOGIC; 
  signal Result_9_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_9 : STD_LOGIC; 
  signal Result_10_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_10 : STD_LOGIC; 
  signal Result_11_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_11 : STD_LOGIC; 
  signal Result_12_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_12 : STD_LOGIC; 
  signal Result_13_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_13 : STD_LOGIC; 
  signal Result_14_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_14 : STD_LOGIC; 
  signal Result_15_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_15 : STD_LOGIC; 
  signal Result_16_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_16 : STD_LOGIC; 
  signal Result_17_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_17 : STD_LOGIC; 
  signal Result_18_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_18 : STD_LOGIC; 
  signal Result_19_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_19 : STD_LOGIC; 
  signal Result_20_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_20 : STD_LOGIC; 
  signal Result_21_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_21 : STD_LOGIC; 
  signal Result_22_3 : STD_LOGIC; 
  signal Mcount_digit2_eqn_22 : STD_LOGIC; 
  signal Result_23_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_23 : STD_LOGIC; 
  signal Result_24_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_24 : STD_LOGIC; 
  signal Result_25_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_25 : STD_LOGIC; 
  signal Result_26_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_26 : STD_LOGIC; 
  signal Result_27_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_27 : STD_LOGIC; 
  signal Result_28_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_28 : STD_LOGIC; 
  signal Result_29_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_29 : STD_LOGIC; 
  signal Result_30_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_30 : STD_LOGIC; 
  signal Result_31_2 : STD_LOGIC; 
  signal Mcount_digit2_eqn_31 : STD_LOGIC; 
  signal Result_0_4 : STD_LOGIC; 
  signal Result_1_4 : STD_LOGIC; 
  signal Result_2_4 : STD_LOGIC; 
  signal Result_3_4 : STD_LOGIC; 
  signal Result_0_5 : STD_LOGIC; 
  signal Result_1_5 : STD_LOGIC; 
  signal Result_2_5 : STD_LOGIC; 
  signal Result_0_6 : STD_LOGIC; 
  signal Result_1_6 : STD_LOGIC; 
  signal Result_0_7 : STD_LOGIC; 
  signal Result_1_7 : STD_LOGIC; 
  signal Result_2_7 : STD_LOGIC; 
  signal Result_3_7 : STD_LOGIC; 
  signal Mram_PWR_5_o_GND_5_o_mux_58_OUT : STD_LOGIC; 
  signal Mram_PWR_5_o_GND_5_o_mux_58_OUT1 : STD_LOGIC; 
  signal Mram_PWR_5_o_GND_5_o_mux_58_OUT2 : STD_LOGIC; 
  signal Mram_PWR_5_o_GND_5_o_mux_58_OUT3 : STD_LOGIC; 
  signal Mram_digit3_3_GND_5_o_wide_mux_49_OUT : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_0_Q_286 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_1_Q_287 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_2_Q_288 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_3_Q_289 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_4_Q_290 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_5_Q_291 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_6_Q_292 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_7_Q_293 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_8_Q_294 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_9_Q_295 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_10_Q_296 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_11_Q_297 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_12_Q_298 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_13_Q_299 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_14_Q_300 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_15_Q_301 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT11_347 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT12_348 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT13 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT14 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT15_351 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT72_352 : STD_LOGIC; 
  signal GND_5_o_count_31_equal_44_o_31_Q : STD_LOGIC; 
  signal GND_5_o_count_31_equal_44_o_31_1_354 : STD_LOGIC; 
  signal GND_5_o_count_31_equal_44_o_31_2_355 : STD_LOGIC; 
  signal GND_5_o_count_31_equal_44_o_31_3_356 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT521_357 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT522_358 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT523_359 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT2 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT21_361 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT22_362 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT23_363 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT24_364 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT721_365 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT722_366 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT723_367 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT3 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT31_369 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT32_370 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT33_371 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT34_372 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT35_373 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT7 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT71_375 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT73_376 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT75_377 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_Q : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_1_379 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_2_380 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_3_381 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_4_382 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_5_383 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT6 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT61_385 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT62_386 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT63_387 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT64_388 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT65_389 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT5 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT51_391 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT53_392 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT54_393 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT55_394 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT56_395 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT8 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT81_397 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT4 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT41_399 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT42_400 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT43_401 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT44_402 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT1 : STD_LOGIC; 
  signal Mmux_digit1_3_digit3_3_mux_72_OUT16 : STD_LOGIC; 
  signal Mcount_digit1_cy_1_rt_420 : STD_LOGIC; 
  signal Mcount_digit1_cy_2_rt_421 : STD_LOGIC; 
  signal Mcount_count_lut_0_1 : STD_LOGIC; 
  signal Mcount_count_cy_1_rt_423 : STD_LOGIC; 
  signal Mcount_count_cy_2_rt_424 : STD_LOGIC; 
  signal Mcount_count_cy_3_rt_425 : STD_LOGIC; 
  signal Mcount_count_cy_4_rt_426 : STD_LOGIC; 
  signal Mcount_count_cy_5_rt_427 : STD_LOGIC; 
  signal Mcount_count_cy_6_rt_428 : STD_LOGIC; 
  signal Mcount_count_cy_7_rt_429 : STD_LOGIC; 
  signal Mcount_count_cy_8_rt_430 : STD_LOGIC; 
  signal Mcount_count_cy_9_rt_431 : STD_LOGIC; 
  signal Mcount_count_cy_10_rt_432 : STD_LOGIC; 
  signal Mcount_count_cy_11_rt_433 : STD_LOGIC; 
  signal Mcount_count_cy_12_rt_434 : STD_LOGIC; 
  signal Mcount_count_cy_13_rt_435 : STD_LOGIC; 
  signal Mcount_count_cy_14_rt_436 : STD_LOGIC; 
  signal Mcount_count_cy_15_rt_437 : STD_LOGIC; 
  signal Mcount_count_cy_16_rt_438 : STD_LOGIC; 
  signal Mcount_count_cy_17_rt_439 : STD_LOGIC; 
  signal Mcount_count_cy_18_rt_440 : STD_LOGIC; 
  signal Mcount_count_cy_19_rt_441 : STD_LOGIC; 
  signal Mcount_count_cy_20_rt_442 : STD_LOGIC; 
  signal Mcount_count_cy_21_rt_443 : STD_LOGIC; 
  signal Mcount_count_cy_22_rt_444 : STD_LOGIC; 
  signal Mcount_count_cy_23_rt_445 : STD_LOGIC; 
  signal Mcount_count_cy_24_rt_446 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_1_rt_447 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_2_rt_448 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_3_rt_449 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_4_rt_450 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_5_rt_451 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_6_rt_452 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_7_rt_453 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_8_rt_454 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_9_rt_455 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_10_rt_456 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_11_rt_457 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_12_rt_458 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_13_rt_459 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_14_rt_460 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_15_rt_461 : STD_LOGIC; 
  signal Mcount_digit4_cy_1_rt_462 : STD_LOGIC; 
  signal Mcount_digit2_cy_1_rt_463 : STD_LOGIC; 
  signal Mcount_digit2_cy_2_rt_464 : STD_LOGIC; 
  signal Mcount_digit2_cy_3_rt_465 : STD_LOGIC; 
  signal Mcount_digit2_cy_4_rt_466 : STD_LOGIC; 
  signal Mcount_digit2_cy_5_rt_467 : STD_LOGIC; 
  signal Mcount_digit2_cy_6_rt_468 : STD_LOGIC; 
  signal Mcount_digit2_cy_7_rt_469 : STD_LOGIC; 
  signal Mcount_digit2_cy_8_rt_470 : STD_LOGIC; 
  signal Mcount_digit2_cy_9_rt_471 : STD_LOGIC; 
  signal Mcount_digit2_cy_10_rt_472 : STD_LOGIC; 
  signal Mcount_digit2_cy_11_rt_473 : STD_LOGIC; 
  signal Mcount_digit2_cy_12_rt_474 : STD_LOGIC; 
  signal Mcount_digit2_cy_13_rt_475 : STD_LOGIC; 
  signal Mcount_digit2_cy_14_rt_476 : STD_LOGIC; 
  signal Mcount_digit2_cy_15_rt_477 : STD_LOGIC; 
  signal Mcount_digit2_cy_16_rt_478 : STD_LOGIC; 
  signal Mcount_digit2_cy_17_rt_479 : STD_LOGIC; 
  signal Mcount_digit2_cy_18_rt_480 : STD_LOGIC; 
  signal Mcount_digit2_cy_19_rt_481 : STD_LOGIC; 
  signal Mcount_digit2_cy_20_rt_482 : STD_LOGIC; 
  signal Mcount_digit2_cy_21_rt_483 : STD_LOGIC; 
  signal Mcount_digit2_cy_22_rt_484 : STD_LOGIC; 
  signal Mcount_digit2_cy_23_rt_485 : STD_LOGIC; 
  signal Mcount_digit2_cy_24_rt_486 : STD_LOGIC; 
  signal Mcount_digit2_cy_25_rt_487 : STD_LOGIC; 
  signal Mcount_digit2_cy_26_rt_488 : STD_LOGIC; 
  signal Mcount_digit2_cy_27_rt_489 : STD_LOGIC; 
  signal Mcount_digit2_cy_28_rt_490 : STD_LOGIC; 
  signal Mcount_digit2_cy_29_rt_491 : STD_LOGIC; 
  signal Mcount_digit2_cy_30_rt_492 : STD_LOGIC; 
  signal Mcount_digit3_cy_1_rt_493 : STD_LOGIC; 
  signal Mcount_digit3_cy_2_rt_494 : STD_LOGIC; 
  signal Mcount_digit5_cy_1_rt_495 : STD_LOGIC; 
  signal Mcount_digit5_cy_2_rt_496 : STD_LOGIC; 
  signal Mcount_digit1_xor_3_rt_497 : STD_LOGIC; 
  signal Mcount_count_xor_25_rt_498 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_xor_16_rt_499 : STD_LOGIC; 
  signal Mcount_digit4_xor_2_rt_500 : STD_LOGIC; 
  signal Mcount_digit2_xor_31_rt_501 : STD_LOGIC; 
  signal Mcount_digit3_xor_3_rt_502 : STD_LOGIC; 
  signal Mcount_digit6_xor_1_rt_503 : STD_LOGIC; 
  signal Mcount_digit5_xor_3_rt_504 : STD_LOGIC; 
  signal digit5_0_dpot_505 : STD_LOGIC; 
  signal digit5_1_dpot_506 : STD_LOGIC; 
  signal digit5_2_dpot_507 : STD_LOGIC; 
  signal digit5_3_dpot_508 : STD_LOGIC; 
  signal digit4_0_dpot_509 : STD_LOGIC; 
  signal digit4_1_dpot_510 : STD_LOGIC; 
  signal digit4_2_dpot_511 : STD_LOGIC; 
  signal digit6_0_dpot_512 : STD_LOGIC; 
  signal digit6_1_dpot_513 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal Mcount_div_22_dff_40_cy_0_rt_521 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_7_rstpot_522 : STD_LOGIC; 
  signal digit3_0_dpot1_523 : STD_LOGIC; 
  signal digit3_1_dpot1_524 : STD_LOGIC; 
  signal digit3_2_dpot1_525 : STD_LOGIC; 
  signal digit3_3_dpot1_526 : STD_LOGIC; 
  signal GND_5_o_digit1_31_equal_2_o_31_1_527 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_7_528 : STD_LOGIC; 
  signal GND_5_o_digit2_31_equal_4_o_31_71 : STD_LOGIC; 
  signal count_2_rstpot_530 : STD_LOGIC; 
  signal count_0_rstpot_531 : STD_LOGIC; 
  signal count_1_rstpot_532 : STD_LOGIC; 
  signal count_5_rstpot_533 : STD_LOGIC; 
  signal count_3_rstpot_534 : STD_LOGIC; 
  signal count_4_rstpot_535 : STD_LOGIC; 
  signal count_8_rstpot_536 : STD_LOGIC; 
  signal count_6_rstpot_537 : STD_LOGIC; 
  signal count_7_rstpot_538 : STD_LOGIC; 
  signal count_11_rstpot_539 : STD_LOGIC; 
  signal count_9_rstpot_540 : STD_LOGIC; 
  signal count_10_rstpot_541 : STD_LOGIC; 
  signal count_14_rstpot_542 : STD_LOGIC; 
  signal count_12_rstpot_543 : STD_LOGIC; 
  signal count_13_rstpot_544 : STD_LOGIC; 
  signal count_17_rstpot_545 : STD_LOGIC; 
  signal count_15_rstpot_546 : STD_LOGIC; 
  signal count_16_rstpot_547 : STD_LOGIC; 
  signal count_20_rstpot_548 : STD_LOGIC; 
  signal count_18_rstpot_549 : STD_LOGIC; 
  signal count_19_rstpot_550 : STD_LOGIC; 
  signal count_21_rstpot_551 : STD_LOGIC; 
  signal count_22_rstpot_552 : STD_LOGIC; 
  signal count_23_rstpot_553 : STD_LOGIC; 
  signal count_24_rstpot_554 : STD_LOGIC; 
  signal count_25_rstpot_555 : STD_LOGIC; 
  signal GND_5_o_count_31_equal_44_o_31_5_556 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal clk1_563 : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal digit1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal digit2 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal digit3 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal digit4 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal digit5 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal digit6 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Mcount_digit1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit1_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Mcount_count_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal Mcount_digit4_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit4_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Mcount_digit2_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit2_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_digit3_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit3_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Mcount_digit6_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit6_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit5_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_digit5_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => count(26)
    );
  clk1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => GND_5_o_count_31_equal_44_o,
      D => clk1_INV_8_o,
      Q => clk1_563
    );
  anode_0 : FD
    port map (
      C => clk_BUFGP_0,
      D => Mram_PWR_5_o_GND_5_o_mux_58_OUT,
      Q => anode_0_16
    );
  anode_1 : FD
    port map (
      C => clk_BUFGP_0,
      D => Mram_PWR_5_o_GND_5_o_mux_58_OUT1,
      Q => anode_1_15
    );
  anode_2 : FD
    port map (
      C => clk_BUFGP_0,
      D => Mram_PWR_5_o_GND_5_o_mux_58_OUT2,
      Q => anode_2_14
    );
  anode_3 : FD
    port map (
      C => clk_BUFGP_0,
      D => Mram_PWR_5_o_GND_5_o_mux_58_OUT3,
      Q => anode_3_13
    );
  segments_0 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_0_Q,
      Q => segments_0_12
    );
  segments_1 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_1_Q,
      Q => segments_1_11
    );
  segments_2 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_2_Q,
      Q => segments_2_10
    );
  segments_3 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_3_Q,
      Q => segments_3_9
    );
  segments_4 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_4_Q,
      Q => segments_4_8
    );
  segments_5 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_5_Q,
      Q => segments_5_7
    );
  segments_6 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_6_Q,
      Q => segments_6_6
    );
  segments_7 : FD
    port map (
      C => clk_BUFGP_0,
      D => digit1_3_digit3_3_mux_72_OUT_7_Q,
      Q => segments_7_5
    );
  digit1_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CLR => reset_IBUF_1,
      D => Mcount_digit1_eqn_0,
      Q => digit1(0)
    );
  digit1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CLR => reset_IBUF_1,
      D => Mcount_digit1_eqn_1,
      Q => digit1(1)
    );
  digit1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CLR => reset_IBUF_1,
      D => Mcount_digit1_eqn_2,
      Q => digit1(2)
    );
  digit1_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CLR => reset_IBUF_1,
      D => Mcount_digit1_eqn_3,
      Q => digit1(3)
    );
  digit3_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit2_31_equal_4_o_31_Q,
      CLR => reset_IBUF_1,
      D => digit3_0_dpot1_523,
      Q => digit3(0)
    );
  digit3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit2_31_equal_4_o_31_Q,
      CLR => reset_IBUF_1,
      D => digit3_1_dpot1_524,
      Q => digit3(1)
    );
  digit3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit2_31_equal_4_o_31_Q,
      CLR => reset_IBUF_1,
      D => digit3_2_dpot1_525,
      Q => digit3(2)
    );
  digit3_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit2_31_equal_4_o_31_Q,
      CLR => reset_IBUF_1,
      D => digit3_3_dpot1_526,
      Q => digit3(3)
    );
  digit2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_0,
      Q => digit2(0)
    );
  digit2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_1,
      Q => digit2(1)
    );
  digit2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_2,
      Q => digit2(2)
    );
  digit2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_3,
      Q => digit2(3)
    );
  digit2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_4,
      Q => digit2(4)
    );
  digit2_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_5,
      Q => digit2(5)
    );
  digit2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_6,
      Q => digit2(6)
    );
  digit2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_7,
      Q => digit2(7)
    );
  digit2_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_8,
      Q => digit2(8)
    );
  digit2_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_9,
      Q => digit2(9)
    );
  digit2_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_10,
      Q => digit2(10)
    );
  digit2_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_11,
      Q => digit2(11)
    );
  digit2_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_12,
      Q => digit2(12)
    );
  digit2_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_13,
      Q => digit2(13)
    );
  digit2_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_14,
      Q => digit2(14)
    );
  digit2_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_15,
      Q => digit2(15)
    );
  digit2_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_16,
      Q => digit2(16)
    );
  digit2_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_17,
      Q => digit2(17)
    );
  digit2_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_18,
      Q => digit2(18)
    );
  digit2_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_19,
      Q => digit2(19)
    );
  digit2_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_20,
      Q => digit2(20)
    );
  digit2_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_21,
      Q => digit2(21)
    );
  digit2_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_22,
      Q => digit2(22)
    );
  digit2_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_23,
      Q => digit2(23)
    );
  digit2_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_24,
      Q => digit2(24)
    );
  digit2_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_25,
      Q => digit2(25)
    );
  digit2_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_26,
      Q => digit2(26)
    );
  digit2_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_27,
      Q => digit2(27)
    );
  digit2_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_28,
      Q => digit2(28)
    );
  digit2_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_29,
      Q => digit2(29)
    );
  digit2_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_30,
      Q => digit2(30)
    );
  digit2_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => Mcount_digit2_eqn_31,
      Q => digit2(31)
    );
  digit4_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => digit4_0_dpot_509,
      Q => digit4(0)
    );
  digit4_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => digit4_1_dpot_510,
      Q => digit4(1)
    );
  digit4_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit1_31_equal_2_o,
      CLR => reset_IBUF_1,
      D => digit4_2_dpot_511,
      Q => digit4(2)
    );
  digit5_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit4_31_equal_8_o,
      CLR => reset_IBUF_1,
      D => digit5_0_dpot_505,
      Q => digit5(0)
    );
  digit5_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit4_31_equal_8_o,
      CLR => reset_IBUF_1,
      D => digit5_1_dpot_506,
      Q => digit5(1)
    );
  digit5_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit4_31_equal_8_o,
      CLR => reset_IBUF_1,
      D => digit5_2_dpot_507,
      Q => digit5(2)
    );
  digit5_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit4_31_equal_8_o,
      CLR => reset_IBUF_1,
      D => digit5_3_dpot_508,
      Q => digit5(3)
    );
  digit6_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit4_31_equal_8_o,
      CLR => reset_IBUF_1,
      D => digit6_0_dpot_512,
      Q => digit6(0)
    );
  digit6_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk1_BUFG_44,
      CE => GND_5_o_digit4_31_equal_8_o,
      CLR => reset_IBUF_1,
      D => digit6_1_dpot_513,
      Q => digit6(1)
    );
  div_22_dff_40_1 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_1_1,
      Q => div_22_dff_40_1_Q
    );
  div_22_dff_40_2 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_2_1,
      Q => div_22_dff_40_2_Q
    );
  div_22_dff_40_3 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_3_1,
      Q => div_22_dff_40_3_Q
    );
  div_22_dff_40_4 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_4_1,
      Q => div_22_dff_40_4_Q
    );
  div_22_dff_40_5 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_5_1,
      Q => div_22_dff_40_5_Q
    );
  div_22_dff_40_6 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_6_1,
      Q => div_22_dff_40_6_Q
    );
  div_22_dff_40_7 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_7_1,
      Q => div_22_dff_40_7_Q
    );
  div_22_dff_40_8 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_8_1,
      Q => div_22_dff_40_8_Q
    );
  div_22_dff_40_9 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_9_1,
      Q => div_22_dff_40_9_Q
    );
  div_22_dff_40_10 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_10_1,
      Q => div_22_dff_40_10_Q
    );
  div_22_dff_40_11 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_11_1,
      Q => div_22_dff_40_11_Q
    );
  div_22_dff_40_12 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_12_1,
      Q => div_22_dff_40_12_Q
    );
  div_22_dff_40_13 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_13_1,
      Q => div_22_dff_40_13_Q
    );
  div_22_dff_40_14 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_14_1,
      Q => div_22_dff_40_14_Q
    );
  div_22_dff_40_15 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_15_1,
      Q => div_22_dff_40_15_Q
    );
  div_22_dff_40_16 : FD
    port map (
      C => clk_BUFGP_0,
      D => Result_16_1,
      Q => div_22_dff_40_16_Q
    );
  Mcount_digit1_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_digit1_lut(0),
      O => Mcount_digit1_cy(0)
    );
  Mcount_digit1_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_digit1_lut(0),
      O => Result_0_2
    );
  Mcount_digit1_cy_1_Q : MUXCY
    port map (
      CI => Mcount_digit1_cy(0),
      DI => count(26),
      S => Mcount_digit1_cy_1_rt_420,
      O => Mcount_digit1_cy(1)
    );
  Mcount_digit1_xor_1_Q : XORCY
    port map (
      CI => Mcount_digit1_cy(0),
      LI => Mcount_digit1_cy_1_rt_420,
      O => Result_1_2
    );
  Mcount_digit1_cy_2_Q : MUXCY
    port map (
      CI => Mcount_digit1_cy(1),
      DI => count(26),
      S => Mcount_digit1_cy_2_rt_421,
      O => Mcount_digit1_cy(2)
    );
  Mcount_digit1_xor_2_Q : XORCY
    port map (
      CI => Mcount_digit1_cy(1),
      LI => Mcount_digit1_cy_2_rt_421,
      O => Result_2_2
    );
  Mcount_digit1_xor_3_Q : XORCY
    port map (
      CI => Mcount_digit1_cy(2),
      LI => Mcount_digit1_xor_3_rt_497,
      O => Result_3_2
    );
  Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_count_lut_0_1,
      O => Mcount_count_cy(0)
    );
  Mcount_count_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_count_lut_0_1,
      O => Result(0)
    );
  Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_count_cy(0),
      DI => count(26),
      S => Mcount_count_cy_1_rt_423,
      O => Mcount_count_cy(1)
    );
  Mcount_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_count_cy(0),
      LI => Mcount_count_cy_1_rt_423,
      O => Result(1)
    );
  Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_count_cy(1),
      DI => count(26),
      S => Mcount_count_cy_2_rt_424,
      O => Mcount_count_cy(2)
    );
  Mcount_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_count_cy(1),
      LI => Mcount_count_cy_2_rt_424,
      O => Result(2)
    );
  Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_count_cy(2),
      DI => count(26),
      S => Mcount_count_cy_3_rt_425,
      O => Mcount_count_cy(3)
    );
  Mcount_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_count_cy(2),
      LI => Mcount_count_cy_3_rt_425,
      O => Result(3)
    );
  Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_count_cy(3),
      DI => count(26),
      S => Mcount_count_cy_4_rt_426,
      O => Mcount_count_cy(4)
    );
  Mcount_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_count_cy(3),
      LI => Mcount_count_cy_4_rt_426,
      O => Result(4)
    );
  Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_count_cy(4),
      DI => count(26),
      S => Mcount_count_cy_5_rt_427,
      O => Mcount_count_cy(5)
    );
  Mcount_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_count_cy(4),
      LI => Mcount_count_cy_5_rt_427,
      O => Result(5)
    );
  Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_count_cy(5),
      DI => count(26),
      S => Mcount_count_cy_6_rt_428,
      O => Mcount_count_cy(6)
    );
  Mcount_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_count_cy(5),
      LI => Mcount_count_cy_6_rt_428,
      O => Result(6)
    );
  Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_count_cy(6),
      DI => count(26),
      S => Mcount_count_cy_7_rt_429,
      O => Mcount_count_cy(7)
    );
  Mcount_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_count_cy(6),
      LI => Mcount_count_cy_7_rt_429,
      O => Result(7)
    );
  Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_count_cy(7),
      DI => count(26),
      S => Mcount_count_cy_8_rt_430,
      O => Mcount_count_cy(8)
    );
  Mcount_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_count_cy(7),
      LI => Mcount_count_cy_8_rt_430,
      O => Result(8)
    );
  Mcount_count_cy_9_Q : MUXCY
    port map (
      CI => Mcount_count_cy(8),
      DI => count(26),
      S => Mcount_count_cy_9_rt_431,
      O => Mcount_count_cy(9)
    );
  Mcount_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_count_cy(8),
      LI => Mcount_count_cy_9_rt_431,
      O => Result(9)
    );
  Mcount_count_cy_10_Q : MUXCY
    port map (
      CI => Mcount_count_cy(9),
      DI => count(26),
      S => Mcount_count_cy_10_rt_432,
      O => Mcount_count_cy(10)
    );
  Mcount_count_xor_10_Q : XORCY
    port map (
      CI => Mcount_count_cy(9),
      LI => Mcount_count_cy_10_rt_432,
      O => Result(10)
    );
  Mcount_count_cy_11_Q : MUXCY
    port map (
      CI => Mcount_count_cy(10),
      DI => count(26),
      S => Mcount_count_cy_11_rt_433,
      O => Mcount_count_cy(11)
    );
  Mcount_count_xor_11_Q : XORCY
    port map (
      CI => Mcount_count_cy(10),
      LI => Mcount_count_cy_11_rt_433,
      O => Result(11)
    );
  Mcount_count_cy_12_Q : MUXCY
    port map (
      CI => Mcount_count_cy(11),
      DI => count(26),
      S => Mcount_count_cy_12_rt_434,
      O => Mcount_count_cy(12)
    );
  Mcount_count_xor_12_Q : XORCY
    port map (
      CI => Mcount_count_cy(11),
      LI => Mcount_count_cy_12_rt_434,
      O => Result(12)
    );
  Mcount_count_cy_13_Q : MUXCY
    port map (
      CI => Mcount_count_cy(12),
      DI => count(26),
      S => Mcount_count_cy_13_rt_435,
      O => Mcount_count_cy(13)
    );
  Mcount_count_xor_13_Q : XORCY
    port map (
      CI => Mcount_count_cy(12),
      LI => Mcount_count_cy_13_rt_435,
      O => Result(13)
    );
  Mcount_count_cy_14_Q : MUXCY
    port map (
      CI => Mcount_count_cy(13),
      DI => count(26),
      S => Mcount_count_cy_14_rt_436,
      O => Mcount_count_cy(14)
    );
  Mcount_count_xor_14_Q : XORCY
    port map (
      CI => Mcount_count_cy(13),
      LI => Mcount_count_cy_14_rt_436,
      O => Result(14)
    );
  Mcount_count_cy_15_Q : MUXCY
    port map (
      CI => Mcount_count_cy(14),
      DI => count(26),
      S => Mcount_count_cy_15_rt_437,
      O => Mcount_count_cy(15)
    );
  Mcount_count_xor_15_Q : XORCY
    port map (
      CI => Mcount_count_cy(14),
      LI => Mcount_count_cy_15_rt_437,
      O => Result(15)
    );
  Mcount_count_cy_16_Q : MUXCY
    port map (
      CI => Mcount_count_cy(15),
      DI => count(26),
      S => Mcount_count_cy_16_rt_438,
      O => Mcount_count_cy(16)
    );
  Mcount_count_xor_16_Q : XORCY
    port map (
      CI => Mcount_count_cy(15),
      LI => Mcount_count_cy_16_rt_438,
      O => Result(16)
    );
  Mcount_count_cy_17_Q : MUXCY
    port map (
      CI => Mcount_count_cy(16),
      DI => count(26),
      S => Mcount_count_cy_17_rt_439,
      O => Mcount_count_cy(17)
    );
  Mcount_count_xor_17_Q : XORCY
    port map (
      CI => Mcount_count_cy(16),
      LI => Mcount_count_cy_17_rt_439,
      O => Result(17)
    );
  Mcount_count_cy_18_Q : MUXCY
    port map (
      CI => Mcount_count_cy(17),
      DI => count(26),
      S => Mcount_count_cy_18_rt_440,
      O => Mcount_count_cy(18)
    );
  Mcount_count_xor_18_Q : XORCY
    port map (
      CI => Mcount_count_cy(17),
      LI => Mcount_count_cy_18_rt_440,
      O => Result(18)
    );
  Mcount_count_cy_19_Q : MUXCY
    port map (
      CI => Mcount_count_cy(18),
      DI => count(26),
      S => Mcount_count_cy_19_rt_441,
      O => Mcount_count_cy(19)
    );
  Mcount_count_xor_19_Q : XORCY
    port map (
      CI => Mcount_count_cy(18),
      LI => Mcount_count_cy_19_rt_441,
      O => Result(19)
    );
  Mcount_count_cy_20_Q : MUXCY
    port map (
      CI => Mcount_count_cy(19),
      DI => count(26),
      S => Mcount_count_cy_20_rt_442,
      O => Mcount_count_cy(20)
    );
  Mcount_count_xor_20_Q : XORCY
    port map (
      CI => Mcount_count_cy(19),
      LI => Mcount_count_cy_20_rt_442,
      O => Result(20)
    );
  Mcount_count_cy_21_Q : MUXCY
    port map (
      CI => Mcount_count_cy(20),
      DI => count(26),
      S => Mcount_count_cy_21_rt_443,
      O => Mcount_count_cy(21)
    );
  Mcount_count_xor_21_Q : XORCY
    port map (
      CI => Mcount_count_cy(20),
      LI => Mcount_count_cy_21_rt_443,
      O => Result(21)
    );
  Mcount_count_cy_22_Q : MUXCY
    port map (
      CI => Mcount_count_cy(21),
      DI => count(26),
      S => Mcount_count_cy_22_rt_444,
      O => Mcount_count_cy(22)
    );
  Mcount_count_xor_22_Q : XORCY
    port map (
      CI => Mcount_count_cy(21),
      LI => Mcount_count_cy_22_rt_444,
      O => Result(22)
    );
  Mcount_count_cy_23_Q : MUXCY
    port map (
      CI => Mcount_count_cy(22),
      DI => count(26),
      S => Mcount_count_cy_23_rt_445,
      O => Mcount_count_cy(23)
    );
  Mcount_count_xor_23_Q : XORCY
    port map (
      CI => Mcount_count_cy(22),
      LI => Mcount_count_cy_23_rt_445,
      O => Result(23)
    );
  Mcount_count_cy_24_Q : MUXCY
    port map (
      CI => Mcount_count_cy(23),
      DI => count(26),
      S => Mcount_count_cy_24_rt_446,
      O => Mcount_count_cy(24)
    );
  Mcount_count_xor_24_Q : XORCY
    port map (
      CI => Mcount_count_cy(23),
      LI => Mcount_count_cy_24_rt_446,
      O => Result(24)
    );
  Mcount_count_xor_25_Q : XORCY
    port map (
      CI => Mcount_count_cy(24),
      LI => Mcount_count_xor_25_rt_498,
      O => Result(25)
    );
  Mcount_div_22_dff_40_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_div_22_dff_40_cy_0_rt_521,
      O => Mcount_div_22_dff_40_cy_0_Q_286
    );
  Mcount_div_22_dff_40_cy_1_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_0_Q_286,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_1_rt_447,
      O => Mcount_div_22_dff_40_cy_1_Q_287
    );
  Mcount_div_22_dff_40_xor_1_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_0_Q_286,
      LI => Mcount_div_22_dff_40_cy_1_rt_447,
      O => Result_1_1
    );
  Mcount_div_22_dff_40_cy_2_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_1_Q_287,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_2_rt_448,
      O => Mcount_div_22_dff_40_cy_2_Q_288
    );
  Mcount_div_22_dff_40_xor_2_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_1_Q_287,
      LI => Mcount_div_22_dff_40_cy_2_rt_448,
      O => Result_2_1
    );
  Mcount_div_22_dff_40_cy_3_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_2_Q_288,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_3_rt_449,
      O => Mcount_div_22_dff_40_cy_3_Q_289
    );
  Mcount_div_22_dff_40_xor_3_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_2_Q_288,
      LI => Mcount_div_22_dff_40_cy_3_rt_449,
      O => Result_3_1
    );
  Mcount_div_22_dff_40_cy_4_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_3_Q_289,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_4_rt_450,
      O => Mcount_div_22_dff_40_cy_4_Q_290
    );
  Mcount_div_22_dff_40_xor_4_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_3_Q_289,
      LI => Mcount_div_22_dff_40_cy_4_rt_450,
      O => Result_4_1
    );
  Mcount_div_22_dff_40_cy_5_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_4_Q_290,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_5_rt_451,
      O => Mcount_div_22_dff_40_cy_5_Q_291
    );
  Mcount_div_22_dff_40_xor_5_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_4_Q_290,
      LI => Mcount_div_22_dff_40_cy_5_rt_451,
      O => Result_5_1
    );
  Mcount_div_22_dff_40_cy_6_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_5_Q_291,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_6_rt_452,
      O => Mcount_div_22_dff_40_cy_6_Q_292
    );
  Mcount_div_22_dff_40_xor_6_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_5_Q_291,
      LI => Mcount_div_22_dff_40_cy_6_rt_452,
      O => Result_6_1
    );
  Mcount_div_22_dff_40_cy_7_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_6_Q_292,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_7_rt_453,
      O => Mcount_div_22_dff_40_cy_7_Q_293
    );
  Mcount_div_22_dff_40_xor_7_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_6_Q_292,
      LI => Mcount_div_22_dff_40_cy_7_rt_453,
      O => Result_7_1
    );
  Mcount_div_22_dff_40_cy_8_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_7_Q_293,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_8_rt_454,
      O => Mcount_div_22_dff_40_cy_8_Q_294
    );
  Mcount_div_22_dff_40_xor_8_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_7_Q_293,
      LI => Mcount_div_22_dff_40_cy_8_rt_454,
      O => Result_8_1
    );
  Mcount_div_22_dff_40_cy_9_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_8_Q_294,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_9_rt_455,
      O => Mcount_div_22_dff_40_cy_9_Q_295
    );
  Mcount_div_22_dff_40_xor_9_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_8_Q_294,
      LI => Mcount_div_22_dff_40_cy_9_rt_455,
      O => Result_9_1
    );
  Mcount_div_22_dff_40_cy_10_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_9_Q_295,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_10_rt_456,
      O => Mcount_div_22_dff_40_cy_10_Q_296
    );
  Mcount_div_22_dff_40_xor_10_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_9_Q_295,
      LI => Mcount_div_22_dff_40_cy_10_rt_456,
      O => Result_10_1
    );
  Mcount_div_22_dff_40_cy_11_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_10_Q_296,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_11_rt_457,
      O => Mcount_div_22_dff_40_cy_11_Q_297
    );
  Mcount_div_22_dff_40_xor_11_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_10_Q_296,
      LI => Mcount_div_22_dff_40_cy_11_rt_457,
      O => Result_11_1
    );
  Mcount_div_22_dff_40_cy_12_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_11_Q_297,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_12_rt_458,
      O => Mcount_div_22_dff_40_cy_12_Q_298
    );
  Mcount_div_22_dff_40_xor_12_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_11_Q_297,
      LI => Mcount_div_22_dff_40_cy_12_rt_458,
      O => Result_12_1
    );
  Mcount_div_22_dff_40_cy_13_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_12_Q_298,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_13_rt_459,
      O => Mcount_div_22_dff_40_cy_13_Q_299
    );
  Mcount_div_22_dff_40_xor_13_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_12_Q_298,
      LI => Mcount_div_22_dff_40_cy_13_rt_459,
      O => Result_13_1
    );
  Mcount_div_22_dff_40_cy_14_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_13_Q_299,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_14_rt_460,
      O => Mcount_div_22_dff_40_cy_14_Q_300
    );
  Mcount_div_22_dff_40_xor_14_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_13_Q_299,
      LI => Mcount_div_22_dff_40_cy_14_rt_460,
      O => Result_14_1
    );
  Mcount_div_22_dff_40_cy_15_Q : MUXCY
    port map (
      CI => Mcount_div_22_dff_40_cy_14_Q_300,
      DI => count(26),
      S => Mcount_div_22_dff_40_cy_15_rt_461,
      O => Mcount_div_22_dff_40_cy_15_Q_301
    );
  Mcount_div_22_dff_40_xor_15_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_14_Q_300,
      LI => Mcount_div_22_dff_40_cy_15_rt_461,
      O => Result_15_1
    );
  Mcount_div_22_dff_40_xor_16_Q : XORCY
    port map (
      CI => Mcount_div_22_dff_40_cy_15_Q_301,
      LI => Mcount_div_22_dff_40_xor_16_rt_499,
      O => Result_16_1
    );
  Mcount_digit4_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_digit4_lut(0),
      O => Mcount_digit4_cy(0)
    );
  Mcount_digit4_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_digit4_lut(0),
      O => Result_0_5
    );
  Mcount_digit4_cy_1_Q : MUXCY
    port map (
      CI => Mcount_digit4_cy(0),
      DI => count(26),
      S => Mcount_digit4_cy_1_rt_462,
      O => Mcount_digit4_cy(1)
    );
  Mcount_digit4_xor_1_Q : XORCY
    port map (
      CI => Mcount_digit4_cy(0),
      LI => Mcount_digit4_cy_1_rt_462,
      O => Result_1_5
    );
  Mcount_digit4_xor_2_Q : XORCY
    port map (
      CI => Mcount_digit4_cy(1),
      LI => Mcount_digit4_xor_2_rt_500,
      O => Result_2_5
    );
  Mcount_digit2_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_digit2_lut(0),
      O => Mcount_digit2_cy(0)
    );
  Mcount_digit2_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_digit2_lut(0),
      O => Result_0_3
    );
  Mcount_digit2_cy_1_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(0),
      DI => count(26),
      S => Mcount_digit2_cy_1_rt_463,
      O => Mcount_digit2_cy(1)
    );
  Mcount_digit2_xor_1_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(0),
      LI => Mcount_digit2_cy_1_rt_463,
      O => Result_1_3
    );
  Mcount_digit2_cy_2_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(1),
      DI => count(26),
      S => Mcount_digit2_cy_2_rt_464,
      O => Mcount_digit2_cy(2)
    );
  Mcount_digit2_xor_2_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(1),
      LI => Mcount_digit2_cy_2_rt_464,
      O => Result_2_3
    );
  Mcount_digit2_cy_3_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(2),
      DI => count(26),
      S => Mcount_digit2_cy_3_rt_465,
      O => Mcount_digit2_cy(3)
    );
  Mcount_digit2_xor_3_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(2),
      LI => Mcount_digit2_cy_3_rt_465,
      O => Result_3_3
    );
  Mcount_digit2_cy_4_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(3),
      DI => count(26),
      S => Mcount_digit2_cy_4_rt_466,
      O => Mcount_digit2_cy(4)
    );
  Mcount_digit2_xor_4_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(3),
      LI => Mcount_digit2_cy_4_rt_466,
      O => Result_4_3
    );
  Mcount_digit2_cy_5_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(4),
      DI => count(26),
      S => Mcount_digit2_cy_5_rt_467,
      O => Mcount_digit2_cy(5)
    );
  Mcount_digit2_xor_5_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(4),
      LI => Mcount_digit2_cy_5_rt_467,
      O => Result_5_3
    );
  Mcount_digit2_cy_6_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(5),
      DI => count(26),
      S => Mcount_digit2_cy_6_rt_468,
      O => Mcount_digit2_cy(6)
    );
  Mcount_digit2_xor_6_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(5),
      LI => Mcount_digit2_cy_6_rt_468,
      O => Result_6_3
    );
  Mcount_digit2_cy_7_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(6),
      DI => count(26),
      S => Mcount_digit2_cy_7_rt_469,
      O => Mcount_digit2_cy(7)
    );
  Mcount_digit2_xor_7_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(6),
      LI => Mcount_digit2_cy_7_rt_469,
      O => Result_7_3
    );
  Mcount_digit2_cy_8_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(7),
      DI => count(26),
      S => Mcount_digit2_cy_8_rt_470,
      O => Mcount_digit2_cy(8)
    );
  Mcount_digit2_xor_8_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(7),
      LI => Mcount_digit2_cy_8_rt_470,
      O => Result_8_3
    );
  Mcount_digit2_cy_9_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(8),
      DI => count(26),
      S => Mcount_digit2_cy_9_rt_471,
      O => Mcount_digit2_cy(9)
    );
  Mcount_digit2_xor_9_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(8),
      LI => Mcount_digit2_cy_9_rt_471,
      O => Result_9_3
    );
  Mcount_digit2_cy_10_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(9),
      DI => count(26),
      S => Mcount_digit2_cy_10_rt_472,
      O => Mcount_digit2_cy(10)
    );
  Mcount_digit2_xor_10_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(9),
      LI => Mcount_digit2_cy_10_rt_472,
      O => Result_10_3
    );
  Mcount_digit2_cy_11_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(10),
      DI => count(26),
      S => Mcount_digit2_cy_11_rt_473,
      O => Mcount_digit2_cy(11)
    );
  Mcount_digit2_xor_11_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(10),
      LI => Mcount_digit2_cy_11_rt_473,
      O => Result_11_3
    );
  Mcount_digit2_cy_12_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(11),
      DI => count(26),
      S => Mcount_digit2_cy_12_rt_474,
      O => Mcount_digit2_cy(12)
    );
  Mcount_digit2_xor_12_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(11),
      LI => Mcount_digit2_cy_12_rt_474,
      O => Result_12_3
    );
  Mcount_digit2_cy_13_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(12),
      DI => count(26),
      S => Mcount_digit2_cy_13_rt_475,
      O => Mcount_digit2_cy(13)
    );
  Mcount_digit2_xor_13_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(12),
      LI => Mcount_digit2_cy_13_rt_475,
      O => Result_13_3
    );
  Mcount_digit2_cy_14_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(13),
      DI => count(26),
      S => Mcount_digit2_cy_14_rt_476,
      O => Mcount_digit2_cy(14)
    );
  Mcount_digit2_xor_14_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(13),
      LI => Mcount_digit2_cy_14_rt_476,
      O => Result_14_3
    );
  Mcount_digit2_cy_15_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(14),
      DI => count(26),
      S => Mcount_digit2_cy_15_rt_477,
      O => Mcount_digit2_cy(15)
    );
  Mcount_digit2_xor_15_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(14),
      LI => Mcount_digit2_cy_15_rt_477,
      O => Result_15_3
    );
  Mcount_digit2_cy_16_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(15),
      DI => count(26),
      S => Mcount_digit2_cy_16_rt_478,
      O => Mcount_digit2_cy(16)
    );
  Mcount_digit2_xor_16_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(15),
      LI => Mcount_digit2_cy_16_rt_478,
      O => Result_16_3
    );
  Mcount_digit2_cy_17_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(16),
      DI => count(26),
      S => Mcount_digit2_cy_17_rt_479,
      O => Mcount_digit2_cy(17)
    );
  Mcount_digit2_xor_17_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(16),
      LI => Mcount_digit2_cy_17_rt_479,
      O => Result_17_3
    );
  Mcount_digit2_cy_18_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(17),
      DI => count(26),
      S => Mcount_digit2_cy_18_rt_480,
      O => Mcount_digit2_cy(18)
    );
  Mcount_digit2_xor_18_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(17),
      LI => Mcount_digit2_cy_18_rt_480,
      O => Result_18_3
    );
  Mcount_digit2_cy_19_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(18),
      DI => count(26),
      S => Mcount_digit2_cy_19_rt_481,
      O => Mcount_digit2_cy(19)
    );
  Mcount_digit2_xor_19_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(18),
      LI => Mcount_digit2_cy_19_rt_481,
      O => Result_19_3
    );
  Mcount_digit2_cy_20_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(19),
      DI => count(26),
      S => Mcount_digit2_cy_20_rt_482,
      O => Mcount_digit2_cy(20)
    );
  Mcount_digit2_xor_20_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(19),
      LI => Mcount_digit2_cy_20_rt_482,
      O => Result_20_3
    );
  Mcount_digit2_cy_21_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(20),
      DI => count(26),
      S => Mcount_digit2_cy_21_rt_483,
      O => Mcount_digit2_cy(21)
    );
  Mcount_digit2_xor_21_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(20),
      LI => Mcount_digit2_cy_21_rt_483,
      O => Result_21_3
    );
  Mcount_digit2_cy_22_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(21),
      DI => count(26),
      S => Mcount_digit2_cy_22_rt_484,
      O => Mcount_digit2_cy(22)
    );
  Mcount_digit2_xor_22_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(21),
      LI => Mcount_digit2_cy_22_rt_484,
      O => Result_22_3
    );
  Mcount_digit2_cy_23_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(22),
      DI => count(26),
      S => Mcount_digit2_cy_23_rt_485,
      O => Mcount_digit2_cy(23)
    );
  Mcount_digit2_xor_23_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(22),
      LI => Mcount_digit2_cy_23_rt_485,
      O => Result_23_2
    );
  Mcount_digit2_cy_24_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(23),
      DI => count(26),
      S => Mcount_digit2_cy_24_rt_486,
      O => Mcount_digit2_cy(24)
    );
  Mcount_digit2_xor_24_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(23),
      LI => Mcount_digit2_cy_24_rt_486,
      O => Result_24_2
    );
  Mcount_digit2_cy_25_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(24),
      DI => count(26),
      S => Mcount_digit2_cy_25_rt_487,
      O => Mcount_digit2_cy(25)
    );
  Mcount_digit2_xor_25_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(24),
      LI => Mcount_digit2_cy_25_rt_487,
      O => Result_25_2
    );
  Mcount_digit2_cy_26_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(25),
      DI => count(26),
      S => Mcount_digit2_cy_26_rt_488,
      O => Mcount_digit2_cy(26)
    );
  Mcount_digit2_xor_26_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(25),
      LI => Mcount_digit2_cy_26_rt_488,
      O => Result_26_2
    );
  Mcount_digit2_cy_27_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(26),
      DI => count(26),
      S => Mcount_digit2_cy_27_rt_489,
      O => Mcount_digit2_cy(27)
    );
  Mcount_digit2_xor_27_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(26),
      LI => Mcount_digit2_cy_27_rt_489,
      O => Result_27_2
    );
  Mcount_digit2_cy_28_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(27),
      DI => count(26),
      S => Mcount_digit2_cy_28_rt_490,
      O => Mcount_digit2_cy(28)
    );
  Mcount_digit2_xor_28_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(27),
      LI => Mcount_digit2_cy_28_rt_490,
      O => Result_28_2
    );
  Mcount_digit2_cy_29_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(28),
      DI => count(26),
      S => Mcount_digit2_cy_29_rt_491,
      O => Mcount_digit2_cy(29)
    );
  Mcount_digit2_xor_29_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(28),
      LI => Mcount_digit2_cy_29_rt_491,
      O => Result_29_2
    );
  Mcount_digit2_cy_30_Q : MUXCY
    port map (
      CI => Mcount_digit2_cy(29),
      DI => count(26),
      S => Mcount_digit2_cy_30_rt_492,
      O => Mcount_digit2_cy(30)
    );
  Mcount_digit2_xor_30_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(29),
      LI => Mcount_digit2_cy_30_rt_492,
      O => Result_30_2
    );
  Mcount_digit2_xor_31_Q : XORCY
    port map (
      CI => Mcount_digit2_cy(30),
      LI => Mcount_digit2_xor_31_rt_501,
      O => Result_31_2
    );
  Mcount_digit3_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_digit3_lut(0),
      O => Mcount_digit3_cy(0)
    );
  Mcount_digit3_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_digit3_lut(0),
      O => Result_0_4
    );
  Mcount_digit3_cy_1_Q : MUXCY
    port map (
      CI => Mcount_digit3_cy(0),
      DI => count(26),
      S => Mcount_digit3_cy_1_rt_493,
      O => Mcount_digit3_cy(1)
    );
  Mcount_digit3_xor_1_Q : XORCY
    port map (
      CI => Mcount_digit3_cy(0),
      LI => Mcount_digit3_cy_1_rt_493,
      O => Result_1_4
    );
  Mcount_digit3_cy_2_Q : MUXCY
    port map (
      CI => Mcount_digit3_cy(1),
      DI => count(26),
      S => Mcount_digit3_cy_2_rt_494,
      O => Mcount_digit3_cy(2)
    );
  Mcount_digit3_xor_2_Q : XORCY
    port map (
      CI => Mcount_digit3_cy(1),
      LI => Mcount_digit3_cy_2_rt_494,
      O => Result_2_4
    );
  Mcount_digit3_xor_3_Q : XORCY
    port map (
      CI => Mcount_digit3_cy(2),
      LI => Mcount_digit3_xor_3_rt_502,
      O => Result_3_4
    );
  Mcount_digit6_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_digit6_lut(0),
      O => Mcount_digit6_cy(0)
    );
  Mcount_digit6_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_digit6_lut(0),
      O => Result_0_6
    );
  Mcount_digit6_xor_1_Q : XORCY
    port map (
      CI => Mcount_digit6_cy(0),
      LI => Mcount_digit6_xor_1_rt_503,
      O => Result_1_6
    );
  Mcount_digit5_cy_0_Q : MUXCY
    port map (
      CI => count(26),
      DI => N0,
      S => Mcount_digit5_lut(0),
      O => Mcount_digit5_cy(0)
    );
  Mcount_digit5_xor_0_Q : XORCY
    port map (
      CI => count(26),
      LI => Mcount_digit5_lut(0),
      O => Result_0_7
    );
  Mcount_digit5_cy_1_Q : MUXCY
    port map (
      CI => Mcount_digit5_cy(0),
      DI => count(26),
      S => Mcount_digit5_cy_1_rt_495,
      O => Mcount_digit5_cy(1)
    );
  Mcount_digit5_xor_1_Q : XORCY
    port map (
      CI => Mcount_digit5_cy(0),
      LI => Mcount_digit5_cy_1_rt_495,
      O => Result_1_7
    );
  Mcount_digit5_cy_2_Q : MUXCY
    port map (
      CI => Mcount_digit5_cy(1),
      DI => count(26),
      S => Mcount_digit5_cy_2_rt_496,
      O => Mcount_digit5_cy(2)
    );
  Mcount_digit5_xor_2_Q : XORCY
    port map (
      CI => Mcount_digit5_cy(1),
      LI => Mcount_digit5_cy_2_rt_496,
      O => Result_2_7
    );
  Mcount_digit5_xor_3_Q : XORCY
    port map (
      CI => Mcount_digit5_cy(2),
      LI => Mcount_digit5_xor_3_rt_504,
      O => Result_3_7
    );
  GND_5_o_digit1_31_equal_2_o_31_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => digit1(0),
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(3),
      O => GND_5_o_digit1_31_equal_2_o
    );
  GND_5_o_digit3_31_equal_6_o_31_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => digit3(0),
      I1 => digit3(1),
      I2 => digit3(2),
      I3 => digit3(3),
      O => GND_5_o_digit3_31_equal_6_o
    );
  GND_5_o_digit5_31_equal_10_o_31_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => digit5(3),
      I1 => digit5(2),
      I2 => digit5(1),
      I3 => digit5(0),
      O => GND_5_o_digit5_31_equal_10_o
    );
  Mcount_digit2_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_0
    );
  Mcount_digit2_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_1
    );
  Mcount_digit2_eqn_210 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_2
    );
  Mcount_digit2_eqn_32 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_3
    );
  Mcount_digit2_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_4
    );
  Mcount_digit2_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_5
    );
  Mcount_digit2_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_6
    );
  Mcount_digit2_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_7_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_7
    );
  Mcount_digit2_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_8_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_8
    );
  Mcount_digit2_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_9_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_9
    );
  Mcount_digit2_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_10_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_10
    );
  Mcount_digit2_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_11_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_11
    );
  Mcount_digit2_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_12_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_12
    );
  Mcount_digit2_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_13_3,
      I1 => GND_5_o_digit2_31_equal_4_o,
      O => Mcount_digit2_eqn_13
    );
  Mcount_digit2_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_14_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_14
    );
  Mcount_digit2_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_15_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_15
    );
  Mcount_digit2_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_16_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_16
    );
  Mcount_digit2_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_17_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_17
    );
  Mcount_digit2_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_18_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_18
    );
  Mcount_digit2_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_19_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_19
    );
  Mcount_digit2_eqn_201 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_20_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_20
    );
  Mcount_digit2_eqn_211 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_21_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_21
    );
  Mcount_digit2_eqn_221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_22_3,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_22
    );
  Mcount_digit2_eqn_231 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_23_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_23
    );
  Mcount_digit2_eqn_241 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_24_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_24
    );
  Mcount_digit2_eqn_251 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_25_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_25
    );
  Mcount_digit2_eqn_261 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_26_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_26
    );
  Mcount_digit2_eqn_271 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_27_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_7_528,
      O => Mcount_digit2_eqn_27
    );
  Mcount_digit2_eqn_281 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_28_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => Mcount_digit2_eqn_28
    );
  Mcount_digit2_eqn_291 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_29_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => Mcount_digit2_eqn_29
    );
  Mcount_digit2_eqn_301 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_30_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => Mcount_digit2_eqn_30
    );
  Mcount_digit2_eqn_311 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_31_2,
      I1 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => Mcount_digit2_eqn_31
    );
  Mram_PWR_5_o_GND_5_o_mux_58_OUT12 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => div_22_dff_40_15_Q,
      O => Mram_PWR_5_o_GND_5_o_mux_58_OUT
    );
  Mram_PWR_5_o_GND_5_o_mux_58_OUT111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => div_22_dff_40_15_Q,
      I1 => div_22_dff_40_16_Q,
      O => Mram_PWR_5_o_GND_5_o_mux_58_OUT1
    );
  Mram_PWR_5_o_GND_5_o_mux_58_OUT21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => div_22_dff_40_15_Q,
      O => Mram_PWR_5_o_GND_5_o_mux_58_OUT2
    );
  Mram_PWR_5_o_GND_5_o_mux_58_OUT31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => div_22_dff_40_15_Q,
      I1 => div_22_dff_40_16_Q,
      O => Mram_PWR_5_o_GND_5_o_mux_58_OUT3
    );
  Mram_digit3_3_GND_5_o_wide_mux_49_OUT11 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => digit3(3),
      I1 => digit3(2),
      I2 => digit3(1),
      O => Mram_digit3_3_GND_5_o_wide_mux_49_OUT
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => div_22_dff_40_16_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT11_347
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT121 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => div_22_dff_40_16_Q,
      I2 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT12_348
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT131 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => div_22_dff_40_16_Q,
      I2 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT13
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT141 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => div_22_dff_40_16_Q,
      I2 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT14
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT151 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => div_22_dff_40_16_Q,
      I2 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT15_351
    );
  GND_5_o_digit6_31_equal_12_o_31_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => digit6(0),
      I1 => digit6(1),
      O => GND_5_o_digit6_31_equal_12_o
    );
  GND_5_o_count_31_equal_44_o_31_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count(20),
      I1 => count(19),
      I2 => count(22),
      I3 => count(21),
      I4 => count(25),
      I5 => count(23),
      O => GND_5_o_count_31_equal_44_o_31_Q
    );
  GND_5_o_count_31_equal_44_o_31_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count(12),
      I1 => count(7),
      I2 => count(14),
      I3 => count(13),
      I4 => count(17),
      I5 => count(15),
      O => GND_5_o_count_31_equal_44_o_31_1_354
    );
  GND_5_o_count_31_equal_44_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      I3 => count(3),
      I4 => count(4),
      I5 => count(5),
      O => GND_5_o_count_31_equal_44_o_31_2_355
    );
  GND_5_o_count_31_equal_44_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => count(8),
      I1 => count(6),
      I2 => count(9),
      I3 => count(10),
      I4 => count(11),
      I5 => count(16),
      O => GND_5_o_count_31_equal_44_o_31_3_356
    );
  GND_5_o_count_31_equal_44_o_31_5 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => count(18),
      I1 => count(24),
      I2 => GND_5_o_count_31_equal_44_o_31_3_356,
      I3 => GND_5_o_count_31_equal_44_o_31_1_354,
      I4 => GND_5_o_count_31_equal_44_o_31_Q,
      I5 => GND_5_o_count_31_equal_44_o_31_2_355,
      O => GND_5_o_count_31_equal_44_o
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT21 : LUT4
    generic map(
      INIT => X"2921"
    )
    port map (
      I0 => digit3(2),
      I1 => digit3(1),
      I2 => digit3(3),
      I3 => digit3(0),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT2
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT22 : LUT6
    generic map(
      INIT => X"C00FAAAA00000000"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT2,
      I1 => digit4(0),
      I2 => digit4(1),
      I3 => digit4(2),
      I4 => div_22_dff_40_15_Q,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT11_347,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT21_361
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT23 : LUT5
    generic map(
      INIT => X"2C030000"
    )
    port map (
      I0 => digit5(0),
      I1 => digit5(3),
      I2 => digit5(1),
      I3 => digit5(2),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT14,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT22_362
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT24 : LUT5
    generic map(
      INIT => X"2C030000"
    )
    port map (
      I0 => digit1(0),
      I1 => digit1(3),
      I2 => digit1(1),
      I3 => digit1(2),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT15_351,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT23_363
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT25 : LUT5
    generic map(
      INIT => X"2C030000"
    )
    port map (
      I0 => digit2(0),
      I1 => digit2(3),
      I2 => digit2(1),
      I3 => digit2(2),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT13,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT24_364
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT26 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      I0 => digit6(1),
      I1 => Mmux_digit1_3_digit3_3_mux_72_OUT12_348,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT21_361,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT24_364,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT22_362,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT23_363,
      O => digit1_3_digit3_3_mux_72_OUT_1_Q
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT721 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => digit2(2),
      I1 => digit2(3),
      I2 => digit2(0),
      I3 => digit2(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT721_365
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT722 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => digit5(2),
      I1 => digit5(3),
      I2 => digit5(0),
      I3 => digit5(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT722_366
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT723 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => digit1(2),
      I1 => digit1(3),
      I2 => digit1(0),
      I3 => digit1(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT723_367
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT31 : LUT4
    generic map(
      INIT => X"4504"
    )
    port map (
      I0 => digit5(3),
      I1 => digit5(0),
      I2 => digit5(2),
      I3 => digit5(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT3
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT32 : LUT4
    generic map(
      INIT => X"4504"
    )
    port map (
      I0 => digit1(3),
      I1 => digit1(0),
      I2 => digit1(2),
      I3 => digit1(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT31_369
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT33 : LUT4
    generic map(
      INIT => X"4504"
    )
    port map (
      I0 => digit2(3),
      I1 => digit2(0),
      I2 => digit2(2),
      I3 => digit2(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT32_370
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT35 : LUT4
    generic map(
      INIT => X"4504"
    )
    port map (
      I0 => digit3(3),
      I1 => digit3(0),
      I2 => digit3(2),
      I3 => digit3(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT34_372
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT36 : LUT6
    generic map(
      INIT => X"CF0CAAAA00000000"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT34_372,
      I1 => digit4(0),
      I2 => digit4(2),
      I3 => digit4(1),
      I4 => div_22_dff_40_15_Q,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT11_347,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT35_373
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT37 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT33_371,
      I1 => Mmux_digit1_3_digit3_3_mux_72_OUT14,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT3,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT15_351,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT31_369,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT35_373,
      O => digit1_3_digit3_3_mux_72_OUT_2_Q
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT71 : LUT4
    generic map(
      INIT => X"2028"
    )
    port map (
      I0 => digit1(2),
      I1 => digit1(0),
      I2 => digit1(1),
      I3 => digit1(3),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT7
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT72 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => digit4(2),
      I1 => digit4(1),
      I2 => digit4(0),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT71_375
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT73 : LUT4
    generic map(
      INIT => X"82A8"
    )
    port map (
      I0 => digit3(2),
      I1 => digit3(3),
      I2 => digit3(1),
      I3 => digit3(0),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT73_376
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT75 : LUT4
    generic map(
      INIT => X"2028"
    )
    port map (
      I0 => digit2(2),
      I1 => digit2(0),
      I2 => digit2(1),
      I3 => digit2(3),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT75_377
    );
  GND_5_o_digit2_31_equal_4_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => digit2(8),
      I1 => digit2(9),
      I2 => digit2(0),
      I3 => digit2(2),
      I4 => digit2(1),
      I5 => digit2(3),
      O => GND_5_o_digit2_31_equal_4_o_31_Q
    );
  GND_5_o_digit2_31_equal_4_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => digit2(6),
      I1 => digit2(7),
      I2 => digit2(5),
      I3 => digit2(4),
      I4 => digit2(31),
      I5 => digit2(30),
      O => GND_5_o_digit2_31_equal_4_o_31_1_379
    );
  GND_5_o_digit2_31_equal_4_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => digit2(28),
      I1 => digit2(29),
      I2 => digit2(27),
      I3 => digit2(26),
      I4 => digit2(25),
      I5 => digit2(24),
      O => GND_5_o_digit2_31_equal_4_o_31_2_380
    );
  GND_5_o_digit2_31_equal_4_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => digit2(22),
      I1 => digit2(23),
      I2 => digit2(21),
      I3 => digit2(20),
      I4 => digit2(19),
      I5 => digit2(18),
      O => GND_5_o_digit2_31_equal_4_o_31_3_381
    );
  GND_5_o_digit2_31_equal_4_o_31_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => digit2(16),
      I1 => digit2(17),
      I2 => digit2(15),
      I3 => digit2(14),
      I4 => digit2(13),
      I5 => digit2(12),
      O => GND_5_o_digit2_31_equal_4_o_31_4_382
    );
  GND_5_o_digit2_31_equal_4_o_31_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => digit2(10),
      I1 => digit2(11),
      O => GND_5_o_digit2_31_equal_4_o_31_5_383
    );
  GND_5_o_digit2_31_equal_4_o_31_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => GND_5_o_digit2_31_equal_4_o_31_5_383,
      I1 => GND_5_o_digit2_31_equal_4_o_31_4_382,
      I2 => GND_5_o_digit2_31_equal_4_o_31_3_381,
      I3 => GND_5_o_digit2_31_equal_4_o_31_2_380,
      I4 => GND_5_o_digit2_31_equal_4_o_31_1_379,
      I5 => GND_5_o_digit2_31_equal_4_o_31_Q,
      O => GND_5_o_digit2_31_equal_4_o
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT61 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => digit5(2),
      I1 => digit5(1),
      I2 => digit5(3),
      I3 => digit5(0),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT6
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT63 : LUT4
    generic map(
      INIT => X"8908"
    )
    port map (
      I0 => digit3(2),
      I1 => digit3(3),
      I2 => digit3(0),
      I3 => digit3(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT62_386
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT64 : LUT6
    generic map(
      INIT => X"0404FF0000000000"
    )
    port map (
      I0 => digit4(0),
      I1 => digit4(1),
      I2 => digit4(2),
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT62_386,
      I4 => div_22_dff_40_15_Q,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT11_347,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT63_387
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT65 : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => digit1(0),
      I1 => digit1(3),
      I2 => digit1(2),
      I3 => digit1(1),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT15_351,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT64_388
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT66 : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => digit2(0),
      I1 => digit2(3),
      I2 => digit2(2),
      I3 => digit2(1),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT13,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT65_389
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT67 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT72_352,
      I1 => Mmux_digit1_3_digit3_3_mux_72_OUT61_385,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT63_387,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT65_389,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT64_388,
      O => digit1_3_digit3_3_mux_72_OUT_5_Q
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT51 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => digit1(1),
      I1 => digit1(0),
      I2 => digit1(2),
      I3 => digit1(3),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT5
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT52 : LUT3
    generic map(
      INIT => X"94"
    )
    port map (
      I0 => digit4(1),
      I1 => digit4(0),
      I2 => digit4(2),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT51_391
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT53 : LUT4
    generic map(
      INIT => X"8294"
    )
    port map (
      I0 => digit3(1),
      I1 => digit3(0),
      I2 => digit3(2),
      I3 => digit3(3),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT53_392
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT55 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => digit2(1),
      I1 => digit2(0),
      I2 => digit2(2),
      I3 => digit2(3),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT55_394
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT56 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => digit5(1),
      I1 => digit5(0),
      I2 => digit5(2),
      I3 => digit5(3),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT56_395
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT81 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => digit3(3),
      I1 => digit3(1),
      I2 => digit3(0),
      I3 => digit3(2),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT8
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT82 : LUT6
    generic map(
      INIT => X"003CAAAA00000000"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT8,
      I1 => digit4(0),
      I2 => digit4(2),
      I3 => digit4(1),
      I4 => div_22_dff_40_15_Q,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT11_347,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT81_397
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT43 : LUT5
    generic map(
      INIT => X"57100000"
    )
    port map (
      I0 => digit2(3),
      I1 => digit2(1),
      I2 => digit2(2),
      I3 => digit2(0),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT13,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT42_400
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT44 : LUT5
    generic map(
      INIT => X"57100000"
    )
    port map (
      I0 => digit5(3),
      I1 => digit5(1),
      I2 => digit5(2),
      I3 => digit5(0),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT14,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT43_401
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT45 : LUT5
    generic map(
      INIT => X"57100000"
    )
    port map (
      I0 => digit1(3),
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(0),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT15_351,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT44_402
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT46 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
    port map (
      I0 => digit6(0),
      I1 => Mmux_digit1_3_digit3_3_mux_72_OUT12_348,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT41_399,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT42_400,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT44_402,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT43_401,
      O => digit1_3_digit3_3_mux_72_OUT_3_Q
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT11 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => digit2(3),
      I1 => digit2(2),
      I2 => digit2(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT1
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT12 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => digit1(3),
      I1 => digit1(2),
      I2 => digit1(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT16
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_1
    );
  hour_IBUF : IBUF
    port map (
      I => hour,
      O => hour_IBUF_2
    );
  anode_3_OBUF : OBUF
    port map (
      I => anode_3_13,
      O => anode(3)
    );
  anode_2_OBUF : OBUF
    port map (
      I => anode_2_14,
      O => anode(2)
    );
  anode_1_OBUF : OBUF
    port map (
      I => anode_1_15,
      O => anode(1)
    );
  anode_0_OBUF : OBUF
    port map (
      I => anode_0_16,
      O => anode(0)
    );
  segments_7_OBUF : OBUF
    port map (
      I => segments_7_5,
      O => segments(7)
    );
  segments_6_OBUF : OBUF
    port map (
      I => segments_6_6,
      O => segments(6)
    );
  segments_5_OBUF : OBUF
    port map (
      I => segments_5_7,
      O => segments(5)
    );
  segments_4_OBUF : OBUF
    port map (
      I => segments_4_8,
      O => segments(4)
    );
  segments_3_OBUF : OBUF
    port map (
      I => segments_3_9,
      O => segments(3)
    );
  segments_2_OBUF : OBUF
    port map (
      I => segments_2_10,
      O => segments(2)
    );
  segments_1_OBUF : OBUF
    port map (
      I => segments_1_11,
      O => segments(1)
    );
  segments_0_OBUF : OBUF
    port map (
      I => segments_0_12,
      O => segments(0)
    );
  Mcount_digit1_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit1(1),
      O => Mcount_digit1_cy_1_rt_420
    );
  Mcount_digit1_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit1(2),
      O => Mcount_digit1_cy_2_rt_421
    );
  Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(1),
      O => Mcount_count_cy_1_rt_423
    );
  Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(2),
      O => Mcount_count_cy_2_rt_424
    );
  Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(3),
      O => Mcount_count_cy_3_rt_425
    );
  Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(4),
      O => Mcount_count_cy_4_rt_426
    );
  Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(5),
      O => Mcount_count_cy_5_rt_427
    );
  Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(6),
      O => Mcount_count_cy_6_rt_428
    );
  Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(7),
      O => Mcount_count_cy_7_rt_429
    );
  Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(8),
      O => Mcount_count_cy_8_rt_430
    );
  Mcount_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(9),
      O => Mcount_count_cy_9_rt_431
    );
  Mcount_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(10),
      O => Mcount_count_cy_10_rt_432
    );
  Mcount_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(11),
      O => Mcount_count_cy_11_rt_433
    );
  Mcount_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(12),
      O => Mcount_count_cy_12_rt_434
    );
  Mcount_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(13),
      O => Mcount_count_cy_13_rt_435
    );
  Mcount_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(14),
      O => Mcount_count_cy_14_rt_436
    );
  Mcount_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(15),
      O => Mcount_count_cy_15_rt_437
    );
  Mcount_count_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(16),
      O => Mcount_count_cy_16_rt_438
    );
  Mcount_count_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(17),
      O => Mcount_count_cy_17_rt_439
    );
  Mcount_count_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(18),
      O => Mcount_count_cy_18_rt_440
    );
  Mcount_count_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(19),
      O => Mcount_count_cy_19_rt_441
    );
  Mcount_count_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(20),
      O => Mcount_count_cy_20_rt_442
    );
  Mcount_count_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(21),
      O => Mcount_count_cy_21_rt_443
    );
  Mcount_count_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(22),
      O => Mcount_count_cy_22_rt_444
    );
  Mcount_count_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(23),
      O => Mcount_count_cy_23_rt_445
    );
  Mcount_count_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(24),
      O => Mcount_count_cy_24_rt_446
    );
  Mcount_div_22_dff_40_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_1_Q,
      O => Mcount_div_22_dff_40_cy_1_rt_447
    );
  Mcount_div_22_dff_40_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_2_Q,
      O => Mcount_div_22_dff_40_cy_2_rt_448
    );
  Mcount_div_22_dff_40_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_3_Q,
      O => Mcount_div_22_dff_40_cy_3_rt_449
    );
  Mcount_div_22_dff_40_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_4_Q,
      O => Mcount_div_22_dff_40_cy_4_rt_450
    );
  Mcount_div_22_dff_40_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_5_Q,
      O => Mcount_div_22_dff_40_cy_5_rt_451
    );
  Mcount_div_22_dff_40_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_6_Q,
      O => Mcount_div_22_dff_40_cy_6_rt_452
    );
  Mcount_div_22_dff_40_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_7_Q,
      O => Mcount_div_22_dff_40_cy_7_rt_453
    );
  Mcount_div_22_dff_40_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_8_Q,
      O => Mcount_div_22_dff_40_cy_8_rt_454
    );
  Mcount_div_22_dff_40_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_9_Q,
      O => Mcount_div_22_dff_40_cy_9_rt_455
    );
  Mcount_div_22_dff_40_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_10_Q,
      O => Mcount_div_22_dff_40_cy_10_rt_456
    );
  Mcount_div_22_dff_40_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_11_Q,
      O => Mcount_div_22_dff_40_cy_11_rt_457
    );
  Mcount_div_22_dff_40_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_12_Q,
      O => Mcount_div_22_dff_40_cy_12_rt_458
    );
  Mcount_div_22_dff_40_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_13_Q,
      O => Mcount_div_22_dff_40_cy_13_rt_459
    );
  Mcount_div_22_dff_40_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_14_Q,
      O => Mcount_div_22_dff_40_cy_14_rt_460
    );
  Mcount_div_22_dff_40_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_15_Q,
      O => Mcount_div_22_dff_40_cy_15_rt_461
    );
  Mcount_digit4_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit4(1),
      O => Mcount_digit4_cy_1_rt_462
    );
  Mcount_digit2_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(1),
      O => Mcount_digit2_cy_1_rt_463
    );
  Mcount_digit2_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(2),
      O => Mcount_digit2_cy_2_rt_464
    );
  Mcount_digit2_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(3),
      O => Mcount_digit2_cy_3_rt_465
    );
  Mcount_digit2_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(4),
      O => Mcount_digit2_cy_4_rt_466
    );
  Mcount_digit2_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(5),
      O => Mcount_digit2_cy_5_rt_467
    );
  Mcount_digit2_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(6),
      O => Mcount_digit2_cy_6_rt_468
    );
  Mcount_digit2_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(7),
      O => Mcount_digit2_cy_7_rt_469
    );
  Mcount_digit2_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(8),
      O => Mcount_digit2_cy_8_rt_470
    );
  Mcount_digit2_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(9),
      O => Mcount_digit2_cy_9_rt_471
    );
  Mcount_digit2_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(10),
      O => Mcount_digit2_cy_10_rt_472
    );
  Mcount_digit2_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(11),
      O => Mcount_digit2_cy_11_rt_473
    );
  Mcount_digit2_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(12),
      O => Mcount_digit2_cy_12_rt_474
    );
  Mcount_digit2_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(13),
      O => Mcount_digit2_cy_13_rt_475
    );
  Mcount_digit2_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(14),
      O => Mcount_digit2_cy_14_rt_476
    );
  Mcount_digit2_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(15),
      O => Mcount_digit2_cy_15_rt_477
    );
  Mcount_digit2_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(16),
      O => Mcount_digit2_cy_16_rt_478
    );
  Mcount_digit2_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(17),
      O => Mcount_digit2_cy_17_rt_479
    );
  Mcount_digit2_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(18),
      O => Mcount_digit2_cy_18_rt_480
    );
  Mcount_digit2_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(19),
      O => Mcount_digit2_cy_19_rt_481
    );
  Mcount_digit2_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(20),
      O => Mcount_digit2_cy_20_rt_482
    );
  Mcount_digit2_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(21),
      O => Mcount_digit2_cy_21_rt_483
    );
  Mcount_digit2_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(22),
      O => Mcount_digit2_cy_22_rt_484
    );
  Mcount_digit2_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(23),
      O => Mcount_digit2_cy_23_rt_485
    );
  Mcount_digit2_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(24),
      O => Mcount_digit2_cy_24_rt_486
    );
  Mcount_digit2_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(25),
      O => Mcount_digit2_cy_25_rt_487
    );
  Mcount_digit2_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(26),
      O => Mcount_digit2_cy_26_rt_488
    );
  Mcount_digit2_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(27),
      O => Mcount_digit2_cy_27_rt_489
    );
  Mcount_digit2_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(28),
      O => Mcount_digit2_cy_28_rt_490
    );
  Mcount_digit2_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(29),
      O => Mcount_digit2_cy_29_rt_491
    );
  Mcount_digit2_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(30),
      O => Mcount_digit2_cy_30_rt_492
    );
  Mcount_digit3_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit3(1),
      O => Mcount_digit3_cy_1_rt_493
    );
  Mcount_digit3_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit3(2),
      O => Mcount_digit3_cy_2_rt_494
    );
  Mcount_digit5_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit5(1),
      O => Mcount_digit5_cy_1_rt_495
    );
  Mcount_digit5_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit5(2),
      O => Mcount_digit5_cy_2_rt_496
    );
  Mcount_digit1_xor_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit1(3),
      O => Mcount_digit1_xor_3_rt_497
    );
  Mcount_count_xor_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(25),
      O => Mcount_count_xor_25_rt_498
    );
  Mcount_div_22_dff_40_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      O => Mcount_div_22_dff_40_xor_16_rt_499
    );
  Mcount_digit4_xor_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit4(2),
      O => Mcount_digit4_xor_2_rt_500
    );
  Mcount_digit2_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit2(31),
      O => Mcount_digit2_xor_31_rt_501
    );
  Mcount_digit3_xor_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit3(3),
      O => Mcount_digit3_xor_3_rt_502
    );
  Mcount_digit6_xor_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit6(1),
      O => Mcount_digit6_xor_1_rt_503
    );
  Mcount_digit5_xor_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => digit5(3),
      O => Mcount_digit5_xor_3_rt_504
    );
  digit5_1_dpot : LUT6
    generic map(
      INIT => X"0CAAAAAAAAAAAAAA"
    )
    port map (
      I0 => digit5(1),
      I1 => Result_1_7,
      I2 => GND_5_o_digit5_31_equal_10_o,
      I3 => GND_5_o_digit3_31_equal_6_o,
      I4 => GND_5_o_digit1_31_equal_2_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit5_1_dpot_506
    );
  digit5_2_dpot : LUT6
    generic map(
      INIT => X"0CAAAAAAAAAAAAAA"
    )
    port map (
      I0 => digit5(2),
      I1 => Result_2_7,
      I2 => GND_5_o_digit5_31_equal_10_o,
      I3 => GND_5_o_digit3_31_equal_6_o,
      I4 => GND_5_o_digit1_31_equal_2_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit5_2_dpot_507
    );
  digit5_3_dpot : LUT6
    generic map(
      INIT => X"0CAAAAAAAAAAAAAA"
    )
    port map (
      I0 => digit5(3),
      I1 => Result_3_7,
      I2 => GND_5_o_digit5_31_equal_10_o,
      I3 => GND_5_o_digit3_31_equal_6_o,
      I4 => GND_5_o_digit1_31_equal_2_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit5_3_dpot_508
    );
  GND_5_o_digit4_31_equal_8_o_31_1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => digit4(1),
      I1 => digit4(0),
      I2 => digit4(2),
      O => GND_5_o_digit4_31_equal_8_o
    );
  digit6_0_dpot : LUT6
    generic map(
      INIT => X"30AAAAAAAAAAAAAA"
    )
    port map (
      I0 => digit6(0),
      I1 => GND_5_o_digit6_31_equal_12_o,
      I2 => Result_0_6,
      I3 => GND_5_o_digit5_31_equal_10_o,
      I4 => N10,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit6_0_dpot_512
    );
  digit6_1_dpot : LUT6
    generic map(
      INIT => X"30AAAAAAAAAAAAAA"
    )
    port map (
      I0 => digit6(1),
      I1 => GND_5_o_digit6_31_equal_12_o,
      I2 => Result_1_6,
      I3 => GND_5_o_digit5_31_equal_10_o,
      I4 => N10,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit6_1_dpot_513
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT141_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => digit5(1),
      O => N14
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT521 : LUT6
    generic map(
      INIT => X"0000000000060000"
    )
    port map (
      I0 => digit5(0),
      I1 => digit5(2),
      I2 => N14,
      I3 => digit5(3),
      I4 => div_22_dff_40_16_Q,
      I5 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT521_357
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT151_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => digit1(1),
      I1 => hour_IBUF_2,
      O => N16
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT522 : LUT6
    generic map(
      INIT => X"0000000000000006"
    )
    port map (
      I0 => digit1(2),
      I1 => digit1(0),
      I2 => N16,
      I3 => digit1(3),
      I4 => div_22_dff_40_16_Q,
      I5 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT522_358
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT131_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => digit2(1),
      I1 => hour_IBUF_2,
      O => N18
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT523 : LUT6
    generic map(
      INIT => X"0000000600000000"
    )
    port map (
      I0 => digit2(2),
      I1 => digit2(0),
      I2 => N18,
      I3 => digit2(3),
      I4 => div_22_dff_40_16_Q,
      I5 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT523_359
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT57 : LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT523_359,
      I1 => Mmux_digit1_3_digit3_3_mux_72_OUT14,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT56_395,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT54_393,
      I4 => N20,
      O => digit1_3_digit3_3_mux_72_OUT_4_Q
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT524_SW1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => digit6(1),
      I1 => digit6(0),
      O => N22
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT83 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT12_348,
      I1 => N22,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT523_359,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT522_358,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT521_357,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT81_397,
      O => digit1_3_digit3_3_mux_72_OUT_7_Q
    );
  digit5_0_dpot : LUT6
    generic map(
      INIT => X"0CAAAAAAAAAAAAAA"
    )
    port map (
      I0 => digit5(0),
      I1 => Result_0_7,
      I2 => GND_5_o_digit5_31_equal_10_o,
      I3 => GND_5_o_digit3_31_equal_6_o,
      I4 => GND_5_o_digit1_31_equal_2_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit5_0_dpot_505
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT42 : LUT6
    generic map(
      INIT => X"FF0CAAAA00000000"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT4,
      I1 => digit4(2),
      I2 => digit4(1),
      I3 => digit4(0),
      I4 => div_22_dff_40_15_Q,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT11_347,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT41_399
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT724 : LUT6
    generic map(
      INIT => X"000000F0AA0000CC"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT722_366,
      I1 => Mmux_digit1_3_digit3_3_mux_72_OUT723_367,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT721_365,
      I3 => hour_IBUF_2,
      I4 => div_22_dff_40_16_Q,
      I5 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT72_352
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT34 : LUT6
    generic map(
      INIT => X"FC0000AA00000000"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT32_370,
      I1 => digit6(1),
      I2 => digit6(0),
      I3 => hour_IBUF_2,
      I4 => div_22_dff_40_16_Q,
      I5 => div_22_dff_40_15_Q,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT33_371
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT62 : LUT6
    generic map(
      INIT => X"0888080800800000"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => div_22_dff_40_16_Q,
      I2 => div_22_dff_40_15_Q,
      I3 => digit6(0),
      I4 => digit6(1),
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT6,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT61_385
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT54 : LUT6
    generic map(
      INIT => X"5B495A4813011200"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => div_22_dff_40_15_Q,
      I2 => hour_IBUF_2,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT53_392,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT5,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT51_391,
      O => Mmux_digit1_3_digit3_3_mux_72_OUT54_393
    );
  digit4_0_dpot : LUT6
    generic map(
      INIT => X"DF00F0F0F0F0F0F0"
    )
    port map (
      I0 => digit4(2),
      I1 => digit4(1),
      I2 => digit4(0),
      I3 => Result_0_5,
      I4 => GND_5_o_digit3_31_equal_6_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit4_0_dpot_509
    );
  digit4_1_dpot : LUT6
    generic map(
      INIT => X"F700F0F0F0F0F0F0"
    )
    port map (
      I0 => digit4(2),
      I1 => digit4(0),
      I2 => digit4(1),
      I3 => Result_1_5,
      I4 => GND_5_o_digit3_31_equal_6_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit4_1_dpot_510
    );
  digit4_2_dpot : LUT6
    generic map(
      INIT => X"DF00F0F0F0F0F0F0"
    )
    port map (
      I0 => digit4(0),
      I1 => digit4(1),
      I2 => digit4(2),
      I3 => Result_2_5,
      I4 => GND_5_o_digit3_31_equal_6_o,
      I5 => GND_5_o_digit2_31_equal_4_o_31_71,
      O => digit4_2_dpot_511
    );
  Q_n0207_inv1_rstpot_SW0 : LUT5
    generic map(
      INIT => X"00080000"
    )
    port map (
      I0 => digit3(3),
      I1 => digit3(0),
      I2 => digit3(2),
      I3 => digit3(1),
      I4 => GND_5_o_digit1_31_equal_2_o_31_1_527,
      O => N10
    );
  Mcount_digit1_eqn_31 : LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
    port map (
      I0 => Result_3_2,
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(3),
      I4 => digit1(0),
      O => Mcount_digit1_eqn_3
    );
  Mcount_digit1_eqn_21 : LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
    port map (
      I0 => Result_2_2,
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(3),
      I4 => digit1(0),
      O => Mcount_digit1_eqn_2
    );
  Mcount_digit1_eqn_11 : LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
    port map (
      I0 => Result_1_2,
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(3),
      I4 => digit1(0),
      O => Mcount_digit1_eqn_1
    );
  Mcount_digit1_eqn_01 : LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
    port map (
      I0 => Result_0_2,
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(3),
      I4 => digit1(0),
      O => Mcount_digit1_eqn_0
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT41 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => digit3(3),
      I1 => digit3(0),
      I2 => digit3(2),
      I3 => digit3(1),
      O => Mmux_digit1_3_digit3_3_mux_72_OUT4
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT77 : LUT6
    generic map(
      INIT => X"FFFFFFFF08000880"
    )
    port map (
      I0 => Mmux_digit1_3_digit3_3_mux_72_OUT14,
      I1 => digit5(2),
      I2 => digit5(0),
      I3 => digit5(1),
      I4 => digit5(3),
      I5 => N26,
      O => digit1_3_digit3_3_mux_72_OUT_6_Q
    );
  Mcount_div_22_dff_40_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(0),
      O => Mcount_div_22_dff_40_cy_0_rt_521
    );
  digit3_0_dpot1 : LUT5
    generic map(
      INIT => X"0CAAAAAA"
    )
    port map (
      I0 => digit3(0),
      I1 => Result_0_4,
      I2 => GND_5_o_digit3_31_equal_6_o,
      I3 => GND_5_o_digit1_31_equal_2_o,
      I4 => GND_5_o_digit2_31_equal_4_o_31_7_rstpot_522,
      O => digit3_0_dpot1_523
    );
  digit3_1_dpot1 : LUT5
    generic map(
      INIT => X"0CAAAAAA"
    )
    port map (
      I0 => digit3(1),
      I1 => Result_1_4,
      I2 => GND_5_o_digit3_31_equal_6_o,
      I3 => GND_5_o_digit1_31_equal_2_o,
      I4 => GND_5_o_digit2_31_equal_4_o_31_7_rstpot_522,
      O => digit3_1_dpot1_524
    );
  digit3_2_dpot1 : LUT5
    generic map(
      INIT => X"0CAAAAAA"
    )
    port map (
      I0 => digit3(2),
      I1 => Result_2_4,
      I2 => GND_5_o_digit3_31_equal_6_o,
      I3 => GND_5_o_digit1_31_equal_2_o,
      I4 => GND_5_o_digit2_31_equal_4_o_31_7_rstpot_522,
      O => digit3_2_dpot1_525
    );
  digit3_3_dpot1 : LUT5
    generic map(
      INIT => X"0CAAAAAA"
    )
    port map (
      I0 => digit3(3),
      I1 => Result_3_4,
      I2 => GND_5_o_digit3_31_equal_6_o,
      I3 => GND_5_o_digit1_31_equal_2_o,
      I4 => GND_5_o_digit2_31_equal_4_o_31_7_rstpot_522,
      O => digit3_3_dpot1_526
    );
  GND_5_o_digit2_31_equal_4_o_31_7_rstpot : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => digit2(11),
      I1 => digit2(10),
      I2 => GND_5_o_digit2_31_equal_4_o_31_4_382,
      I3 => GND_5_o_digit2_31_equal_4_o_31_3_381,
      I4 => GND_5_o_digit2_31_equal_4_o_31_2_380,
      I5 => GND_5_o_digit2_31_equal_4_o_31_1_379,
      O => GND_5_o_digit2_31_equal_4_o_31_7_rstpot_522
    );
  GND_5_o_digit1_31_equal_2_o_31_1_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => digit1(0),
      I1 => digit1(1),
      I2 => digit1(2),
      I3 => digit1(3),
      O => GND_5_o_digit1_31_equal_2_o_31_1_527
    );
  GND_5_o_digit2_31_equal_4_o_31_7_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => GND_5_o_digit2_31_equal_4_o_31_5_383,
      I1 => GND_5_o_digit2_31_equal_4_o_31_4_382,
      I2 => GND_5_o_digit2_31_equal_4_o_31_3_381,
      I3 => GND_5_o_digit2_31_equal_4_o_31_2_380,
      I4 => GND_5_o_digit2_31_equal_4_o_31_1_379,
      I5 => GND_5_o_digit2_31_equal_4_o_31_Q,
      O => GND_5_o_digit2_31_equal_4_o_31_7_528
    );
  GND_5_o_digit2_31_equal_4_o_31_7_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => GND_5_o_digit2_31_equal_4_o_31_5_383,
      I1 => GND_5_o_digit2_31_equal_4_o_31_4_382,
      I2 => GND_5_o_digit2_31_equal_4_o_31_3_381,
      I3 => GND_5_o_digit2_31_equal_4_o_31_2_380,
      I4 => GND_5_o_digit2_31_equal_4_o_31_1_379,
      I5 => GND_5_o_digit2_31_equal_4_o_31_Q,
      O => GND_5_o_digit2_31_equal_4_o_31_71
    );
  count_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_2_rstpot_530
    );
  count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_2_rstpot_530,
      Q => count(2)
    );
  count_0_rstpot : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(0),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_0_rstpot_531
    );
  count_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_0_rstpot_531,
      Q => count(0)
    );
  count_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_1_rstpot_532
    );
  count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_1_rstpot_532,
      Q => count(1)
    );
  count_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_5_rstpot_533
    );
  count_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_5_rstpot_533,
      Q => count(5)
    );
  count_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_3_rstpot_534
    );
  count_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_3_rstpot_534,
      Q => count(3)
    );
  count_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_4_rstpot_535
    );
  count_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_4_rstpot_535,
      Q => count(4)
    );
  count_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_8_rstpot_536
    );
  count_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_8_rstpot_536,
      Q => count(8)
    );
  count_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_6_rstpot_537
    );
  count_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_6_rstpot_537,
      Q => count(6)
    );
  count_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_7_rstpot_538
    );
  count_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_7_rstpot_538,
      Q => count(7)
    );
  count_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_11_rstpot_539
    );
  count_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_11_rstpot_539,
      Q => count(11)
    );
  count_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_9_rstpot_540
    );
  count_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_9_rstpot_540,
      Q => count(9)
    );
  count_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_10_rstpot_541
    );
  count_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_10_rstpot_541,
      Q => count(10)
    );
  count_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => GND_5_o_count_31_equal_44_o,
      O => count_14_rstpot_542
    );
  count_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_14_rstpot_542,
      Q => count(14)
    );
  count_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_12_rstpot_543
    );
  count_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_12_rstpot_543,
      Q => count(12)
    );
  count_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_13_rstpot_544
    );
  count_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_13_rstpot_544,
      Q => count(13)
    );
  count_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(17),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_17_rstpot_545
    );
  count_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_17_rstpot_545,
      Q => count(17)
    );
  count_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_15_rstpot_546
    );
  count_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_15_rstpot_546,
      Q => count(15)
    );
  count_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_16_rstpot_547
    );
  count_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_16_rstpot_547,
      Q => count(16)
    );
  count_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(20),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_20_rstpot_548
    );
  count_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_20_rstpot_548,
      Q => count(20)
    );
  count_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(18),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_18_rstpot_549
    );
  count_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_18_rstpot_549,
      Q => count(18)
    );
  count_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(19),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_19_rstpot_550
    );
  count_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_19_rstpot_550,
      Q => count(19)
    );
  count_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(21),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_21_rstpot_551
    );
  count_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_21_rstpot_551,
      Q => count(21)
    );
  count_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(22),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_22_rstpot_552
    );
  count_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_22_rstpot_552,
      Q => count(22)
    );
  count_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(23),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_23_rstpot_553
    );
  count_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_23_rstpot_553,
      Q => count(23)
    );
  count_24_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(24),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_24_rstpot_554
    );
  count_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_24_rstpot_554,
      Q => count(24)
    );
  count_25_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(25),
      I1 => GND_5_o_count_31_equal_44_o_31_5_556,
      O => count_25_rstpot_555
    );
  count_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => count_25_rstpot_555,
      Q => count(25)
    );
  GND_5_o_count_31_equal_44_o_31_5_1 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => count(18),
      I1 => count(24),
      I2 => GND_5_o_count_31_equal_44_o_31_3_356,
      I3 => GND_5_o_count_31_equal_44_o_31_1_354,
      I4 => GND_5_o_count_31_equal_44_o_31_Q,
      I5 => GND_5_o_count_31_equal_44_o_31_2_355,
      O => GND_5_o_count_31_equal_44_o_31_5_556
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT15 : MUXF7
    port map (
      I0 => N28,
      I1 => N29,
      S => div_22_dff_40_16_Q,
      O => digit1_3_digit3_3_mux_72_OUT_0_Q
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT15_F : LUT5
    generic map(
      INIT => X"FDF8ADA8"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => Mram_digit3_3_GND_5_o_wide_mux_49_OUT,
      I2 => div_22_dff_40_15_Q,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT16,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT1,
      O => N28
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT15_G : LUT6
    generic map(
      INIT => X"FFFFFFFF777F222A"
    )
    port map (
      I0 => hour_IBUF_2,
      I1 => digit5(3),
      I2 => digit5(2),
      I3 => digit5(1),
      I4 => Mram_digit3_3_GND_5_o_wide_mux_49_OUT,
      I5 => div_22_dff_40_15_Q,
      O => N29
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT524_SW0 : MUXF7
    port map (
      I0 => N30,
      I1 => N31,
      S => div_22_dff_40_15_Q,
      O => N20
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT524_SW0_F : LUT6
    generic map(
      INIT => X"FFFFFFFF00020200"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => digit5(3),
      I2 => N14,
      I3 => digit5(2),
      I4 => digit5(0),
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT522_358,
      O => N30
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT524_SW0_G : LUT6
    generic map(
      INIT => X"FFFF1191FFFF0080"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => hour_IBUF_2,
      I2 => digit6(0),
      I3 => digit6(1),
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT522_358,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT55_394,
      O => N31
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT77_SW0 : MUXF7
    port map (
      I0 => N32,
      I1 => N33,
      S => div_22_dff_40_15_Q,
      O => N26
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT77_SW0_F : LUT6
    generic map(
      INIT => X"FFFE999877761110"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => hour_IBUF_2,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT723_367,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT7,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT73_376,
      I5 => Mmux_digit1_3_digit3_3_mux_72_OUT722_366,
      O => N32
    );
  Mmux_digit1_3_digit3_3_mux_72_OUT77_SW0_G : LUT5
    generic map(
      INIT => X"77761110"
    )
    port map (
      I0 => div_22_dff_40_16_Q,
      I1 => hour_IBUF_2,
      I2 => Mmux_digit1_3_digit3_3_mux_72_OUT721_365,
      I3 => Mmux_digit1_3_digit3_3_mux_72_OUT75_377,
      I4 => Mmux_digit1_3_digit3_3_mux_72_OUT71_375,
      O => N33
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  clk1_BUFG : BUFG
    port map (
      O => clk1_BUFG_44,
      I => clk1_563
    );
  Mcount_digit1_lut_0_INV_0 : INV
    port map (
      I => digit1(0),
      O => Mcount_digit1_lut(0)
    );
  Mcount_digit4_lut_0_INV_0 : INV
    port map (
      I => digit4(0),
      O => Mcount_digit4_lut(0)
    );
  Mcount_digit2_lut_0_INV_0 : INV
    port map (
      I => digit2(0),
      O => Mcount_digit2_lut(0)
    );
  Mcount_digit3_lut_0_INV_0 : INV
    port map (
      I => digit3(0),
      O => Mcount_digit3_lut(0)
    );
  Mcount_digit6_lut_0_INV_0 : INV
    port map (
      I => digit6(0),
      O => Mcount_digit6_lut(0)
    );
  Mcount_digit5_lut_0_INV_0 : INV
    port map (
      I => digit5(0),
      O => Mcount_digit5_lut(0)
    );
  clk1_INV_8_o1_INV_0 : INV
    port map (
      I => clk1_563,
      O => clk1_INV_8_o
    );
  Mcount_count_lut_0_1_INV_0 : INV
    port map (
      I => count(0),
      O => Mcount_count_lut_0_1
    );

end Structure;

