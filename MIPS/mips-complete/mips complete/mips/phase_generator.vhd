----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:42:32 04/04/2016 
-- Design Name: 
-- Module Name:    phase_generator - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity phase_generator is
	Port ( 
			clk : in std_logic;
			rst : in std_logic;
           	phase : out  std_logic_vector (2 downto 0)
    );
end phase_generator;

architecture Behavioral of phase_generator is
signal phase_aux : std_logic_vector(2 downto 0);
begin
process(clk, rst)
begin
	if rst = '1' then
		phase_aux <= "111";
	elsif(rising_edge(clk)) then
		if phase_aux = "100" then
			phase_aux <= "000";
		else
			phase_aux <= phase_aux + 1;
		end if;
	end if;
end process;

phase <= phase_aux;
end Behavioral;