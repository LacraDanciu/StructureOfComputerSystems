----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:41 03/20/2017 
-- Design Name: 
-- Module Name:    CarryLA - Behavioral 
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

entity CarryLA is
	port(a,b: in std_logic_vector (3 downto 0);
		carry_in: in std_logic;
		carry_out: out std_logic;
		suma: out std_logic_vector (3 downto 0));
end CarryLA;

architecture Behavioral of CarryLA is
signal p,g: std_logic_vector (3 downto 0):= "0000";
signal c :std_logic_vector (3 downto 0):="0000";
signal c2 :std_logic_vector (3 downto 0):="0000";
signal aux :std_logic_vector (3 downto 0):="0000";

component full_adder is
port(x, y ,ci: in std_logic;
	 si,co: out std_logic);
end component;

component carry_block is
port(x, y:  in std_logic_vector (3 downto 0);
	  ci: in std_logic;
	  co: out std_logic_vector(3 downto 0));
end component;

begin

p(0) <= b(0) xor a(0);
p(1) <= b(1) xor a(1);
p(2) <= b(2) xor a(2);
p(3) <= b(3) xor a(3);


g(0) <= b(0) and a(0);
g(1) <= b(1) and a(1);
g(2) <= b(2) and a(2);
g(3) <= b(3) and a(3);



carry: carry_block port map(p, g, carry_in, c);

adder1: full_adder port map(a(0),b(0), carry_in, suma(0),aux(0));
c2(0) <= c(0);
adder2: full_adder port map(a(1),b(1), c2(0), suma(1),aux(1));
c2(1) <= c(1);
adder3: full_adder port map(a(2),b(2), c2(1), suma(2), aux(2));
c2(2) <= c(2);
adder4: full_adder port map(a(3),b(3), c2(2), suma(3), aux(3));


carry_out <= c(3);

end Behavioral;

