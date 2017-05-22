----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:20:52 PM
-- Design Name: 
-- Module Name: a_instreg_behave - Behavioral
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
ARCHITECTURE behave OF instreg IS
BEGIN
  proc_instreg : PROCESS(clk, rst_n)
        BEGIN
        IF rst_n = '0' THEN
            instr_31_26 <= (OTHERS => '0');
            instr_25_21 <= (OTHERS => '0');
            instr_20_16 <= (OTHERS => '0');
            instr_15_0  <= (OTHERS => '0');
        ELSIF RISING_EDGE(clk) THEN
            -- write the output of the memory into the instruction register
            IF(IRWrite = '1') THEN
                instr_31_26 <= memdata(31 DOWNTO 26);
                instr_25_21 <= memdata(25 DOWNTO 21);
                instr_20_16 <= memdata(20 DOWNTO 16);
                instr_15_0  <= memdata(15 DOWNTO 0);
            END IF;
        END IF;
    END PROCESS;
END behave;