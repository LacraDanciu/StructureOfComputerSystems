----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:29:42 04/10/2017 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
	 Port ( sel : in  STD_LOGIC;
           A   : in  STD_ULOGIC_VECTOR (31 downto 0);
           B   : in  STD_ULOGIC_VECTOR (31 downto 0);
           X   : out STD_ULOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
	X <= A when (sel = '1') else B;
end Behavioral;
