----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:42:34 04/10/2017 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
	PORT (
	clk : IN STD_ULOGIC;
	rst_n : IN STD_ULOGIC;
	pc_in : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	PC_en : IN STD_ULOGIC;
	pc_out : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0) );
end PC;

architecture Behavioral of PC is

BEGIN
proc_pc : PROCESS(clk, rst_n)
VARIABLE pc_temp : STD_ULOGIC_VECTOR(width-1 DOWNTO 0);

	BEGIN
	IF rst_n = '0' THEN
		pc_temp := (OTHERS => '0');
	ELSIF RISING_EDGE(clk) THEN
		IF PC_en = '1' THEN
			pc_temp := pc_in;
		END IF;
	END IF;
	pc_out <= pc_temp;
END PROCESS; 

end Behavioral;