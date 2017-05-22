----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:08:49 PM
-- Design Name: 
-- Module Name: a_procmem - Behavioral
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


USE IEEE.numeric_std.ALL;
-- use package
USE work.procmem_definitions.ALL;

ARCHITECTURE behave OF procmem IS
  COMPONENT mips
    PORT (
      clk, rst_n         : IN  std_ulogic;
      mem_data           : IN  std_ulogic_vector(width-1 downto 0);
      reg_B, mem_address : OUT std_ulogic_vector(width-1 downto 0);
      MemRead, MemWrite  : OUT std_ulogic);
  END COMPONENT;
  COMPONENT memory
    PORT (
      clk         : IN  STD_ULOGIC;
      rst_n       : IN  STD_ULOGIC;
      MemRead     : IN  STD_ULOGIC;
      MemWrite    : IN  STD_ULOGIC;
      mem_address : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
      data_in     : IN  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
      data_out    : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0));
  END COMPONENT;
SIGNAL mem_data : std_ulogic_vector(width-1 downto 0);
signal reg_B : std_ulogic_vector(width-1 downto 0);
signal mem_address : std_ulogic_vector(width-1 downto 0);
signal MemRead : std_ulogic;
signal MemWrite : std_ulogic;
BEGIN
  inst_mips : mips
    PORT MAP (
      clk         => clk,
      rst_n       => rst_n,
      mem_data    => mem_data,
      reg_B       => reg_B,
      mem_address => mem_address,
      MemRead     => MemRead,
      MemWrite    => MemWrite
      );
  inst_memory : memory
    PORT MAP (
      clk         => clk,
      rst_n       => rst_n,
      MemRead     => MemRead,
      MemWrite    => MemWrite,
      mem_address => mem_address,
      data_in     => reg_B,
      data_out    => mem_data
      );
END behave;
