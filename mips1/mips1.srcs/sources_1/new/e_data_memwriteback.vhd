----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:30:56 PM
-- Design Name: 
-- Module Name: e_data_memwriteback - Behavioral
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
ENTITY data_memwriteback IS
  PORT (clk, rst_n  : IN std_ulogic;
        jump_addr   : IN std_ulogic_vector(width-1 downto 0);
        alu_result  : IN std_ulogic_vector(width-1 downto 0);
        PCSource    : IN std_ulogic_vector(1 downto 0);
        pc_in       : OUT std_ulogic_vector(width-1 downto 0);
        alu_out     : OUT std_ulogic_vector(width-1 downto 0)
        );
END data_memwriteback;