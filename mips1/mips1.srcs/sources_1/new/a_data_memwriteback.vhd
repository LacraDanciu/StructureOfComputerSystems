----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:15:09 PM
-- Design Name: 
-- Module Name: a_data_memwriteback - Behavioral
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
ARCHITECTURE behave OF data_memwriteback IS
  COMPONENT tempreg
    PORT (
      clk         : IN STD_ULOGIC;
      rst_n       : IN STD_ULOGIC;
      reg_in      : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
      reg_out     : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0)
      );
  END COMPONENT;
  SIGNAL alu_out_internal : std_ulogic_vector(width-1 downto 0);
BEGIN
  tempreg_inst: tempreg
    PORT MAP (
      clk                 => clk,
      rst_n               => rst_n,
      reg_in              => alu_result,
      reg_out             => alu_out_internal
      );
-- Multiplexor for ALU input A:      
  mux : PROCESS (PCSource, ALU_result, ALU_out_internal, jump_addr)
  BEGIN
     CASE PCSource IS
         WHEN "00" => pc_in <= alu_result;
         WHEN "01" => pc_in <= alu_out_internal;
         WHEN "10" => pc_in <= jump_addr;
         WHEN OTHERS => pc_in <= (OTHERS => 'X');
     END CASE;
  END PROCESS;
  alu_out <= alu_out_internal;
END behave;