----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:22:07 PM
-- Design Name: 
-- Module Name: a_tempreg_behave - Behavioral
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
ARCHITECTURE behave OF tempreg IS
BEGIN
    temp_reg: PROCESS(clk, rst_n)
        BEGIN
        IF rst_n = '0' THEN
            reg_out <= (OTHERS => '0');
        ELSIF RISING_EDGE(clk) THEN
            -- write register input to output at rising edge
            reg_out <= reg_in;
        END IF;
    END PROCESS;
END behave;