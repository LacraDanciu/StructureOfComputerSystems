----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:32:51 PM
-- Design Name: 
-- Module Name: e_data_fetch - Behavioral
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
ENTITY data_fetch IS
  PORT (
    -- inputs  
    clk         : IN  STD_ULOGIC;
    rst_n       : IN  STD_ULOGIC;
    pc_in       : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    alu_out     : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    mem_data    : IN  std_ulogic_vector(width-1 DOWNTO 0);
    -- control signals
    PC_en       : IN  STD_ULOGIC;
    IorD        : IN  STD_ULOGIC;
    IRWrite     : IN  STD_ULOGIC;
    -- outputs
    reg_memdata : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
    instr_31_26 : OUT STD_ULOGIC_VECTOR(5 DOWNTO 0);
    instr_25_21 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
    instr_20_16 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
    instr_15_0  : OUT STD_ULOGIC_VECTOR(15 DOWNTO 0);
    mem_address : OUT std_ulogic_vector(width-1 DOWNTO 0);
    pc_out      : OUT std_ulogic_vector(width-1 DOWNTO 0)
    );
END data_fetch;
