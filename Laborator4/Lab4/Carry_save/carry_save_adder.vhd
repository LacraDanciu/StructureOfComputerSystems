----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:37:21 03/20/2017 
-- Design Name: 
-- Module Name:    carry_save_adder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity carry_save_adder is
	port(x, y, z: in unsigned (3 downto 0);
			cout: out std_logic;
			suma: out unsigned (4 downto 0));
end carry_save_adder;

architecture Behavioral of carry_save_adder is

 component full_adder is
 port(x, y ,ci: in std_logic;
		si,co: out std_logic);
end component;
signal c1, s1,c2: unsigned (3 downto 0):= (others => '0');

begin

adder1: full_adder port map (x(0), y(0), z(0), s1(0), c1(0));
adder2: full_adder port map (x(1), y(1), z(1), s1(1), c1(1)); 
adder3: full_adder port map (x(2), y(2), z(2), s1(2), c1(2));
adder4: full_adder port map (x(3), y(3), z(3), s1(3), c1(3));

adder5: full_adder port map (s1(1), c1(0), c2(0), suma(1), c2(1));
adder6: full_adder port map (s1(2), c1(1), c2(1), suma(2), c2(2));
adder7: full_adder port map (s1(3), c1(2), c2(2), suma(3), c2(3));
adder8: full_adder port map ('0', c1(3), c2(3), suma(4), cout);

suma(0) <= s1(0);

end Behavioral;

