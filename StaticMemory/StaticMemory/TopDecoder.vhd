----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:18 05/15/2017 
-- Design Name: 
-- Module Name:    TopDecoder - Behavioral 
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

entity TopDecoder is
Port (E2: in STD_LOGIC;
		Address: in STD_LOGIC_VECTOR(6 downto 0);
		Sel: out STD_LOGIC_VECTOR(7 downto 0);
		E1: out STD_LOGIC);

end TopDecoder;


architecture Behavioral of TopDecoder is

component decoder is
	port( E1: in STD_LOGIC;
			E2: in STD_LOGIC;
			E3: in STD_LOGIC;
			sel : in STD_LOGIC_VECTOR(2 downto 0);
			output : out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal A20N, A21N: STD_LOGIC;
signal A2024N : STD_LOGIC;

begin 
	
	A20N <= NOT ADDRESS(3);
	A21N <= NOT ADDRESS(4);
	
	A2024N <= A20N AND A21N AND ADDRESS(5) AND ADDRESS(6);
	
	DECODE: decoder PORT MAP (E1 => A2024N, 
									  E2 => E2, E3 => '1', 
									  SEL => ADDRESS(2 DOWNTO 0), 
									  OUTPUT => SEL);
	
end Behavioral;

