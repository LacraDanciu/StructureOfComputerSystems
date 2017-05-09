----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:49:30 04/10/2017 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
	port(clk: in STD_LOGIC;
			reset: in STD_LOGIC;
		  phase: out STD_LOGIC_VECTOR(2 downto 0));
end counter;

architecture Behavioral of counter is  
signal temp : STD_LOGIC_VECTOR(2 downto 0);
begin 
	process(clk, reset)
		begin 
		if reset = '1' then 
			temp <= "000";
		elsif(rising_edge(clk)) then
               temp <= temp + 1;
      end if;
	end process;
	phase <= temp;

end Behavioral;

