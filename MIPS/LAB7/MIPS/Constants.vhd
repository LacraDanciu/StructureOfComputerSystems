--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ProcMem_definitions  is

-- globals
CONSTANT width : NATURAL := 32;
-- definitions for regfile
CONSTANT regfile_depth : positive := 32; -- register file depth = 2**adrsize
CONSTANT regfile_adrsize : positive := 5; -- address vector size = log2(depth) 

end ProcMem_definitions;

package body ProcMem_definitions is


end ProcMem_definitions;
