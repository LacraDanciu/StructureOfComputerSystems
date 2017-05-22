----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:31:44 PM
-- Design Name: 
-- Module Name: e_data_execution - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
-- use package
USE work.procmem_definitions.ALL;
ENTITY data_execution IS
  PORT (instr_25_21 : IN std_ulogic_vector(4 downto 0);
        instr_20_16 : IN std_ulogic_vector(4 downto 0);
        instr_15_0  : IN std_ulogic_vector(15 downto 0);
        ALUSrcA     : IN std_ulogic;
        ALUSrcB     : IN std_ulogic_vector(1 downto 0);
        ALUopcode   : IN std_ulogic_vector(2 downto 0);
        reg_A, reg_B      : IN std_ulogic_vector(width-1 downto 0);
        pc_out            : IN std_ulogic_vector(width-1 downto 0);
        instr_15_0_se     : IN std_ulogic_vector(width-1 downto 0);
        instr_15_0_se_sl  : IN std_ulogic_vector(width-1 downto 0);
        jump_addr   : OUT std_ulogic_vector(width-1 downto 0);
        alu_result  : OUT std_ulogic_vector(width-1 downto 0);
        zero        : OUT std_ulogic
        );
END data_execution;