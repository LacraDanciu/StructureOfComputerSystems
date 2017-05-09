----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:47:08 04/10/2017 
-- Design Name: 
-- Module Name:    regfile - Behavioral 
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
USE work.procmem_definitions.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regfile is
	PORT (clk,rst_n : IN std_ulogic;
	wen : IN std_ulogic; -- write control
	writeport : IN std_ulogic_vector(width-1 DOWNTO 0); -- register input
	adrwport : IN std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address write
	adrport0 : IN std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address port 0
	adrport1 : IN std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address port 1
	readport0 : OUT std_ulogic_vector(width-1 DOWNTO 0); -- output port 0
	readport1 : OUT std_ulogic_vector(width-1 DOWNTO 0) -- output port 1
	); 
end regfile;

architecture Behavioral of regfile is
SUBTYPE WordT IS std_ulogic_vector(width-1 DOWNTO 0); -- reg word TYPE
TYPE StorageT IS ARRAY(0 TO regfile_depth-1) OF WordT; -- reg array TYPE
SIGNAL registerfile : StorageT; -- reg file contents

BEGIN
-- perform write operation
	PROCESS(rst_n, clk)
	BEGIN
		--IF rst_n = '0' THEN
			FOR i IN 0 TO regfile_depth-1 LOOP
				registerfile(i) <= (OTHERS => '0');
			END LOOP;
		   IF rising_edge(clk) THEN
			IF wen = '1' THEN 
				registerfile(to_integer(unsigned(adrwport))) <= writeport;
			END IF;
		END IF;
	END PROCESS;
		
	-- perform reading ports
	--readport0 <= registerfile(to_integer(unsigned(adrport0)));
	--readport1 <= registerfile(to_integer(unsigned(adrport1)));
	readport0(4 downto 0 ) <= adrport0;
	readport1(4 downto 0 ) <= adrport1;


end Behavioral;

