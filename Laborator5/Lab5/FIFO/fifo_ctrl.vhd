library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fifo_ctrl is
    Port ( rd : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           rdinc : out  STD_LOGIC;
           wrinc : out  STD_LOGIC;
           empty : out  STD_LOGIC;
           full : out  STD_LOGIC);
end fifo_ctrl;

architecture Behavioral of fifo_ctrl is

signal rdincCount, wrincCount: STD_LOGIC_VECTOR(2 downto 0) := "000";

begin
	process(rst, clk, rd, wr)
		begin
			if (rst = '1') then
				rdincCount <= "000";
				wrincCount <= "000";
			elsif (rising_edge(clk)) then
				if ((rd = '1') and (wrincCount > rdincCount)) then
					rdincCount <= rdincCount + 1;
					rdinc <= '1';
				elsif (wr = '1') then
					wrincCount <= wrincCount + 1;
					wrinc <= '1';
				end if;
			end if;
	end process;
	
	process (wrincCount, rdincCount)
	begin
	   if (wrincCount = "000" and rdincCount = "000") then
		     empty <= '1';
				full <= '0';
		elsif ((wrincCount xor rdincCount) = "000") then
			empty <= '1';
		elsif (wrincCount = "111" and rdincCount = "000") then
			full <= '1';
			empty <= '0';
		elsif (wrincCount > rdincCount) then
		  empty <= '0';
		end if;
	end process;

end Behavioral;