----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:29:51 PM
-- Design Name: 
-- Module Name: e_ram - Behavioral
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
-- use altera_mf library for RAM block
LIBRARY altera_mf;
USE altera_mf.ALL;
-- use package
USE work.procmem_definitions.ALL;
ENTITY ram IS
  GENERIC (adrwidth : positive := ram_adrwidth;
           datwidth : positive := ram_datwidth;
           ramfile  : string   := ramfile_std   -- initial RAM content
                                                -- in IntelHEX Format
           );
  PORT (address : IN  std_logic_vector(ram_adrwidth-1 DOWNTO 0);
        data    : IN  std_logic_vector(ram_datwidth-1 DOWNTO 0);
        inclock : IN  std_logic;        -- used to write data in RAM cells
        wren_p  : IN  std_logic;
        q       : OUT std_logic_vector(ram_datwidth-1 DOWNTO 0));
END ram;