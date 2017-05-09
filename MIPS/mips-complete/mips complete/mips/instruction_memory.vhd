library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity instruction_memory is
	port (
		clk : in std_logic;
		addr : in std_logic_vector(width - 1 downto 0);
		data : out std_logic_vector(width - 1 downto 0)		
	);	
end entity instruction_memory;

architecture RTL of instruction_memory is
	-- Type declarations --
	type mem is array ( 0 to 2**4 - 1) of std_logic_vector(31 downto 0);
	
	-- Constant declarations --
  	constant instr_rom : mem := (
	    --0  => "000000 00000 00001 00010 00000 000000",
		0 => "00000000000000010001000000000000",
		1 => "00000100011000110000000000000000",
		2 => "00001000010000100000000000000001",
		others => "00000000000000000000000000000000"
	);
begin
	FetchData:
	process (clk)
	begin
		if rising_edge(clk) then
			data <= instr_rom(to_integer(unsigned(addr)));
		end if;	
	end process;
end architecture RTL;
