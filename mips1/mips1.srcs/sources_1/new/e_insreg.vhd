----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:34:47 PM
-- Design Name: 
-- Module Name: e_insreg - Behavioral
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
ENTITY instreg IS
  PORT (
    clk         : IN STD_ULOGIC;
    rst_n       : IN STD_ULOGIC;
    memdata     : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    IRWrite     : IN  STD_ULOGIC;
    instr_31_26 : OUT STD_ULOGIC_VECTOR(5 DOWNTO 0);
    instr_25_21 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
    instr_20_16 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
    instr_15_0  : OUT STD_ULOGIC_VECTOR(15 DOWNTO 0) );
END instreg;