library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fifomem is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           rd : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           rdinc : in  STD_LOGIC;
           wrinc : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end fifomem;

architecture Behavioral of fifomem is

signal wrptr:STD_LOGIC_VECTOR(2 downto 0) := "000";
signal rdptr:STD_LOGIC_VECTOR(2 downto 0) := "000";
signal dcd3to8: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
signal muxOut:STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin

--write pointer
	process(clk, wrinc, rst)
		begin
			if (RISING_EDGE(clk)) then
				if (rst = '1') then
					wrptr <= "000";
				elsif (wrinc = '1') then
					wrptr <= wrptr + 1;
				end if;
			end if;
	end process;
	
--read pointer
	process(clk, rdinc, rst)
		begin
			if (RISING_EDGE(clk)) then
				if (rst = '1') then
					rdptr <= "000";
				elsif (rdinc = '1') then
					rdptr <= rdptr + 1;
				end if;
			end if;
	end process;
	
--decoder
	process(wrptr)
		begin
			case wrptr is 
				when "000" => dcd3to8 <= "00000001";
				when "001" => dcd3to8 <= "00000010";
				when "010" => dcd3to8 <= "00000100";
				when "011" => dcd3to8 <= "00001000";
				when "100" => dcd3to8 <= "00010000";
				when "101" => dcd3to8 <= "00100000";
				when "110" => dcd3to8 <= "01000000";
				when others => dcd3to8 <= "10000000";
			end case;
	end process;
	
--register set
	process(clk, dcd3to8, wr, rst, data_in)
		begin
			if (rst = '1') then
				reg0 <= "00000000";
				reg1 <= "00000000";
				reg2 <= "00000000";
				reg3 <= "00000000";
				reg4 <= "00000000";
				reg5 <= "00000000";
				reg6 <= "00000000";
				reg7 <= "00000000";
			elsif (RISING_EDGE(clk)) then
				if (wr = '1' and dcd3to8(0) = '1') then
						reg0 <= data_in;
				elsif (wr = '1' and dcd3to8(1) = '1') then
						reg1 <= data_in;
				elsif (wr = '1' and dcd3to8(2) = '1') then
						reg2 <= data_in;
				elsif (wr = '1' and dcd3to8(3) = '1') then
						reg3 <= data_in;
				elsif (wr = '1' and dcd3to8(4) = '1') then
						reg4 <= data_in;
				elsif (wr = '1' and dcd3to8(5) = '1') then
						reg5 <= data_in;
				elsif (wr = '1' and dcd3to8(6) = '1') then
						reg6 <= data_in;
				elsif (wr = '1' and dcd3to8(7) = '1') then
						reg7 <= data_in;
				end if;
			end if;
	end process;
	
--multiplexer
	process(reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, rdptr)
		begin
			case rdptr is
				when "000" => muxOut <= reg0;
				when "001" => muxOut <= reg1;
				when "010" => muxOut <= reg2;
				when "011" => muxOut <= reg3;
				when "100" => muxOut <= reg4;
				when "101" => muxOut <= reg5;
				when "110" => muxOut <= reg6;
				when others => muxOut <= reg7;
			end case;
	end process;
	
--tri-state buffer
	process(muxOut, rd)
		begin
			if (rd = '1') then
				data_out <= muxOut;
			else
				data_out <= "ZZZZZZZZ";
			end if;
	end process;

end Behavioral;

