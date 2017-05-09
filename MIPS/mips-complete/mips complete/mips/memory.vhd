library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity memory is
	port (
		-- Clock and reset --
		clk : in std_logic;
		rst : in std_logic;
		
		-- Control inputs --
		mem_rd : in std_logic;
		mem_wr : in std_logic;
		
		-- Data inputs --
		addr : in std_logic_vector(width-1 downto 0);
		data : in std_logic_vector(width-1 downto 0);
		
		-- Data outputs --
		mem_out : out std_logic_vector(width-1 downto 0)
	);
end;

architecture RTL of memory is
	-- Component declarations --
	component data_memory
		port(clk     : in  std_logic;
			 rst     : in  std_logic;
			 rd      : in  std_logic;
			 wr      : in  std_logic;
			 din     : in  std_logic_vector(width - 1 downto 0);
			 address : in  std_logic_vector(width - 1 downto 0);
			 dout    : out std_logic_vector(width - 1 downto 0));
	end component data_memory;
	
begin
	Mem: data_memory
		port map(
			clk     => clk,
			rst     => rst,
			rd      => mem_rd,
			wr      => mem_wr,
			din     => data,
			address => addr,
			dout    => mem_out
		);
end architecture RTL;








