----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:05 03/20/2017 
-- Design Name: 
-- Module Name:    carry_block - Behavioral 
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

entity carry_block is
	port(x, y:  in std_logic_vector (3 downto 0);
			ci: in std_logic;
		   co: out std_logic_vector(3 downto 0));
end carry_block;

architecture Behavioral of carry_block is
signal s1,s2,s3: std_logic;
begin
	co(0) <= ci;
	co(1) <= y(0) or (x(0) and ci);
	co(2) <= y(1) or (x(1) and y(0)) or (x(1) and x(0) and ci);
	co(3) <= y(2) or (x(2) and y(1)) or (x(1) and y(0)) or (x(2) and x(1) and x(0) and ci);
end Behavioral;

