library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity program_counter is
	port (
		clk : in std_logic;
		rst_n : in std_logic;
		pc_in : in std_logic_vector(width-1 downto 0);
		pc_en : in std_logic;
		pc_out : out std_logic_vector(width-1 downto 0) 
	);
end entity program_counter;

architecture RTL of program_counter is
	
begin
	proc_pc : PROCESS(clk, rst_n)
	VARIABLE pc_temp : STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	BEGIN
		IF rst_n = '1' THEN
			pc_temp := (OTHERS => '0');
		ELSIF RISING_EDGE(clk) THEN
			IF PC_en = '1' THEN
				pc_temp := pc_in;
			END IF;
		END IF;
		pc_out <= pc_temp;
	END PROCESS;
end architecture RTL;
