library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity instruction_fetch is
	port (
		-- Clock and reset --
		clk : in std_logic;
		rst : in std_logic;
		
		-- Control inputs --
		ir_write : in std_logic;
		pc_write : in std_logic;
		
		-- Data outputs --
		pc_out : out std_logic_vector(width - 1 downto 0);
		instr_out  : out std_logic_vector(width-1 downto 0)
	);
end entity instruction_fetch;

architecture RTL of instruction_fetch is
	-- Component declarations --
	component instruction_register
		port(
			 clk         : in  std_logic;
			 rst_n       : in  std_logic;
			 memdata     : in  std_logic_vector(width - 1 downto 0);
			 irwrite     : in  std_logic;
			 instr		 : out std_logic_vector(width-1 downto 0)
		);
	end component instruction_register;
	
	component instruction_memory
		port(
			 clk  : in  std_logic;
			 addr : in  std_logic_vector(31 downto 0);
			 data : out std_logic_vector(31 downto 0)
		);
	end component instruction_memory;
	
	component program_counter
		port(
			 clk    : in  std_logic;
			 rst_n  : in  std_logic;
			 pc_in  : in  std_logic_vector(width - 1 downto 0);
			 pc_en  : in  std_logic;
			 pc_out : out std_logic_vector(width - 1 downto 0)
		);
	end component program_counter;
	
	-- Signal declarations --
	signal instruction : std_logic_vector(width-1 downto 0);
	signal pc : std_logic_vector(width-1 downto 0);
	signal pc_incr : std_logic_vector(width-1 downto 0);
	
begin

	InstructionRegister: instruction_register
		port map(
			clk     => clk,
			rst_n   => rst,
			memdata => instruction,
			irwrite => ir_write,
			instr   => instr_out
		);
		
	InstructionMemory: instruction_memory
		port map(
			clk  => clk,
			addr => pc,
			data => instruction	
		);
		
	ProgramCounter: program_counter
		port map(
			clk    => clk,
			rst_n  => rst,
			pc_in  => pc_incr,
			pc_en  => pc_write,
			pc_out => pc
		);

	pc_incr <= std_logic_vector(unsigned(pc) + 1);

end architecture RTL;







