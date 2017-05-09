----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:39:55 04/10/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
USE work.procmem_definitions.ALL; 
entity ALU is
	PORT (
	a, b : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	result : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	zero : OUT STD_ULOGIC); 
end ALU;

architecture Behavioral of ALU is

begin
PROCESS(a, b, opcode)
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
		WHEN "00" =>
		r_uns := a_uns + b_uns;
		-- sub
		WHEN "01" =>
		r_uns := a_uns - b_uns;
		-- and
		WHEN "10" =>
		r_uns := a_uns AND b_uns;
		-- or
		WHEN "11" =>
		r_uns := a_uns OR b_uns;
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
	result <= STD_ULOGIC_VECTOR(r_uns);
	zero <= z_uns(0);
END PROCESS;

end Behavioral;

