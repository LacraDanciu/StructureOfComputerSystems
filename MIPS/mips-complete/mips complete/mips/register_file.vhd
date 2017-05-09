library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity register_file is
	PORT (
		clk,rst_n : in std_logic;
		wen : in std_logic; -- write control
		writeport : in std_logic_vector(width-1 downto 0); -- register input
		adrwport : in std_logic_vector(regfile_adrsize-1 downto 0);-- address write
		adrport0 : in std_logic_vector(regfile_adrsize-1 downto 0);-- address port 0
		adrport1 : in std_logic_vector(regfile_adrsize-1 downto 0);-- address port 1
		readport0 : out std_logic_vector(width-1 downto 0); -- output port 0
		readport1 : out std_logic_vector(width-1 downto 0) -- output port 1
	); 
end entity register_file;

architecture RTL of register_file is
	SUBTYPE WordT IS std_logic_vector(width-1 DOWNTO 0); -- reg word TYPE
	TYPE StorageT IS ARRAY(0 TO regfile_depth-1) OF WordT; -- reg array TYPE
	SIGNAL registerfile : StorageT; -- reg file contents 
begin
	-- perform write operation
	PROCESS(rst_n, clk)
	BEGIN
		IF rst_n = '1' THEN
			FOR i IN 0 TO regfile_depth-1 LOOP
				registerfile(i) <= (OTHERS => '0');
			END LOOP;
			
			registerfile(0) <= "00000000000000000000000000000001";
			registerfile(1) <= "00000000000000000000000000000010";
			
		ELSIF rising_edge(clk) THEN
			IF wen = '1' THEN 
				registerfile(to_integer(unsigned(adrwport))) <= writeport;
			END IF;
		END IF;
	END PROCESS;
	
	-- perform reading ports
	readport0 <= registerfile(to_integer(unsigned(adrport0)));
	readport1 <= registerfile(to_integer(unsigned(adrport1))); 
end architecture RTL;
