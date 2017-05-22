----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:36:52 PM
-- Design Name: 
-- Module Name: e_control_ALUControl - Behavioral
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
ENTITY ALUControl IS
  PORT (instr_15_0 : IN std_ulogic_vector(15 downto 0);
        ALUOp : IN std_ulogic_vector(1 downto 0);
        ALUopcode : OUT std_ulogic_vector(2 downto 0)
        );
END ALUControl;