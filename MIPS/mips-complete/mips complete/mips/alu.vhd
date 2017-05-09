library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mips_constants.all;

entity alu is
	port (
		a, b : in std_logic_vector(width-1 downto 0);
		opcode : in std_logic_vector(2 downto 0);
		sh_amount : in std_logic_vector(4 downto 0);
		result : out std_logic_vector(width-1 downto 0);
		zero : out std_logic
	);
end entity alu;

architecture RTL of alu is
	
begin
	
	PROCESS(a, b, opcode, sh_amount)
	-- declaration of variables
	VARIABLE a_uns : UNSIGNED(width-1 DOWNTO 0);
	VARIABLE b_uns : UNSIGNED(width-1 DOWNTO 0);
	VARIABLE r_uns : UNSIGNED(width-1 DOWNTO 0);
	VARIABLE z_uns : UNSIGNED(0 DOWNTO 0);
	
	BEGIN
	-- initialize values
	a_uns := UNSIGNED(a); 
	b_uns := UNSIGNED(b);
	r_uns := (OTHERS => '0');
	z_uns(0) := '0';
	
	-- select desired operation
	CASE opcode IS
		-- add
		WHEN "000" =>
		r_uns := a_uns + b_uns;
		-- sub
		WHEN "001" =>
		r_uns := a_uns - b_uns;
		-- and
		WHEN "010" =>
		r_uns := a_uns AND b_uns;
		-- or
		WHEN "011" =>
		r_uns := a_uns OR b_uns;
		-- shl
		WHEN "100" =>
		r_uns := unsigned(std_logic_vector(shift_left(a_uns, to_integer(unsigned(sh_amount)))));
		WHEN "101" =>
		r_uns := unsigned(std_logic_vector(shift_right(a_uns, to_integer(unsigned(sh_amount)))));
		-- others
		WHEN OTHERS => r_uns := (OTHERS => 'X');
	END CASE;
	
	
	-- set zero bit if result equals zero
	IF TO_INTEGER(r_uns) = 0 THEN
		z_uns(0) := '1';
	ELSE
		z_uns(0) := '0';
	END IF;
	
	-- assign variables to output signals
	result <= STD_LOGIC_VECTOR(r_uns);
	zero <= z_uns(0);
	END PROCESS; 

end architecture RTL;
