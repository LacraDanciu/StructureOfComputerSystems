----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:15:37 04/24/2017 
-- Design Name: 
-- Module Name:    MUX4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
USE work.procmem_definitions.ALL; 

entity MUX4 is
	 Port ( sel : in  STD_LOGIC;
           A   : in  STD_ULOGIC_VECTOR (regfile_adrsize-1 DOWNTO 0);
           B   : in  STD_ULOGIC_VECTOR (regfile_adrsize-1 DOWNTO 0);
           X   : out STD_ULOGIC_VECTOR (regfile_adrsize-1 DOWNTO 0));
end MUX4;

architecture Behavioral of MUX4 is

begin
	X <= A when (sel = '1') else B;
end Behavioral;

