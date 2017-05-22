----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:35:45 PM
-- Design Name: 
-- Module Name: e_tempreg - Behavioral
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
ENTITY tempreg IS
  PORT (
    clk         : IN STD_ULOGIC;
    rst_n       : IN STD_ULOGIC;
    reg_in      : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    reg_out     : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0) );
END tempreg;