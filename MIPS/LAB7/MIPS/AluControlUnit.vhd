----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:18:33 04/10/2017 
-- Design Name: 
-- Module Name:    AluControlUnit - Behavioral 
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

entity AluControlUnit is
	port(instruction: in STD_LOGIC_VECTOR(31 downto 0);
		  AluOp: out STD_LOGIC_VECTOR (1 downto 0));
end AluControlUnit;

architecture Behavioral of AluControlUnit is

begin


end Behavioral;

