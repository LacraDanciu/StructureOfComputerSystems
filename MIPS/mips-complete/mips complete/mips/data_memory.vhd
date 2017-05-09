library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity data_memory is
	port (
		-- Clock and reset --
		clk : in std_logic;
		rst : in std_logic;
		
		-- Control inputs --
		rd : in std_logic;
		wr : in std_logic;
		
		-- Data inputs --
		din : in std_logic_vector(width-1 downto 0);
		address : in std_logic_vector(width-1 downto 0);
		
		-- Data outputs --
		dout : out std_logic_vector(width-1 downto 0)
	);
end entity data_memory;

architecture RTL of data_memory is
	type mem is array (0 to 2**4 - 1) of std_logic_vector(width-1 downto 0);
	signal data_ram : mem;
begin
	process (clk, rst)
	begin
		if rst = '1' then
			data_ram(0) <= "00000000000000000000000000000100";
		elsif rising_edge(clk) then
			if rd = '1' then
				dout <= data_ram(to_integer(unsigned(address)));
			elsif wr = '1' then
				data_ram(to_integer(unsigned(address))) <= din;
				dout <= (others => '0');
			else
				dout <= (others => '0');
			end if;
		end if;	
	end process;
end architecture RTL;
