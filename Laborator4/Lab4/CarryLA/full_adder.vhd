----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:32:17 03/20/2017 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is

port(x, y ,ci: in std_logic;
		si,co: out std_logic);
end full_adder;

architecture Behavioral of full_adder is
signal s1,s2,s3: std_logic;
begin	
	si <= x xor y xor ci;
	s1 <= x and y;
	s2 <= x and ci;
	s3 <= ci and y;
	co <= s1 or s2 or s3;
	
end Behavioral;

