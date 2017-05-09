--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: top_level_synthesis.vhd
-- /___/   /\     Timestamp: Mon Apr 03 10:26:07 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top_level -w -dir netgen/synthesis -ofmt vhdl -sim top_level.ngc top_level_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: top_level.ngc
-- Output file	: C:\Users\student\Documents\30431\MariaB\Lab6\Add_PICO\netgen\synthesis\top_level_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top_level
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

entity top_level is
  port (
    clk : in STD_LOGIC := 'X'; 
    switches : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    LEDs : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top_level;

architecture Structure of top_level is
  signal switches_7_IBUF_0 : STD_LOGIC; 
  signal switches_6_IBUF_1 : STD_LOGIC; 
  signal switches_5_IBUF_2 : STD_LOGIC; 
  signal switches_4_IBUF_3 : STD_LOGIC; 
  signal switches_3_IBUF_4 : STD_LOGIC; 
  signal switches_2_IBUF_5 : STD_LOGIC; 
  signal switches_1_IBUF_6 : STD_LOGIC; 
  signal switches_0_IBUF_7 : STD_LOGIC; 
  signal clk_BUFGP_8 : STD_LOGIC; 
  signal enable : STD_LOGIC; 
  signal LEDs_7_57 : STD_LOGIC; 
  signal LEDs_6_58 : STD_LOGIC; 
  signal LEDs_5_59 : STD_LOGIC; 
  signal LEDs_4_60 : STD_LOGIC; 
  signal LEDs_3_61 : STD_LOGIC; 
  signal LEDs_2_62 : STD_LOGIC; 
  signal LEDs_1_63 : STD_LOGIC; 
  signal LEDs_0_64 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal mapp_arith_carry_value : STD_LOGIC; 
  signal mapp_carry_lower_zero : STD_LOGIC; 
  signal mapp_parity : STD_LOGIC; 
  signal mapp_carry_middle_zero : STD_LOGIC; 
  signal mapp_lower_zero_sel : STD_LOGIC; 
  signal mapp_lower_zero : STD_LOGIC; 
  signal mapp_carry_in_zero : STD_LOGIC; 
  signal mapp_carry_lower_parity : STD_LOGIC; 
  signal mapp_upper_parity : STD_LOGIC; 
  signal mapp_zero_flag_value : STD_LOGIC; 
  signal mapp_middle_zero_sel : STD_LOGIC; 
  signal mapp_middle_zero : STD_LOGIC; 
  signal mapp_sx_addr4_value : STD_LOGIC; 
  signal mapp_active_interrupt_value : STD_LOGIC; 
  signal mapp_shift_in_bit : STD_LOGIC; 
  signal mapp_interrupt_enable_value : STD_LOGIC; 
  signal mapp_register_enable_value : STD_LOGIC; 
  signal mapp_flag_enable_value : STD_LOGIC; 
  signal mapp_shift_carry_value : STD_LOGIC; 
  signal mapp_bank_value : STD_LOGIC; 
  signal mapp_upper_zero_sel : STD_LOGIC; 
  signal mapp_carry_flag_value : STD_LOGIC; 
  signal mapp_drive_carry_in_zero : STD_LOGIC; 
  signal mapp_pc_move_is_valid : STD_LOGIC; 
  signal mapp_use_zero_flag_value : STD_LOGIC; 
  signal mapp_strobe_type : STD_LOGIC; 
  signal mapp_lower_parity_sel : STD_LOGIC; 
  signal mapp_lower_parity : STD_LOGIC; 
  signal mapp_regbank_type : STD_LOGIC; 
  signal mapp_write_strobe_value : STD_LOGIC; 
  signal mapp_read_strobe_value : STD_LOGIC; 
  signal mapp_spm_enable_value : STD_LOGIC; 
  signal mapp_k_write_strobe_value : STD_LOGIC; 
  signal mapp_register_enable_type : STD_LOGIC; 
  signal mapp_flag_enable_type : STD_LOGIC; 
  signal mapp_arith_carry_in : STD_LOGIC; 
  signal mapp_push_stack : STD_LOGIC; 
  signal mapp_pop_stack : STD_LOGIC; 
  signal mapp_move_type : STD_LOGIC; 
  signal mapp_returni_type : STD_LOGIC; 
  signal mapp_int_enable_type : STD_LOGIC; 
  signal mapp_loadstar_type : STD_LOGIC; 
  signal mapp_special_bit : STD_LOGIC; 
  signal mapp_shadow_bank : STD_LOGIC; 
  signal mapp_shadow_zero_flag : STD_LOGIC; 
  signal mapp_shadow_zero_value : STD_LOGIC; 
  signal mapp_shadow_carry_flag : STD_LOGIC; 
  signal mapp_zero_flag : STD_LOGIC; 
  signal mapp_use_zero_flag : STD_LOGIC; 
  signal mapp_carry_flag : STD_LOGIC; 
  signal mapp_shift_carry : STD_LOGIC; 
  signal mapp_arith_carry : STD_LOGIC; 
  signal mapp_bank : STD_LOGIC; 
  signal mapp_spm_enable : STD_LOGIC; 
  signal mapp_register_enable : STD_LOGIC; 
  signal mapp_flag_enable : STD_LOGIC; 
  signal mapp_active_interrupt : STD_LOGIC; 
  signal mapp_sync_interrupt : STD_LOGIC; 
  signal mapp_interrupt_enable : STD_LOGIC; 
  signal mapp_sync_sleep : STD_LOGIC; 
  signal mapp_internal_reset : STD_LOGIC; 
  signal mapp_run : STD_LOGIC; 
  signal mapp_internal_reset_value : STD_LOGIC; 
  signal mapp_run_value : STD_LOGIC; 
  signal NLW_mapp_read_strobe_flop_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp_write_strobe_flop_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp_k_write_strobe_flop_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp_interrupt_ack_flop_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal in_port : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal address : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal out_port : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal port_id : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal instruction : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal mapp_arith_logical_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_carry_arith_logical : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_pc_value : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal mapp_carry_pc : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal mapp_stack_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal mapp_stack_pointer_carry : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal mapp_half_arith_logical : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_logical_carry_mask : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_half_pc : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal mapp_half_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal mapp_feed_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal mapp_t_state_value : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal mapp_alu_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_shift_rotate_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_sy_or_kk : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal mapp_pc_vector : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal mapp_pc_mode : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal mapp_arith_logical_sel : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal mapp_alu_mux_sel_value : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal mapp_sx : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_sy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_spm_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_shift_rotate_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_arith_logical_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_spm_ram_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mapp_stack_pointer : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal mapp_stack_memory : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal mapp_n0028 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal mapp_n0027 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal mapp_return_vector : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal mapp_sx_addr : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal mapp_alu_mux_sel : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal mapp_t_state : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal mapp2_n0015 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal mapp2_n0016 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  in_port_0 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_0_IBUF_7,
      Q => in_port(0)
    );
  in_port_1 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_1_IBUF_6,
      Q => in_port(1)
    );
  in_port_2 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_2_IBUF_5,
      Q => in_port(2)
    );
  in_port_3 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_3_IBUF_4,
      Q => in_port(3)
    );
  in_port_4 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_4_IBUF_3,
      Q => in_port(4)
    );
  in_port_5 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_5_IBUF_2,
      Q => in_port(5)
    );
  in_port_6 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_6_IBUF_1,
      Q => in_port(6)
    );
  in_port_7 : FD
    port map (
      C => clk_BUFGP_8,
      D => switches_7_IBUF_0,
      Q => in_port(7)
    );
  LEDs_0 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(0),
      Q => LEDs_0_64
    );
  LEDs_1 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(1),
      Q => LEDs_1_63
    );
  LEDs_2 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(2),
      Q => LEDs_2_62
    );
  LEDs_3 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(3),
      Q => LEDs_3_61
    );
  LEDs_4 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(4),
      Q => LEDs_4_60
    );
  LEDs_5 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(5),
      Q => LEDs_5_59
    );
  LEDs_6 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(6),
      Q => LEDs_6_58
    );
  LEDs_7 : FDE
    port map (
      C => clk_BUFGP_8,
      CE => port_id(7),
      D => out_port(7),
      Q => LEDs_7_57
    );
  mapp_arith_carry_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(7),
      LI => N1,
      O => mapp_arith_carry_value
    );
  mapp_lower_zero_muxcy : MUXCY
    port map (
      CI => mapp_carry_in_zero,
      DI => mapp_lower_zero,
      S => mapp_lower_zero_sel,
      O => mapp_carry_lower_zero
    );
  mapp_data_path_loop_7_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(6),
      LI => mapp_half_arith_logical(7),
      O => mapp_arith_logical_value(7)
    );
  mapp_data_path_loop_7_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(6),
      DI => mapp_logical_carry_mask(7),
      S => mapp_half_arith_logical(7),
      O => mapp_carry_arith_logical(7)
    );
  mapp_data_path_loop_6_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(5),
      LI => mapp_half_arith_logical(6),
      O => mapp_arith_logical_value(6)
    );
  mapp_data_path_loop_6_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(5),
      DI => mapp_logical_carry_mask(6),
      S => mapp_half_arith_logical(6),
      O => mapp_carry_arith_logical(6)
    );
  mapp_data_path_loop_5_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(4),
      LI => mapp_half_arith_logical(5),
      O => mapp_arith_logical_value(5)
    );
  mapp_data_path_loop_5_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(4),
      DI => mapp_logical_carry_mask(5),
      S => mapp_half_arith_logical(5),
      O => mapp_carry_arith_logical(5)
    );
  mapp_data_path_loop_4_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(3),
      LI => mapp_half_arith_logical(4),
      O => mapp_arith_logical_value(4)
    );
  mapp_data_path_loop_4_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(3),
      DI => mapp_logical_carry_mask(4),
      S => mapp_half_arith_logical(4),
      O => mapp_carry_arith_logical(4)
    );
  mapp_data_path_loop_3_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(2),
      LI => mapp_half_arith_logical(3),
      O => mapp_arith_logical_value(3)
    );
  mapp_data_path_loop_3_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(2),
      DI => mapp_logical_carry_mask(3),
      S => mapp_half_arith_logical(3),
      O => mapp_carry_arith_logical(3)
    );
  mapp_data_path_loop_2_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(1),
      LI => mapp_half_arith_logical(2),
      O => mapp_arith_logical_value(2)
    );
  mapp_data_path_loop_2_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(1),
      DI => mapp_logical_carry_mask(2),
      S => mapp_half_arith_logical(2),
      O => mapp_carry_arith_logical(2)
    );
  mapp_data_path_loop_1_upper_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_carry_arith_logical(0),
      LI => mapp_half_arith_logical(1),
      O => mapp_arith_logical_value(1)
    );
  mapp_data_path_loop_1_upper_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_carry_arith_logical(0),
      DI => mapp_logical_carry_mask(1),
      S => mapp_half_arith_logical(1),
      O => mapp_carry_arith_logical(1)
    );
  mapp_parity_xorcy : XORCY
    port map (
      CI => mapp_carry_lower_parity,
      LI => mapp_upper_parity,
      O => mapp_parity
    );
  mapp_address_loop_11_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(10),
      LI => mapp_half_pc(11),
      O => mapp_pc_value(11)
    );
  mapp_address_loop_10_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(9),
      DI => N1,
      S => mapp_half_pc(10),
      O => mapp_carry_pc(10)
    );
  mapp_address_loop_10_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(9),
      LI => mapp_half_pc(10),
      O => mapp_pc_value(10)
    );
  mapp_address_loop_9_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(8),
      DI => N1,
      S => mapp_half_pc(9),
      O => mapp_carry_pc(9)
    );
  mapp_address_loop_9_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(8),
      LI => mapp_half_pc(9),
      O => mapp_pc_value(9)
    );
  mapp_address_loop_8_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(7),
      DI => N1,
      S => mapp_half_pc(8),
      O => mapp_carry_pc(8)
    );
  mapp_address_loop_8_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(7),
      LI => mapp_half_pc(8),
      O => mapp_pc_value(8)
    );
  mapp_address_loop_7_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(6),
      DI => N1,
      S => mapp_half_pc(7),
      O => mapp_carry_pc(7)
    );
  mapp_address_loop_7_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(6),
      LI => mapp_half_pc(7),
      O => mapp_pc_value(7)
    );
  mapp_address_loop_6_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(5),
      DI => N1,
      S => mapp_half_pc(6),
      O => mapp_carry_pc(6)
    );
  mapp_address_loop_6_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(5),
      LI => mapp_half_pc(6),
      O => mapp_pc_value(6)
    );
  mapp_address_loop_5_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(4),
      DI => N1,
      S => mapp_half_pc(5),
      O => mapp_carry_pc(5)
    );
  mapp_address_loop_5_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(4),
      LI => mapp_half_pc(5),
      O => mapp_pc_value(5)
    );
  mapp_address_loop_4_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(3),
      DI => N1,
      S => mapp_half_pc(4),
      O => mapp_carry_pc(4)
    );
  mapp_address_loop_4_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(3),
      LI => mapp_half_pc(4),
      O => mapp_pc_value(4)
    );
  mapp_address_loop_3_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(2),
      DI => N1,
      S => mapp_half_pc(3),
      O => mapp_carry_pc(3)
    );
  mapp_address_loop_3_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(2),
      LI => mapp_half_pc(3),
      O => mapp_pc_value(3)
    );
  mapp_address_loop_2_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(1),
      DI => N1,
      S => mapp_half_pc(2),
      O => mapp_carry_pc(2)
    );
  mapp_address_loop_2_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(1),
      LI => mapp_half_pc(2),
      O => mapp_pc_value(2)
    );
  mapp_address_loop_1_upper_pc_mid_pc_pc_muxcy : MUXCY
    port map (
      CI => mapp_carry_pc(0),
      DI => N1,
      S => mapp_half_pc(1),
      O => mapp_carry_pc(1)
    );
  mapp_address_loop_1_upper_pc_pc_xorcy : XORCY
    port map (
      CI => mapp_carry_pc(0),
      LI => mapp_half_pc(1),
      O => mapp_pc_value(1)
    );
  mapp_address_loop_0_lsb_pc_pc_xorcy : XORCY
    port map (
      CI => N1,
      LI => mapp_half_pc(0),
      O => mapp_pc_value(0)
    );
  mapp_middle_zero_muxcy : MUXCY
    port map (
      CI => mapp_carry_lower_zero,
      DI => mapp_middle_zero,
      S => mapp_middle_zero_sel,
      O => mapp_carry_middle_zero
    );
  mapp_stack_loop_4_upper_stack_stack_xorcy : XORCY
    port map (
      CI => mapp_stack_pointer_carry(3),
      LI => mapp_half_pointer_value(4),
      O => mapp_stack_pointer_value(4)
    );
  mapp_stack_loop_4_upper_stack_stack_muxcy : MUXCY
    port map (
      CI => mapp_stack_pointer_carry(3),
      DI => mapp_feed_pointer_value(4),
      S => mapp_half_pointer_value(4),
      O => mapp_stack_pointer_carry(4)
    );
  mapp_stack_loop_3_upper_stack_stack_xorcy : XORCY
    port map (
      CI => mapp_stack_pointer_carry(2),
      LI => mapp_half_pointer_value(3),
      O => mapp_stack_pointer_value(3)
    );
  mapp_stack_loop_3_upper_stack_stack_muxcy : MUXCY
    port map (
      CI => mapp_stack_pointer_carry(2),
      DI => mapp_feed_pointer_value(3),
      S => mapp_half_pointer_value(3),
      O => mapp_stack_pointer_carry(3)
    );
  mapp_stack_loop_2_upper_stack_stack_xorcy : XORCY
    port map (
      CI => mapp_stack_pointer_carry(1),
      LI => mapp_half_pointer_value(2),
      O => mapp_stack_pointer_value(2)
    );
  mapp_stack_loop_2_upper_stack_stack_muxcy : MUXCY
    port map (
      CI => mapp_stack_pointer_carry(1),
      DI => mapp_feed_pointer_value(2),
      S => mapp_half_pointer_value(2),
      O => mapp_stack_pointer_carry(2)
    );
  mapp_stack_loop_1_upper_stack_stack_xorcy : XORCY
    port map (
      CI => mapp_stack_pointer_carry(0),
      LI => mapp_half_pointer_value(1),
      O => mapp_stack_pointer_value(1)
    );
  mapp_stack_loop_1_upper_stack_stack_muxcy : MUXCY
    port map (
      CI => mapp_stack_pointer_carry(0),
      DI => mapp_feed_pointer_value(1),
      S => mapp_half_pointer_value(1),
      O => mapp_stack_pointer_carry(1)
    );
  mapp_stack_loop_0_lsb_stack_stack_xorcy : XORCY
    port map (
      CI => N1,
      LI => mapp_half_pointer_value(0),
      O => mapp_stack_pointer_value(0)
    );
  mapp_stack_loop_0_lsb_stack_stack_muxcy : MUXCY
    port map (
      CI => N1,
      DI => mapp_feed_pointer_value(0),
      S => mapp_half_pointer_value(0),
      O => mapp_stack_pointer_carry(0)
    );
  mapp_lower_zero_lut : LUT6_2
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => mapp_alu_result(0),
      I1 => mapp_alu_result(1),
      I2 => mapp_alu_result(2),
      I3 => mapp_alu_result(3),
      I4 => mapp_alu_result(4),
      I5 => N0,
      O6 => mapp_lower_zero_sel,
      O5 => mapp_lower_zero
    );
  mapp_address_loop_0_lsb_pc_pc_muxcy : MUXCY
    port map (
      CI => N1,
      DI => mapp_pc_mode(0),
      S => mapp_half_pc(0),
      O => mapp_carry_pc(0)
    );
  mapp_init_zero_muxcy : MUXCY
    port map (
      CI => N1,
      DI => mapp_drive_carry_in_zero,
      S => mapp_carry_flag_value,
      O => mapp_carry_in_zero
    );
  mapp_parity_muxcy : MUXCY
    port map (
      CI => N1,
      DI => mapp_lower_parity,
      S => mapp_lower_parity_sel,
      O => mapp_carry_lower_parity
    );
  mapp_data_path_loop_0_lsb_arith_logical_arith_logical_xorcy : XORCY
    port map (
      CI => mapp_arith_carry_in,
      LI => mapp_half_arith_logical(0),
      O => mapp_arith_logical_value(0)
    );
  mapp_data_path_loop_0_lsb_arith_logical_arith_logical_muxcy : MUXCY
    port map (
      CI => mapp_arith_carry_in,
      DI => mapp_logical_carry_mask(0),
      S => mapp_half_arith_logical(0),
      O => mapp_carry_arith_logical(0)
    );
  mapp_data_path_loop_7_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => port_id(7),
      I1 => mapp_sx(7),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(7),
      O5 => mapp_logical_carry_mask(7)
    );
  mapp_data_path_loop_6_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(6),
      I1 => mapp_sx(6),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(6),
      O5 => mapp_logical_carry_mask(6)
    );
  mapp_data_path_loop_5_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(5),
      I1 => mapp_sx(5),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(5),
      O5 => mapp_logical_carry_mask(5)
    );
  mapp_data_path_loop_4_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(4),
      I1 => mapp_sx(4),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(4),
      O5 => mapp_logical_carry_mask(4)
    );
  mapp_data_path_loop_3_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(3),
      I1 => mapp_sx(3),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(3),
      O5 => mapp_logical_carry_mask(3)
    );
  mapp_data_path_loop_2_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(2),
      I1 => mapp_sx(2),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(2),
      O5 => mapp_logical_carry_mask(2)
    );
  mapp_data_path_loop_1_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(1),
      I1 => mapp_sx(1),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(1),
      O5 => mapp_logical_carry_mask(1)
    );
  mapp_data_path_loop_0_arith_logical_lut : LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
    port map (
      I0 => mapp_sy_or_kk(0),
      I1 => mapp_sx(0),
      I2 => mapp_arith_logical_sel(0),
      I3 => mapp_arith_logical_sel(1),
      I4 => mapp_arith_logical_sel(2),
      I5 => N0,
      O6 => mapp_half_arith_logical(0),
      O5 => mapp_logical_carry_mask(0)
    );
  mapp_upper_parity_lut : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => mapp_arith_logical_result(2),
      I1 => mapp_arith_logical_result(3),
      I2 => mapp_arith_logical_result(4),
      I3 => mapp_arith_logical_result(5),
      I4 => mapp_arith_logical_result(6),
      I5 => mapp_arith_logical_result(7),
      O => mapp_upper_parity
    );
  mapp_upper_zero_muxcy : MUXCY
    port map (
      CI => mapp_carry_middle_zero,
      DI => mapp_shadow_zero_flag,
      S => mapp_upper_zero_sel,
      O => mapp_zero_flag_value
    );
  mapp_address_loop_11_upper_pc_low_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
    port map (
      I0 => mapp_sx(3),
      I1 => mapp_pc_vector(11),
      I2 => address(11),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(11)
    );
  mapp_address_loop_10_upper_pc_low_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
    port map (
      I0 => mapp_sx(2),
      I1 => mapp_pc_vector(10),
      I2 => address(10),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(10)
    );
  mapp_address_loop_9_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sx(1),
      I1 => mapp_pc_vector(9),
      I2 => address(9),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(9)
    );
  mapp_address_loop_8_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sx(0),
      I1 => mapp_pc_vector(8),
      I2 => address(8),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(8)
    );
  mapp_address_loop_7_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(7),
      I1 => mapp_pc_vector(7),
      I2 => address(7),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(7)
    );
  mapp_address_loop_6_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(6),
      I1 => mapp_pc_vector(6),
      I2 => address(6),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(6)
    );
  mapp_address_loop_5_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(5),
      I1 => mapp_pc_vector(5),
      I2 => address(5),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(5)
    );
  mapp_address_loop_4_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(4),
      I1 => mapp_pc_vector(4),
      I2 => address(4),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(4)
    );
  mapp_address_loop_3_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(3),
      I1 => mapp_pc_vector(3),
      I2 => address(3),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(3)
    );
  mapp_address_loop_2_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(2),
      I1 => mapp_pc_vector(2),
      I2 => address(2),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(2)
    );
  mapp_address_loop_1_upper_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
    port map (
      I0 => mapp_sy(1),
      I1 => mapp_pc_vector(1),
      I2 => address(1),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(1)
    );
  mapp_address_loop_0_lsb_pc_high_int_vector_pc_lut : LUT6
    generic map(
      INIT => X"00AA00FF33CC0F00"
    )
    port map (
      I0 => mapp_sy(0),
      I1 => mapp_pc_vector(0),
      I2 => address(0),
      I3 => mapp_pc_mode(0),
      I4 => mapp_pc_mode(1),
      I5 => mapp_pc_mode(2),
      O => mapp_half_pc(0)
    );
  mapp_middle_zero_lut : LUT6_2
    generic map(
      INIT => X"0000000D00000000"
    )
    port map (
      I0 => mapp_use_zero_flag,
      I1 => mapp_zero_flag,
      I2 => mapp_alu_result(5),
      I3 => mapp_alu_result(6),
      I4 => mapp_alu_result(7),
      I5 => N0,
      O6 => mapp_middle_zero_sel,
      O5 => mapp_middle_zero
    );
  mapp_active_interrupt_lut : LUT6_2
    generic map(
      INIT => X"CC33FF0080808080"
    )
    port map (
      I0 => mapp_interrupt_enable,
      I1 => enable,
      I2 => mapp_sync_interrupt,
      I3 => mapp_bank,
      I4 => mapp_loadstar_type,
      I5 => N0,
      O6 => mapp_sx_addr4_value,
      O5 => mapp_active_interrupt_value
    );
  mapp_stack_loop_4_upper_stack_stack_pointer_lut : LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
    port map (
      I0 => mapp_stack_pointer(4),
      I1 => mapp_pop_stack,
      I2 => mapp_push_stack,
      I3 => mapp_t_state(1),
      I4 => enable,
      I5 => N0,
      O6 => mapp_half_pointer_value(4),
      O5 => mapp_feed_pointer_value(4)
    );
  mapp_stack_loop_3_upper_stack_stack_pointer_lut : LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
    port map (
      I0 => mapp_stack_pointer(3),
      I1 => mapp_pop_stack,
      I2 => mapp_push_stack,
      I3 => mapp_t_state(1),
      I4 => enable,
      I5 => N0,
      O6 => mapp_half_pointer_value(3),
      O5 => mapp_feed_pointer_value(3)
    );
  mapp_stack_loop_2_upper_stack_stack_pointer_lut : LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
    port map (
      I0 => mapp_stack_pointer(2),
      I1 => mapp_pop_stack,
      I2 => mapp_push_stack,
      I3 => mapp_t_state(1),
      I4 => enable,
      I5 => N0,
      O6 => mapp_half_pointer_value(2),
      O5 => mapp_feed_pointer_value(2)
    );
  mapp_stack_loop_1_upper_stack_stack_pointer_lut : LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
    port map (
      I0 => mapp_stack_pointer(1),
      I1 => mapp_pop_stack,
      I2 => mapp_push_stack,
      I3 => mapp_t_state(1),
      I4 => enable,
      I5 => N0,
      O6 => mapp_half_pointer_value(1),
      O5 => mapp_feed_pointer_value(1)
    );
  mapp_stack_loop_0_lsb_stack_stack_pointer_lut : LUT6_2
    generic map(
      INIT => X"001529AAAAAAAAAA"
    )
    port map (
      I0 => mapp_stack_pointer(0),
      I1 => mapp_pop_stack,
      I2 => mapp_push_stack,
      I3 => mapp_t_state(1),
      I4 => enable,
      I5 => N0,
      O6 => mapp_half_pointer_value(0),
      O5 => mapp_feed_pointer_value(0)
    );
  mapp_t_state_lut : LUT6_2
    generic map(
      INIT => X"0083000B00C4004C"
    )
    port map (
      I0 => mapp_t_state(1),
      I1 => enable,
      I2 => mapp_sync_sleep,
      I3 => mapp_internal_reset,
      I4 => mapp_special_bit,
      I5 => N0,
      O6 => mapp_t_state_value(2),
      O5 => mapp_t_state_value(1)
    );
  mapp_data_path_loop_7_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(7),
      I1 => mapp_shift_rotate_result(7),
      I2 => in_port(7),
      I3 => mapp_spm_data(7),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(7)
    );
  mapp_data_path_loop_6_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(6),
      I1 => mapp_shift_rotate_result(6),
      I2 => in_port(6),
      I3 => mapp_spm_data(6),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(6)
    );
  mapp_data_path_loop_5_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(5),
      I1 => mapp_shift_rotate_result(5),
      I2 => in_port(5),
      I3 => mapp_spm_data(5),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(5)
    );
  mapp_data_path_loop_4_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(4),
      I1 => mapp_shift_rotate_result(4),
      I2 => in_port(4),
      I3 => mapp_spm_data(4),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(4)
    );
  mapp_data_path_loop_3_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(3),
      I1 => mapp_shift_rotate_result(3),
      I2 => in_port(3),
      I3 => mapp_spm_data(3),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(3)
    );
  mapp_data_path_loop_2_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(2),
      I1 => mapp_shift_rotate_result(2),
      I2 => in_port(2),
      I3 => mapp_spm_data(2),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(2)
    );
  mapp_data_path_loop_1_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(1),
      I1 => mapp_shift_rotate_result(1),
      I2 => in_port(1),
      I3 => mapp_spm_data(1),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(1)
    );
  mapp_data_path_loop_0_alu_mux_lut : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_arith_logical_result(0),
      I1 => mapp_shift_rotate_result(0),
      I2 => in_port(0),
      I3 => mapp_spm_data(0),
      I4 => mapp_alu_mux_sel(0),
      I5 => mapp_alu_mux_sel(1),
      O => mapp_alu_result(0)
    );
  mapp_data_path_loop_6_msb_shift_rotate_shift_rotate_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(5),
      I1 => mapp_sx(7),
      I2 => mapp_sx(6),
      I3 => mapp_shift_in_bit,
      I4 => instruction(3),
      I5 => N0,
      O6 => mapp_shift_rotate_value(7),
      O5 => mapp_shift_rotate_value(6)
    );
  mapp_data_path_loop_4_mid_shift_rotate_shift_rotate_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(3),
      I1 => mapp_sx(5),
      I2 => mapp_sx(4),
      I3 => mapp_sx(6),
      I4 => instruction(3),
      I5 => N0,
      O6 => mapp_shift_rotate_value(5),
      O5 => mapp_shift_rotate_value(4)
    );
  mapp_data_path_loop_2_mid_shift_rotate_shift_rotate_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(1),
      I1 => mapp_sx(3),
      I2 => mapp_sx(2),
      I3 => mapp_sx(4),
      I4 => instruction(3),
      I5 => N0,
      O6 => mapp_shift_rotate_value(3),
      O5 => mapp_shift_rotate_value(2)
    );
  mapp_data_path_loop_0_lsb_shift_rotate_shift_rotate_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_shift_in_bit,
      I1 => mapp_sx(1),
      I2 => mapp_sx(0),
      I3 => mapp_sx(2),
      I4 => instruction(3),
      I5 => N0,
      O6 => mapp_shift_rotate_value(1),
      O5 => mapp_shift_rotate_value(0)
    );
  mapp_data_path_loop_6_output_data_sy_kk_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sy(6),
      I1 => instruction(6),
      I2 => mapp_sy(7),
      I3 => instruction(7),
      I4 => instruction(12),
      I5 => N0,
      O6 => port_id(7),
      O5 => mapp_sy_or_kk(6)
    );
  mapp_data_path_loop_4_output_data_sy_kk_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sy(4),
      I1 => instruction(4),
      I2 => mapp_sy(5),
      I3 => instruction(5),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_sy_or_kk(5),
      O5 => mapp_sy_or_kk(4)
    );
  mapp_data_path_loop_2_output_data_sy_kk_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sy(2),
      I1 => instruction(2),
      I2 => mapp_sy(3),
      I3 => instruction(3),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_sy_or_kk(3),
      O5 => mapp_sy_or_kk(2)
    );
  mapp_address_loop_10_output_data_pc_vector_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => instruction(10),
      I1 => mapp_return_vector(10),
      I2 => instruction(11),
      I3 => mapp_return_vector(11),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_pc_vector(11),
      O5 => mapp_pc_vector(10)
    );
  mapp_address_loop_8_output_data_pc_vector_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => instruction(8),
      I1 => mapp_return_vector(8),
      I2 => instruction(9),
      I3 => mapp_return_vector(9),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_pc_vector(9),
      O5 => mapp_pc_vector(8)
    );
  mapp_address_loop_6_output_data_pc_vector_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => instruction(6),
      I1 => mapp_return_vector(6),
      I2 => instruction(7),
      I3 => mapp_return_vector(7),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_pc_vector(7),
      O5 => mapp_pc_vector(6)
    );
  mapp_address_loop_4_output_data_pc_vector_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => instruction(4),
      I1 => mapp_return_vector(4),
      I2 => instruction(5),
      I3 => mapp_return_vector(5),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_pc_vector(5),
      O5 => mapp_pc_vector(4)
    );
  mapp_address_loop_2_output_data_pc_vector_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => instruction(2),
      I1 => mapp_return_vector(2),
      I2 => instruction(3),
      I3 => mapp_return_vector(3),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_pc_vector(3),
      O5 => mapp_pc_vector(2)
    );
  mapp_pc_mode1_lut : LUT6_2
    generic map(
      INIT => X"0000F000000023FF"
    )
    port map (
      I0 => instruction(12),
      I1 => mapp_returni_type,
      I2 => mapp_move_type,
      I3 => mapp_pc_move_is_valid,
      I4 => mapp_active_interrupt,
      I5 => N0,
      O6 => mapp_pc_mode(1),
      O5 => mapp_pc_mode(0)
    );
  mapp_data_path_loop_0_lsb_shift_rotate_shift_bit_lut : LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
    port map (
      I0 => instruction(0),
      I1 => instruction(1),
      I2 => instruction(2),
      I3 => mapp_carry_flag,
      I4 => mapp_sx(0),
      I5 => mapp_sx(7),
      O => mapp_shift_in_bit
    );
  mapp_data_path_loop_0_output_data_sy_kk_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sy(0),
      I1 => instruction(0),
      I2 => mapp_sy(1),
      I3 => instruction(1),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_sy_or_kk(1),
      O5 => mapp_sy_or_kk(0)
    );
  mapp_address_loop_0_output_data_pc_vector_mux_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => instruction(0),
      I1 => mapp_return_vector(0),
      I2 => instruction(1),
      I3 => mapp_return_vector(1),
      I4 => instruction(12),
      I5 => N0,
      O6 => mapp_pc_vector(1),
      O5 => mapp_pc_vector(0)
    );
  mapp_interrupt_enable_lut : LUT6
    generic map(
      INIT => X"000000000000CAAA"
    )
    port map (
      I0 => mapp_interrupt_enable,
      I1 => instruction(0),
      I2 => mapp_int_enable_type,
      I3 => mapp_t_state(1),
      I4 => mapp_active_interrupt,
      I5 => mapp_internal_reset,
      O => mapp_interrupt_enable_value
    );
  mapp_register_enable_lut : LUT6_2
    generic map(
      INIT => X"C0CC0000A0AA0000"
    )
    port map (
      I0 => mapp_flag_enable_type,
      I1 => mapp_register_enable_type,
      I2 => instruction(12),
      I3 => instruction(17),
      I4 => mapp_t_state(1),
      I5 => N0,
      O6 => mapp_register_enable_value,
      O5 => mapp_flag_enable_value
    );
  mapp_shift_carry_lut : LUT6
    generic map(
      INIT => X"FFFFAACCF0F0F0F0"
    )
    port map (
      I0 => mapp_sx(0),
      I1 => mapp_sx(7),
      I2 => mapp_shadow_carry_flag,
      I3 => instruction(3),
      I4 => instruction(7),
      I5 => instruction(16),
      O => mapp_shift_carry_value
    );
  mapp_bank_lut : LUT6
    generic map(
      INIT => X"ACACFF00FF00FF00"
    )
    port map (
      I0 => instruction(0),
      I1 => mapp_shadow_bank,
      I2 => instruction(16),
      I3 => mapp_bank,
      I4 => mapp_regbank_type,
      I5 => mapp_t_state(1),
      O => mapp_bank_value
    );
  mapp_upper_zero_lut : LUT6
    generic map(
      INIT => X"FBFF000000000000"
    )
    port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => N0,
      I4 => N0,
      I5 => N0,
      O => mapp_upper_zero_sel
    );
  mapp_carry_flag_lut : LUT6_2
    generic map(
      INIT => X"3333AACCF0AA0000"
    )
    port map (
      I0 => mapp_shift_carry,
      I1 => mapp_arith_carry,
      I2 => mapp_parity,
      I3 => instruction(14),
      I4 => instruction(15),
      I5 => instruction(16),
      O6 => mapp_carry_flag_value,
      O5 => mapp_drive_carry_in_zero
    );
  mapp_alu_decode2_lut : LUT6_2
    generic map(
      INIT => X"D000000002000000"
    )
    port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => N0,
      I4 => N0,
      I5 => N0,
      O6 => mapp_arith_logical_sel(2),
      O5 => mapp_arith_logical_sel(1)
    );
  mapp_pc_mode2_lut : LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
    port map (
      I0 => instruction(12),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => mapp_active_interrupt,
      O => mapp_pc_mode(2)
    );
  mapp_pc_move_is_valid_lut : LUT6
    generic map(
      INIT => X"5A3CFFFF00000000"
    )
    port map (
      I0 => mapp_carry_flag,
      I1 => mapp_zero_flag,
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => instruction(17),
      O => mapp_pc_move_is_valid
    );
  mapp_data_path_loop_6_second_operand_out_port_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(6),
      I1 => instruction(10),
      I2 => mapp_sx(7),
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => N0,
      O6 => out_port(7),
      O5 => out_port(6)
    );
  mapp_data_path_loop_4_second_operand_out_port_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(4),
      I1 => instruction(8),
      I2 => mapp_sx(5),
      I3 => instruction(9),
      I4 => instruction(13),
      I5 => N0,
      O6 => out_port(5),
      O5 => out_port(4)
    );
  mapp_data_path_loop_2_second_operand_out_port_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(2),
      I1 => instruction(6),
      I2 => mapp_sx(3),
      I3 => instruction(7),
      I4 => instruction(13),
      I5 => N0,
      O6 => out_port(3),
      O5 => out_port(2)
    );
  mapp_data_path_loop_0_second_operand_out_port_lut : LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => mapp_sx(0),
      I1 => instruction(4),
      I2 => mapp_sx(1),
      I3 => instruction(5),
      I4 => instruction(13),
      I5 => N0,
      O6 => out_port(1),
      O5 => out_port(0)
    );
  mapp_use_zero_flag_lut : LUT6_2
    generic map(
      INIT => X"A280000000F000F0"
    )
    port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => N0,
      I5 => N0,
      O6 => mapp_use_zero_flag_value,
      O5 => mapp_strobe_type
    );
  mapp_lower_parity_lut : LUT6_2
    generic map(
      INIT => X"0000000087780000"
    )
    port map (
      I0 => instruction(13),
      I1 => mapp_carry_flag,
      I2 => mapp_arith_logical_result(0),
      I3 => mapp_arith_logical_result(1),
      I4 => N0,
      I5 => N0,
      O6 => mapp_lower_parity_sel,
      O5 => mapp_lower_parity
    );
  mapp_regbank_type_lut : LUT6
    generic map(
      INIT => X"0080020000000000"
    )
    port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => instruction(17),
      O => mapp_regbank_type
    );
  mapp_read_strobe_lut : LUT6_2
    generic map(
      INIT => X"4000000001000000"
    )
    port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(17),
      I3 => mapp_strobe_type,
      I4 => mapp_t_state(1),
      I5 => N0,
      O6 => mapp_write_strobe_value,
      O5 => mapp_read_strobe_value
    );
  mapp_spm_enable_lut : LUT6_2
    generic map(
      INIT => X"8000000020000000"
    )
    port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(17),
      I3 => mapp_strobe_type,
      I4 => mapp_t_state(1),
      I5 => N0,
      O6 => mapp_spm_enable_value,
      O5 => mapp_k_write_strobe_value
    );
  mapp_register_enable_type_lut : LUT6_2
    generic map(
      INIT => X"00013F3F0010F7CE"
    )
    port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => N0,
      O6 => mapp_register_enable_type,
      O5 => mapp_flag_enable_type
    );
  mapp_alu_decode1_lut : LUT6_2
    generic map(
      INIT => X"7708000000000F00"
    )
    port map (
      I0 => mapp_carry_flag,
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => N0,
      O6 => mapp_arith_carry_in,
      O5 => mapp_alu_mux_sel_value(1)
    );
  mapp_alu_decode0_lut : LUT6_2
    generic map(
      INIT => X"03CA000004200000"
    )
    port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => N0,
      I5 => N0,
      O6 => mapp_arith_logical_sel(0),
      O5 => mapp_alu_mux_sel_value(0)
    );
  mapp_push_pop_lut : LUT6_2
    generic map(
      INIT => X"FFFF100000002000"
    )
    port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => mapp_move_type,
      I3 => mapp_pc_move_is_valid,
      I4 => mapp_active_interrupt,
      I5 => N0,
      O6 => mapp_push_stack,
      O5 => mapp_pop_stack
    );
  mapp_move_type_lut : LUT6_2
    generic map(
      INIT => X"7777027700000200"
    )
    port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => N0,
      O6 => mapp_move_type,
      O5 => mapp_returni_type
    );
  mapp_int_enable_type_lut : LUT6_2
    generic map(
      INIT => X"0010000000000800"
    )
    port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => N0,
      O6 => mapp_int_enable_type,
      O5 => mapp_loadstar_type
    );
  mapp_upper_reg_banks : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_8,
      WE => mapp_register_enable,
      DIA(1) => mapp_alu_result(5),
      DIA(0) => mapp_alu_result(4),
      DIB(1) => mapp_alu_result(5),
      DIB(0) => mapp_alu_result(4),
      DIC(1) => mapp_alu_result(7),
      DIC(0) => mapp_alu_result(6),
      DID(1) => mapp_alu_result(7),
      DID(0) => mapp_alu_result(6),
      ADDRA(4) => mapp_bank,
      ADDRA(3) => instruction(7),
      ADDRA(2) => instruction(6),
      ADDRA(1) => instruction(5),
      ADDRA(0) => instruction(4),
      ADDRB(4) => mapp_sx_addr(4),
      ADDRB(3) => instruction(11),
      ADDRB(2) => instruction(10),
      ADDRB(1) => instruction(9),
      ADDRB(0) => instruction(8),
      ADDRC(4) => mapp_bank,
      ADDRC(3) => instruction(7),
      ADDRC(2) => instruction(6),
      ADDRC(1) => instruction(5),
      ADDRC(0) => instruction(4),
      ADDRD(4) => mapp_sx_addr(4),
      ADDRD(3) => instruction(11),
      ADDRD(2) => instruction(10),
      ADDRD(1) => instruction(9),
      ADDRD(0) => instruction(8),
      DOA(1) => mapp_sy(5),
      DOA(0) => mapp_sy(4),
      DOB(1) => mapp_sx(5),
      DOB(0) => mapp_sx(4),
      DOC(1) => mapp_sy(7),
      DOC(0) => mapp_sy(6),
      DOD(1) => mapp_sx(7),
      DOD(0) => mapp_sx(6)
    );
  mapp_lower_reg_banks : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_8,
      WE => mapp_register_enable,
      DIA(1) => mapp_alu_result(1),
      DIA(0) => mapp_alu_result(0),
      DIB(1) => mapp_alu_result(1),
      DIB(0) => mapp_alu_result(0),
      DIC(1) => mapp_alu_result(3),
      DIC(0) => mapp_alu_result(2),
      DID(1) => mapp_alu_result(3),
      DID(0) => mapp_alu_result(2),
      ADDRA(4) => mapp_bank,
      ADDRA(3) => instruction(7),
      ADDRA(2) => instruction(6),
      ADDRA(1) => instruction(5),
      ADDRA(0) => instruction(4),
      ADDRB(4) => mapp_sx_addr(4),
      ADDRB(3) => instruction(11),
      ADDRB(2) => instruction(10),
      ADDRB(1) => instruction(9),
      ADDRB(0) => instruction(8),
      ADDRC(4) => mapp_bank,
      ADDRC(3) => instruction(7),
      ADDRC(2) => instruction(6),
      ADDRC(1) => instruction(5),
      ADDRC(0) => instruction(4),
      ADDRD(4) => mapp_sx_addr(4),
      ADDRD(3) => instruction(11),
      ADDRD(2) => instruction(10),
      ADDRD(1) => instruction(9),
      ADDRD(0) => instruction(8),
      DOA(1) => mapp_sy(1),
      DOA(0) => mapp_sy(0),
      DOB(1) => mapp_sx(1),
      DOB(0) => mapp_sx(0),
      DOC(1) => mapp_sy(3),
      DOC(0) => mapp_sy(2),
      DOD(1) => mapp_sx(3),
      DOD(0) => mapp_sx(2)
    );
  mapp_data_path_loop_4_small_spm_small_spm_ram_spm_ram : RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_8,
      WE => mapp_spm_enable,
      DIA => mapp_sx(4),
      DIB => mapp_sx(5),
      DIC => mapp_sx(6),
      DID => mapp_sx(7),
      DOA => mapp_spm_ram_data(4),
      DOB => mapp_spm_ram_data(5),
      DOC => mapp_spm_ram_data(6),
      DOD => mapp_spm_ram_data(7),
      ADDRA(5) => mapp_sy_or_kk(5),
      ADDRA(4) => mapp_sy_or_kk(4),
      ADDRA(3) => mapp_sy_or_kk(3),
      ADDRA(2) => mapp_sy_or_kk(2),
      ADDRA(1) => mapp_sy_or_kk(1),
      ADDRA(0) => mapp_sy_or_kk(0),
      ADDRB(5) => mapp_sy_or_kk(5),
      ADDRB(4) => mapp_sy_or_kk(4),
      ADDRB(3) => mapp_sy_or_kk(3),
      ADDRB(2) => mapp_sy_or_kk(2),
      ADDRB(1) => mapp_sy_or_kk(1),
      ADDRB(0) => mapp_sy_or_kk(0),
      ADDRC(5) => mapp_sy_or_kk(5),
      ADDRC(4) => mapp_sy_or_kk(4),
      ADDRC(3) => mapp_sy_or_kk(3),
      ADDRC(2) => mapp_sy_or_kk(2),
      ADDRC(1) => mapp_sy_or_kk(1),
      ADDRC(0) => mapp_sy_or_kk(0),
      ADDRD(5) => mapp_sy_or_kk(5),
      ADDRD(4) => mapp_sy_or_kk(4),
      ADDRD(3) => mapp_sy_or_kk(3),
      ADDRD(2) => mapp_sy_or_kk(2),
      ADDRD(1) => mapp_sy_or_kk(1),
      ADDRD(0) => mapp_sy_or_kk(0)
    );
  mapp_data_path_loop_0_small_spm_small_spm_ram_spm_ram : RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_8,
      WE => mapp_spm_enable,
      DIA => mapp_sx(0),
      DIB => mapp_sx(1),
      DIC => mapp_sx(2),
      DID => mapp_sx(3),
      DOA => mapp_spm_ram_data(0),
      DOB => mapp_spm_ram_data(1),
      DOC => mapp_spm_ram_data(2),
      DOD => mapp_spm_ram_data(3),
      ADDRA(5) => mapp_sy_or_kk(5),
      ADDRA(4) => mapp_sy_or_kk(4),
      ADDRA(3) => mapp_sy_or_kk(3),
      ADDRA(2) => mapp_sy_or_kk(2),
      ADDRA(1) => mapp_sy_or_kk(1),
      ADDRA(0) => mapp_sy_or_kk(0),
      ADDRB(5) => mapp_sy_or_kk(5),
      ADDRB(4) => mapp_sy_or_kk(4),
      ADDRB(3) => mapp_sy_or_kk(3),
      ADDRB(2) => mapp_sy_or_kk(2),
      ADDRB(1) => mapp_sy_or_kk(1),
      ADDRB(0) => mapp_sy_or_kk(0),
      ADDRC(5) => mapp_sy_or_kk(5),
      ADDRC(4) => mapp_sy_or_kk(4),
      ADDRC(3) => mapp_sy_or_kk(3),
      ADDRC(2) => mapp_sy_or_kk(2),
      ADDRC(1) => mapp_sy_or_kk(1),
      ADDRC(0) => mapp_sy_or_kk(0),
      ADDRD(5) => mapp_sy_or_kk(5),
      ADDRD(4) => mapp_sy_or_kk(4),
      ADDRD(3) => mapp_sy_or_kk(3),
      ADDRD(2) => mapp_sy_or_kk(2),
      ADDRD(1) => mapp_sy_or_kk(1),
      ADDRD(0) => mapp_sy_or_kk(0)
    );
  mapp_stack_ram_high : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_8,
      WE => mapp_t_state(1),
      DIA(1) => address(5),
      DIA(0) => address(4),
      DIB(1) => address(7),
      DIB(0) => address(6),
      DIC(1) => address(9),
      DIC(0) => address(8),
      DID(1) => address(11),
      DID(0) => address(10),
      ADDRA(4) => mapp_stack_pointer(4),
      ADDRA(3) => mapp_stack_pointer(3),
      ADDRA(2) => mapp_stack_pointer(2),
      ADDRA(1) => mapp_stack_pointer(1),
      ADDRA(0) => mapp_stack_pointer(0),
      ADDRB(4) => mapp_stack_pointer(4),
      ADDRB(3) => mapp_stack_pointer(3),
      ADDRB(2) => mapp_stack_pointer(2),
      ADDRB(1) => mapp_stack_pointer(1),
      ADDRB(0) => mapp_stack_pointer(0),
      ADDRC(4) => mapp_stack_pointer(4),
      ADDRC(3) => mapp_stack_pointer(3),
      ADDRC(2) => mapp_stack_pointer(2),
      ADDRC(1) => mapp_stack_pointer(1),
      ADDRC(0) => mapp_stack_pointer(0),
      ADDRD(4) => mapp_stack_pointer(4),
      ADDRD(3) => mapp_stack_pointer(3),
      ADDRD(2) => mapp_stack_pointer(2),
      ADDRD(1) => mapp_stack_pointer(1),
      ADDRD(0) => mapp_stack_pointer(0),
      DOA(1) => mapp_stack_memory(5),
      DOA(0) => mapp_stack_memory(4),
      DOB(1) => mapp_stack_memory(7),
      DOB(0) => mapp_stack_memory(6),
      DOC(1) => mapp_stack_memory(9),
      DOC(0) => mapp_stack_memory(8),
      DOD(1) => mapp_stack_memory(11),
      DOD(0) => mapp_stack_memory(10)
    );
  mapp_stack_ram_low : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_8,
      WE => mapp_t_state(1),
      DIA(1) => mapp_zero_flag,
      DIA(0) => mapp_carry_flag,
      DIB(1) => mapp_run,
      DIB(0) => mapp_bank,
      DIC(1) => address(1),
      DIC(0) => address(0),
      DID(1) => address(3),
      DID(0) => address(2),
      ADDRA(4) => mapp_stack_pointer(4),
      ADDRA(3) => mapp_stack_pointer(3),
      ADDRA(2) => mapp_stack_pointer(2),
      ADDRA(1) => mapp_stack_pointer(1),
      ADDRA(0) => mapp_stack_pointer(0),
      ADDRB(4) => mapp_stack_pointer(4),
      ADDRB(3) => mapp_stack_pointer(3),
      ADDRB(2) => mapp_stack_pointer(2),
      ADDRB(1) => mapp_stack_pointer(1),
      ADDRB(0) => mapp_stack_pointer(0),
      ADDRC(4) => mapp_stack_pointer(4),
      ADDRC(3) => mapp_stack_pointer(3),
      ADDRC(2) => mapp_stack_pointer(2),
      ADDRC(1) => mapp_stack_pointer(1),
      ADDRC(0) => mapp_stack_pointer(0),
      ADDRD(4) => mapp_stack_pointer(4),
      ADDRD(3) => mapp_stack_pointer(3),
      ADDRD(2) => mapp_stack_pointer(2),
      ADDRD(1) => mapp_stack_pointer(1),
      ADDRD(0) => mapp_stack_pointer(0),
      DOA(1) => mapp_n0027(1),
      DOA(0) => mapp_n0027(0),
      DOB(1) => mapp_n0028(1),
      DOB(0) => mapp_n0028(0),
      DOC(1) => mapp_stack_memory(1),
      DOC(0) => mapp_stack_memory(0),
      DOD(1) => mapp_stack_memory(3),
      DOD(0) => mapp_stack_memory(2)
    );
  mapp_reset_lut : LUT6_2
    generic map(
      INIT => X"FFFFF55500000EEE"
    )
    port map (
      I0 => mapp_run,
      I1 => mapp_internal_reset,
      I2 => mapp_stack_pointer_carry(4),
      I3 => enable,
      I4 => N1,
      I5 => N0,
      O6 => mapp_internal_reset_value,
      O5 => mapp_run_value
    );
  mapp_data_path_loop_7_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(7),
      Q => mapp_spm_data(7)
    );
  mapp_data_path_loop_7_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(7),
      R => instruction(7),
      Q => mapp_shift_rotate_result(7)
    );
  mapp_data_path_loop_7_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(7),
      Q => mapp_arith_logical_result(7)
    );
  mapp_data_path_loop_6_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(6),
      Q => mapp_spm_data(6)
    );
  mapp_data_path_loop_6_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(6),
      R => instruction(7),
      Q => mapp_shift_rotate_result(6)
    );
  mapp_data_path_loop_6_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(6),
      Q => mapp_arith_logical_result(6)
    );
  mapp_data_path_loop_5_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(5),
      Q => mapp_spm_data(5)
    );
  mapp_data_path_loop_5_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(5),
      R => instruction(7),
      Q => mapp_shift_rotate_result(5)
    );
  mapp_data_path_loop_5_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(5),
      Q => mapp_arith_logical_result(5)
    );
  mapp_data_path_loop_4_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(4),
      Q => mapp_spm_data(4)
    );
  mapp_data_path_loop_4_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(4),
      R => instruction(7),
      Q => mapp_shift_rotate_result(4)
    );
  mapp_data_path_loop_4_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(4),
      Q => mapp_arith_logical_result(4)
    );
  mapp_data_path_loop_3_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(3),
      Q => mapp_spm_data(3)
    );
  mapp_data_path_loop_3_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(3),
      R => instruction(7),
      Q => mapp_shift_rotate_result(3)
    );
  mapp_data_path_loop_3_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(3),
      Q => mapp_arith_logical_result(3)
    );
  mapp_data_path_loop_2_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(2),
      Q => mapp_spm_data(2)
    );
  mapp_data_path_loop_2_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(2),
      R => instruction(7),
      Q => mapp_shift_rotate_result(2)
    );
  mapp_data_path_loop_2_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(2),
      Q => mapp_arith_logical_result(2)
    );
  mapp_data_path_loop_1_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(1),
      Q => mapp_spm_data(1)
    );
  mapp_data_path_loop_1_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(1),
      R => instruction(7),
      Q => mapp_shift_rotate_result(1)
    );
  mapp_data_path_loop_1_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(1),
      Q => mapp_arith_logical_result(1)
    );
  mapp_data_path_loop_0_small_spm_spm_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_ram_data(0),
      Q => mapp_spm_data(0)
    );
  mapp_data_path_loop_0_low_hwbuild_shift_rotate_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_rotate_value(0),
      R => instruction(7),
      Q => mapp_shift_rotate_result(0)
    );
  mapp_data_path_loop_0_arith_logical_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_logical_value(0),
      Q => mapp_arith_logical_result(0)
    );
  mapp_stack_loop_4_upper_stack_pointer_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_pointer_value(4),
      R => mapp_internal_reset,
      Q => mapp_stack_pointer(4)
    );
  mapp_stack_loop_3_upper_stack_pointer_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_pointer_value(3),
      R => mapp_internal_reset,
      Q => mapp_stack_pointer(3)
    );
  mapp_stack_loop_2_upper_stack_pointer_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_pointer_value(2),
      R => mapp_internal_reset,
      Q => mapp_stack_pointer(2)
    );
  mapp_stack_loop_1_upper_stack_pointer_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_pointer_value(1),
      R => mapp_internal_reset,
      Q => mapp_stack_pointer(1)
    );
  mapp_stack_loop_0_lsb_stack_pointer_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_pointer_value(0),
      R => mapp_internal_reset,
      Q => mapp_stack_pointer(0)
    );
  mapp_stack_bit_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_n0028(1),
      Q => mapp_special_bit
    );
  mapp_shadow_bank_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_n0028(0),
      Q => mapp_shadow_bank
    );
  mapp_shadow_zero_flag_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shadow_zero_value,
      Q => mapp_shadow_zero_flag
    );
  mapp_stack_zero_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_n0027(1),
      Q => mapp_shadow_zero_value
    );
  mapp_shadow_carry_flag_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_n0027(0),
      Q => mapp_shadow_carry_flag
    );
  mapp_address_loop_11_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(11),
      R => mapp_internal_reset,
      Q => address(11)
    );
  mapp_address_loop_11_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(11),
      Q => mapp_return_vector(11)
    );
  mapp_address_loop_10_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(10),
      R => mapp_internal_reset,
      Q => address(10)
    );
  mapp_address_loop_10_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(10),
      Q => mapp_return_vector(10)
    );
  mapp_address_loop_9_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(9),
      R => mapp_internal_reset,
      Q => address(9)
    );
  mapp_address_loop_9_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(9),
      Q => mapp_return_vector(9)
    );
  mapp_address_loop_8_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(8),
      R => mapp_internal_reset,
      Q => address(8)
    );
  mapp_address_loop_8_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(8),
      Q => mapp_return_vector(8)
    );
  mapp_address_loop_7_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(7),
      R => mapp_internal_reset,
      Q => address(7)
    );
  mapp_address_loop_7_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(7),
      Q => mapp_return_vector(7)
    );
  mapp_address_loop_6_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(6),
      R => mapp_internal_reset,
      Q => address(6)
    );
  mapp_address_loop_6_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(6),
      Q => mapp_return_vector(6)
    );
  mapp_address_loop_5_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(5),
      R => mapp_internal_reset,
      Q => address(5)
    );
  mapp_address_loop_5_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(5),
      Q => mapp_return_vector(5)
    );
  mapp_address_loop_4_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(4),
      R => mapp_internal_reset,
      Q => address(4)
    );
  mapp_address_loop_4_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(4),
      Q => mapp_return_vector(4)
    );
  mapp_address_loop_3_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(3),
      R => mapp_internal_reset,
      Q => address(3)
    );
  mapp_address_loop_3_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(3),
      Q => mapp_return_vector(3)
    );
  mapp_address_loop_2_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(2),
      R => mapp_internal_reset,
      Q => address(2)
    );
  mapp_address_loop_2_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(2),
      Q => mapp_return_vector(2)
    );
  mapp_address_loop_1_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(1),
      R => mapp_internal_reset,
      Q => address(1)
    );
  mapp_address_loop_1_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(1),
      Q => mapp_return_vector(1)
    );
  mapp_address_loop_0_pc_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_t_state(1),
      D => mapp_pc_value(0),
      R => mapp_internal_reset,
      Q => address(0)
    );
  mapp_address_loop_0_return_vector_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_stack_memory(0),
      Q => mapp_return_vector(0)
    );
  mapp_zero_flag_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_flag_enable,
      D => mapp_zero_flag_value,
      R => mapp_internal_reset,
      Q => mapp_zero_flag
    );
  mapp_use_zero_flag_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_use_zero_flag_value,
      Q => mapp_use_zero_flag
    );
  mapp_carry_flag_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => mapp_flag_enable,
      D => mapp_carry_flag_value,
      R => mapp_internal_reset,
      Q => mapp_carry_flag
    );
  mapp_shift_carry_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_shift_carry_value,
      Q => mapp_shift_carry
    );
  mapp_arith_carry_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_arith_carry_value,
      Q => mapp_arith_carry
    );
  mapp_sx_addr4_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_sx_addr4_value,
      Q => mapp_sx_addr(4)
    );
  mapp_bank_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_bank_value,
      R => mapp_internal_reset,
      Q => mapp_bank
    );
  mapp_read_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_read_strobe_value,
      R => mapp_active_interrupt,
      Q => NLW_mapp_read_strobe_flop_Q_UNCONNECTED
    );
  mapp_write_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_write_strobe_value,
      R => mapp_active_interrupt,
      Q => NLW_mapp_write_strobe_flop_Q_UNCONNECTED
    );
  mapp_spm_enable_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_spm_enable_value,
      R => mapp_active_interrupt,
      Q => mapp_spm_enable
    );
  mapp_k_write_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_k_write_strobe_value,
      R => mapp_active_interrupt,
      Q => NLW_mapp_k_write_strobe_flop_Q_UNCONNECTED
    );
  mapp_register_enable_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_register_enable_value,
      R => mapp_active_interrupt,
      Q => mapp_register_enable
    );
  mapp_flag_enable_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_flag_enable_value,
      R => mapp_active_interrupt,
      Q => mapp_flag_enable
    );
  mapp_alu_mux_sel1_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_alu_mux_sel_value(1),
      Q => mapp_alu_mux_sel(1)
    );
  mapp_alu_mux_sel0_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_alu_mux_sel_value(0),
      Q => mapp_alu_mux_sel(0)
    );
  mapp_interrupt_ack_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_active_interrupt,
      Q => NLW_mapp_interrupt_ack_flop_Q_UNCONNECTED
    );
  mapp_active_interrupt_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_active_interrupt_value,
      Q => mapp_active_interrupt
    );
  mapp_sync_interrupt_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => N1,
      Q => mapp_sync_interrupt
    );
  mapp_interrupt_enable_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_interrupt_enable_value,
      Q => mapp_interrupt_enable
    );
  mapp_t_state2_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_t_state_value(2),
      Q => enable
    );
  mapp_t_state1_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_t_state_value(1),
      Q => mapp_t_state(1)
    );
  mapp_sync_sleep_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => N1,
      Q => mapp_sync_sleep
    );
  mapp_internal_reset_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_internal_reset_value,
      Q => mapp_internal_reset
    );
  mapp_run_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => mapp_run_value,
      Q => mapp_run
    );
  switches_7_IBUF : IBUF
    port map (
      I => switches(7),
      O => switches_7_IBUF_0
    );
  switches_6_IBUF : IBUF
    port map (
      I => switches(6),
      O => switches_6_IBUF_1
    );
  switches_5_IBUF : IBUF
    port map (
      I => switches(5),
      O => switches_5_IBUF_2
    );
  switches_4_IBUF : IBUF
    port map (
      I => switches(4),
      O => switches_4_IBUF_3
    );
  switches_3_IBUF : IBUF
    port map (
      I => switches(3),
      O => switches_3_IBUF_4
    );
  switches_2_IBUF : IBUF
    port map (
      I => switches(2),
      O => switches_2_IBUF_5
    );
  switches_1_IBUF : IBUF
    port map (
      I => switches(1),
      O => switches_1_IBUF_6
    );
  switches_0_IBUF : IBUF
    port map (
      I => switches(0),
      O => switches_0_IBUF_7
    );
  LEDs_7_OBUF : OBUF
    port map (
      I => LEDs_7_57,
      O => LEDs(7)
    );
  LEDs_6_OBUF : OBUF
    port map (
      I => LEDs_6_58,
      O => LEDs(6)
    );
  LEDs_5_OBUF : OBUF
    port map (
      I => LEDs_5_59,
      O => LEDs(5)
    );
  LEDs_4_OBUF : OBUF
    port map (
      I => LEDs_4_60,
      O => LEDs(4)
    );
  LEDs_3_OBUF : OBUF
    port map (
      I => LEDs_3_61,
      O => LEDs(3)
    );
  LEDs_2_OBUF : OBUF
    port map (
      I => LEDs_2_62,
      O => LEDs(2)
    );
  LEDs_1_OBUF : OBUF
    port map (
      I => LEDs_1_63,
      O => LEDs(1)
    );
  LEDs_0_OBUF : OBUF
    port map (
      I => LEDs_0_64,
      O => LEDs(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_8
    );
  mapp2_ram_1k_generate_s6_kcpsm6_rom : RAMB16BWER
    generic map(
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000A41540",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000002000D18001202200120F410E410E410E410E210011F09000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RSTTYPE => "SYNC",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      REGCEA => N1,
      CLKA => clk_BUFGP_8,
      ENB => N1,
      RSTB => N1,
      CLKB => N1,
      REGCEB => N1,
      RSTA => N1,
      ENA => enable,
      DIPA(3) => N1,
      DIPA(2) => N1,
      DIPA(1) => N1,
      DIPA(0) => N1,
      WEA(3) => N1,
      WEA(2) => N1,
      WEA(1) => N1,
      WEA(0) => N1,
      DOA(31) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_31_UNCONNECTED,
      DOA(30) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_30_UNCONNECTED,
      DOA(29) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_29_UNCONNECTED,
      DOA(28) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_28_UNCONNECTED,
      DOA(27) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_27_UNCONNECTED,
      DOA(26) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_26_UNCONNECTED,
      DOA(25) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_25_UNCONNECTED,
      DOA(24) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_24_UNCONNECTED,
      DOA(23) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_23_UNCONNECTED,
      DOA(22) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_22_UNCONNECTED,
      DOA(21) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_21_UNCONNECTED,
      DOA(20) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_20_UNCONNECTED,
      DOA(19) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_19_UNCONNECTED,
      DOA(18) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_18_UNCONNECTED,
      DOA(17) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_17_UNCONNECTED,
      DOA(16) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOA_16_UNCONNECTED,
      DOA(15) => instruction(15),
      DOA(14) => instruction(14),
      DOA(13) => instruction(13),
      DOA(12) => instruction(12),
      DOA(11) => instruction(11),
      DOA(10) => instruction(10),
      DOA(9) => instruction(9),
      DOA(8) => instruction(8),
      DOA(7) => instruction(7),
      DOA(6) => instruction(6),
      DOA(5) => instruction(5),
      DOA(4) => instruction(4),
      DOA(3) => instruction(3),
      DOA(2) => instruction(2),
      DOA(1) => instruction(1),
      DOA(0) => instruction(0),
      ADDRA(13) => address(9),
      ADDRA(12) => address(8),
      ADDRA(11) => address(7),
      ADDRA(10) => address(6),
      ADDRA(9) => address(5),
      ADDRA(8) => address(4),
      ADDRA(7) => address(3),
      ADDRA(6) => address(2),
      ADDRA(5) => address(1),
      ADDRA(4) => address(0),
      ADDRA(3) => N1,
      ADDRA(2) => N1,
      ADDRA(1) => N1,
      ADDRA(0) => N1,
      ADDRB(13) => N1,
      ADDRB(12) => N1,
      ADDRB(11) => N1,
      ADDRB(10) => N1,
      ADDRB(9) => N1,
      ADDRB(8) => N1,
      ADDRB(7) => N1,
      ADDRB(6) => N1,
      ADDRB(5) => N1,
      ADDRB(4) => N1,
      ADDRB(3) => N1,
      ADDRB(2) => N1,
      ADDRB(1) => N1,
      ADDRB(0) => N1,
      DIB(31) => N1,
      DIB(30) => N1,
      DIB(29) => N1,
      DIB(28) => N1,
      DIB(27) => N1,
      DIB(26) => N1,
      DIB(25) => N1,
      DIB(24) => N1,
      DIB(23) => N1,
      DIB(22) => N1,
      DIB(21) => N1,
      DIB(20) => N1,
      DIB(19) => N1,
      DIB(18) => N1,
      DIB(17) => N1,
      DIB(16) => N1,
      DIB(15) => mapp2_n0016(15),
      DIB(14) => mapp2_n0016(14),
      DIB(13) => mapp2_n0016(13),
      DIB(12) => mapp2_n0016(12),
      DIB(11) => mapp2_n0016(11),
      DIB(10) => mapp2_n0016(10),
      DIB(9) => mapp2_n0016(9),
      DIB(8) => mapp2_n0016(8),
      DIB(7) => mapp2_n0016(7),
      DIB(6) => mapp2_n0016(6),
      DIB(5) => mapp2_n0016(5),
      DIB(4) => mapp2_n0016(4),
      DIB(3) => mapp2_n0016(3),
      DIB(2) => mapp2_n0016(2),
      DIB(1) => mapp2_n0016(1),
      DIB(0) => mapp2_n0016(0),
      DOPA(3) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPA_2_UNCONNECTED,
      DOPA(1) => instruction(17),
      DOPA(0) => instruction(16),
      DIPB(3) => N1,
      DIPB(2) => N1,
      DIPB(1) => mapp2_n0015(1),
      DIPB(0) => mapp2_n0015(0),
      DOPB(3) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOPB_2_UNCONNECTED,
      DOPB(1) => mapp2_n0015(1),
      DOPB(0) => mapp2_n0015(0),
      DOB(31) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_31_UNCONNECTED,
      DOB(30) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_30_UNCONNECTED,
      DOB(29) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_29_UNCONNECTED,
      DOB(28) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_28_UNCONNECTED,
      DOB(27) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_27_UNCONNECTED,
      DOB(26) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_26_UNCONNECTED,
      DOB(25) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_25_UNCONNECTED,
      DOB(24) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_24_UNCONNECTED,
      DOB(23) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_23_UNCONNECTED,
      DOB(22) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_22_UNCONNECTED,
      DOB(21) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_21_UNCONNECTED,
      DOB(20) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_20_UNCONNECTED,
      DOB(19) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_19_UNCONNECTED,
      DOB(18) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_18_UNCONNECTED,
      DOB(17) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_17_UNCONNECTED,
      DOB(16) => NLW_mapp2_ram_1k_generate_s6_kcpsm6_rom_DOB_16_UNCONNECTED,
      DOB(15) => mapp2_n0016(15),
      DOB(14) => mapp2_n0016(14),
      DOB(13) => mapp2_n0016(13),
      DOB(12) => mapp2_n0016(12),
      DOB(11) => mapp2_n0016(11),
      DOB(10) => mapp2_n0016(10),
      DOB(9) => mapp2_n0016(9),
      DOB(8) => mapp2_n0016(8),
      DOB(7) => mapp2_n0016(7),
      DOB(6) => mapp2_n0016(6),
      DOB(5) => mapp2_n0016(5),
      DOB(4) => mapp2_n0016(4),
      DOB(3) => mapp2_n0016(3),
      DOB(2) => mapp2_n0016(2),
      DOB(1) => mapp2_n0016(1),
      DOB(0) => mapp2_n0016(0),
      WEB(3) => N1,
      WEB(2) => N1,
      WEB(1) => N1,
      WEB(0) => N1,
      DIA(31) => N1,
      DIA(30) => N1,
      DIA(29) => N1,
      DIA(28) => N1,
      DIA(27) => N1,
      DIA(26) => N1,
      DIA(25) => N1,
      DIA(24) => N1,
      DIA(23) => N1,
      DIA(22) => N1,
      DIA(21) => N1,
      DIA(20) => N1,
      DIA(19) => N1,
      DIA(18) => N1,
      DIA(17) => N1,
      DIA(16) => N1,
      DIA(15) => N1,
      DIA(14) => N1,
      DIA(13) => N1,
      DIA(12) => N1,
      DIA(11) => N1,
      DIA(10) => N1,
      DIA(9) => N1,
      DIA(8) => N1,
      DIA(7) => N1,
      DIA(6) => N1,
      DIA(5) => N1,
      DIA(4) => N1,
      DIA(3) => N1,
      DIA(2) => N1,
      DIA(1) => address(11),
      DIA(0) => address(10)
    );

end Structure;

