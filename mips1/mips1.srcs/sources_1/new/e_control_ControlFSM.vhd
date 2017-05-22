----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:37:17 PM
-- Design Name: 
-- Module Name: e_control_ControlFSM - Behavioral
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
ENTITY ControlFSM IS
  PORT (clk, rst_n : IN std_ulogic;
        instr_31_26 : IN std_ulogic_vector(5 downto 0);
       RegDst,
 RegWrite,
 ALUSrcA,
 MemRead,
 MemWrite,
 MemtoReg,
 IorD,
 IRWrite,
 PCWrite,
PCWriteCond : OUT std_ulogic;
        ALUOp, ALUSrcB, PCSource : OUT std_ulogic_vector(1 downto 0)
        );
END ControlFSM;