----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:45:03 04/10/2017 
-- Design Name: 
-- Module Name:    IR - Behavioral 
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
USE work.procmem_definitions.ALL; 

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IR is
	PORT (
	clk : IN STD_ULOGIC;
	rst_n : IN STD_ULOGIC;
	memdata : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	IRWrite : IN STD_ULOGIC;
	instr_31_26 : OUT STD_ULOGIC_VECTOR(5 DOWNTO 0);
	instr_25_21 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
	instr_20_16 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
	instr_15_0 : OUT STD_ULOGIC_VECTOR(15 DOWNTO 0) ); 
end IR;

architecture Behavioral of IR is

BEGIN
proc_instreg : PROCESS(clk, rst_n)
BEGIN
	IF rst_n = '0' THEN
		instr_31_26 <= (OTHERS => '0'); 
		instr_25_21 <= (OTHERS => '0');
		instr_20_16 <= (OTHERS => '0');
		instr_15_0 <= (OTHERS => '0');
	--ELSIF RISING_EDGE(clk) THEN
	-- write the output of the memory into the instruction register
		elsIF(IRWrite = '1') THEN
			instr_31_26 <= memdata(31 DOWNTO 26);
			instr_25_21 <= memdata(25 DOWNTO 21);
			instr_20_16 <= memdata(20 DOWNTO 16);
			instr_15_0 <= memdata(15 DOWNTO 0);
		--END IF;
	END IF;
END PROCESS; 

end Behavioral;

