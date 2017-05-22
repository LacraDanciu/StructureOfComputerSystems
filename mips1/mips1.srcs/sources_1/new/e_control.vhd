----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:36:20 PM
-- Design Name: 
-- Module Name: e_control - Behavioral
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
ENTITY control IS
  PORT (clk, rst_n  : IN std_ulogic;
        instr_31_26 : IN std_ulogic_vector(5 downto 0);
        instr_15_0  : IN std_ulogic_vector(15 downto 0);
        zero        : IN std_ulogic;
        ALUopcode   : OUT std_ulogic_vector(2 downto 0);
               RegDst,
 RegWrite,
 ALUSrcA,
 MemRead,
 MemWrite,
 MemtoReg,
 IorD,
 IRWrite
 : OUT
std_ulogic;
        ALUSrcB, PCSource : OUT std_ulogic_vector(1 downto 0);
        PC_en       : OUT std_ulogic
        );
END control;