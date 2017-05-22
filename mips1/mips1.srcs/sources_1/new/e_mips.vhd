----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:28:35 PM
-- Design Name: 
-- Module Name: e_mips - Behavioral
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
ENTITY mips IS
  PORT (clk, rst_n : IN std_ulogic;
        mem_data   : IN std_ulogic_vector(width-1 downto 0);
        reg_B, mem_address : OUT std_ulogic_vector(width-1 downto 0);
        MemRead, MemWrite  : OUT std_ulogic
        );
END mips;
