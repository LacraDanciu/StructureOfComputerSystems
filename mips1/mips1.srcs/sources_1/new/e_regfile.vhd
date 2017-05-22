----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:33:57 PM
-- Design Name: 
-- Module Name: e_regfile - Behavioral
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
-- use package
USE work.procmem_definitions.ALL;
ENTITY regfile IS
  PORT (clk,rst_n : IN  std_ulogic;
        wen       : IN  std_ulogic;                           -- write control
        writeport : IN  std_ulogic_vector(width-1 DOWNTO 0);  -- register input
        adrwport  : IN  std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address write
        adrport0  : IN  std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address port 0
        adrport1  : IN  std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address port 1
        readport0 : OUT std_ulogic_vector(width-1 DOWNTO 0);  -- output port 0
        readport1 : OUT std_ulogic_vector(width-1 DOWNTO 0)   -- output port 1
        );
END regfile;