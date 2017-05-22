----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:55:22 05/15/2017 
-- Design Name: 
-- Module Name:    submodule - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity submodule is
Port ( address : in  STD_LOGIC_VECTOR (5 downto 0);
           MWR : in  STD_LOGIC;
			  SELI: in  STD_LOGIC;
			  A0: in STD_LOGIC;
			  BHE : in  STD_LOGIC;
			  dataIn: in STD_LOGIC_VECTOR (15 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (15 downto 0));
end submodule;

architecture Behavioral of submodule is
SUBTYPE WordT IS std_logic_vector(15 DOWNTO 0); -- reg word TYPE 
TYPE StorageT IS ARRAY(0 TO 50) OF WordT;

SIGNAL mem : StorageT :=  (
	 "0000000000000001",
	 "0000000000000010",
	 "0000000000000101",
    "0000000000000111",
	 "0000000000001000",
	others => "0000000000001000"
); -- reg file contents 

signal selLow, selHigh: STD_LOGIC;

begin
	selLow <= (SELI or A0);
	selHigh <= (SELI or BHE);

	process(selLow, MWR, address, mem)
	begin
		if (selLow = '1') then
			if (MWR = '1') then
				mem(conv_integer(address(5 downto 0))) <= dataIn;
			else
				dataOut <= mem(conv_integer(address(5 downto 0)));
			end if;

		
		elsif(selHigh = '1') then
			if (MWR = '1') then
				mem(conv_integer(address(5 downto 0))) <= dataIn;
			else
				dataOut <= mem(conv_integer(address(5 downto 0)));
			end if;
		end if;	
	end process;

--	process(selHigh, MWR, address, mem)
--	begin
--		if(selHigh = '0') then
--			if (MWR = '0') then
--				mem(conv_integer(address(5 downto 0))) <= dataIn;
--			else
--				dataOut <= mem(conv_integer(address(5 downto 0)));
--			end if;
--		end if;
--	end process;
end Behavioral;

