----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:21:32 PM
-- Design Name: 
-- Module Name: a_pc_behave - Behavioral
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
ARCHITECTURE behave OF pc IS
BEGIN
  proc_pc : PROCESS(clk, rst_n)
    VARIABLE pc_temp : STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    BEGIN
      IF rst_n = '0' THEN
          pc_temp := (OTHERS => '0');
      ELSIF RISING_EDGE(clk) THEN
          IF PC_en = '1' THEN
              pc_temp := pc_in;
          END IF;
      END IF;    
      pc_out <= pc_temp;
    END PROCESS;
END behave;