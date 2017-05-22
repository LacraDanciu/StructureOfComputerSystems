----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:33:27 PM
-- Design Name: 
-- Module Name: e_alu - Behavioral
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
ENTITY alu IS
  PORT (
    a, b   : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    opcode : IN  STD_ULOGIC_VECTOR(2 DOWNTO 0);
    result : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    zero   : OUT STD_ULOGIC);
END alu;