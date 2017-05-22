----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:35:16 PM
-- Design Name: 
-- Module Name: e_pc - Behavioral
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
ENTITY pc IS
  PORT (
    clk         : IN  STD_ULOGIC;
    rst_n       : IN  STD_ULOGIC;
    pc_in       : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    PC_en       : IN  STD_ULOGIC;
    pc_out      : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0) );
END pc;