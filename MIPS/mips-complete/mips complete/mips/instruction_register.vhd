library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity instruction_register is
	port (
		clk : in std_logic;
		rst_n : in std_logic;
		memdata : in std_logic_vector(width-1 downto 0);
		irwrite : in std_logic;
		instr : out std_logic_vector(width-1 downto 0)
	);
end entity instruction_register;

architecture RTL of instruction_register is
	signal local_instruction : std_logic_vector(width-1 downto 0);
begin

	proc_instreg : PROCESS(clk, rst_n)
	BEGIN
	IF rst_n = '1' THEN
		local_instruction <= (OTHERS => '0'); 
	ELSIF RISING_EDGE(clk) THEN
		-- write the output of the memory into the instruction register
		IF(IRWrite = '1') THEN
			local_instruction <= memdata;
		END IF;
	END IF;
	END PROCESS;
	
	instr <= local_instruction;
end architecture RTL;
