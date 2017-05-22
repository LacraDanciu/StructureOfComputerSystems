----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:08:03 PM
-- Design Name: 
-- Module Name: p_procmem_definitions - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

PACKAGE ProcMem_definitions IS
    -- globals
    CONSTANT width           : NATURAL  := 32;
    -- definitions for regfile
    CONSTANT regfile_depth   : positive := 32;  -- register file depth = 2**adrsize
    CONSTANT regfile_adrsize : positive := 5;   -- address vector size = log2(depth)
    -- definitions for memory
    CONSTANT ram_adrwidth    : positive := 8;   -- m x n - RAM Block
    CONSTANT ram_datwidth    : positive := 8;
    -- initial RAM content in IntelHEX Format  
    CONSTANT ramfile_std     : string   := "./simulation/ram_256x8.hex";  
    CONSTANT ramfile_block0  : string   := "./simulation/ram0_256x8.hex"; 
    CONSTANT ramfile_block1  : string   := "./simulation/ram1_256x8.hex";  
    CONSTANT ramfile_block2  : string   := "./simulation/ram2_256x8.hex";              
    CONSTANT ramfile_block3  : string   := "./simulation/ram3_256x8.hex";  
END ProcMem_definitions;