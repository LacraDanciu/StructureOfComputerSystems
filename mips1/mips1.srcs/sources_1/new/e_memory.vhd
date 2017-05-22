----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:29:00 PM
-- Design Name: 
-- Module Name: e_memory - Behavioral
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
ENTITY memory IS
  PORT (
    clk         : IN  STD_ULOGIC;
    rst_n       : IN  STD_ULOGIC;
    MemRead     : IN  STD_ULOGIC;
    MemWrite    : IN  STD_ULOGIC;
    mem_address : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    data_in     : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    data_out    : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0) );
END memory;