----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2017 06:13:10 PM
-- Design Name: 
-- Module Name: a_ram_rtl - Behavioral
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- use package
USE work.procmem_definitions.ALL;
ARCHITECTURE rtl OF ram IS
  TYPE
   MEM IS ARRAY(0
 TO (2**ram_adrwidth)-1)
 OF std_logic_vector(ram_datwidth-1
 DOWNTO 0);
  SIGNAL ram_block        : MEM;
  SIGNAL read_address_reg : std_logic_vector(ram_adrwidth-1 DOWNTO 0);
BEGIN
  PROCESS (inclock)
  BEGIN
    IF rising_edge(inclock) THEN
      IF (wren_p = '1') THEN
        ram_block(to_integer(unsigned(address))) <= data;
      END IF;
      -- address is registered at rising edge      
      -- not used, because asynchronous data output is needed for MIPS design
      --read_address_reg <= address;
    END IF;
  END PROCESS;
  -- registered address is used for synchronous data output
  --q <= ram_block(to_integer(unsigned(read_address_reg)));
  -- asynchronous memory output (needed for MIPS design according to [PaHe98])
  -- address is unregistered
  q <= ram_block(to_integer(unsigned(address)));
END rtl;
