----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:30:22 PM
-- Design Name: 
-- Module Name: e_data - Behavioral
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
ENTITY data IS
  PORT (clk, rst_n : IN std_ulogic;
        PC_en, IorD, MemtoReg, IRWrite, ALUSrcA, RegWrite, RegDst : IN std_ulogic;
        PCSource, ALUSrcB : IN std_ulogic_vector(1 downto 0);
        ALUopcode : IN std_ulogic_vector(2 downto 0);
        mem_data : IN std_ulogic_vector(width-1 downto 0);
        reg_B, mem_address : OUT std_ulogic_vector(width-1 downto 0);
        instr_31_26 : OUT std_ulogic_vector(5 downto 0);
        instr_15_0  : OUT std_ulogic_vector(15 downto 0);
        zero : OUT std_ulogic
        );
END data;