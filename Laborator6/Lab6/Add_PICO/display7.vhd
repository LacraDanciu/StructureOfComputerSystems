----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:43:44 04/03/2017 
-- Design Name: 
-- Module Name:    display7 - Behavioral 
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

entity display7 is
	port ( clk, rst : in std_logic;
		    data : in std_logic_vector (15 downto 0);
		    sseg : out std_logic_vector (6 downto 0);
		    an : out std_logic_vector (3 downto 0));
end display7;

architecture Behavioral of display7 is
	component segment7 is
		 port (HEX: in   STD_LOGIC_VECTOR (3 downto 0);
				LED: out   STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
signal ledsel : std_logic_vector (1 downto 0);
signal cntdiv : std_logic_vector (10 downto 0);
signal segdata : std_logic_vector (3 downto 0);

	
begin

	process (clk, rst)
	begin
		if rst = '1' then
			cntdiv <= (others => '0');
		elsif (clk'event and clk = '1') then
			cntdiv <= cntdiv + 1;
		end if;
	end process;
	
	ledsel <= cntdiv(10 downto 9);
	
	an <= "1110" when ledsel = "00" else
		   "1101" when ledsel = "01" else
		   "1011" when ledsel = "10" else
		   "0111" when ledsel = "11";
			
	segdata <= data (3 downto 0)   when ledsel = "00" else
		        data (7 downto 4)   when ledsel = "01" else
		        data (11 downto 8)  when ledsel = "10" else
		        data (15 downto 12) when ledsel = "11";
				  
	display: segment7
		port map (segdata,sseg);
		
end Behavioral;