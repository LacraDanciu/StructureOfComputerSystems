----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:27:07 05/15/2017 
-- Design Name: 
-- Module Name:    CommandCircuit - Behavioral 
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

entity CommandCircuit is
	Port( RD: in STD_LOGIC;
			WR: in STD_LOGIC;
			E1: in STD_LOGIC;
			E2: inout STD_LOGIC;
			SelMode: out STD_LOGIC);
end CommandCircuit;

architecture Behavioral of CommandCircuit is

signal ANDRDWR, ORANDRDWRE1 : STD_LOGIC;

begin

	ANDRDWR <= RD AND WR;
	
	E2 <= ANDRDWR;
	
	ORANDRDWRE1 <= ANDRDWR OR E1;
	
	SELMODE <= ORANDRDWRE1;

end Behavioral;

