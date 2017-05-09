----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:57:37 04/24/2017 
-- Design Name: 
-- Module Name:    memdata - Behavioral 
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


entity memdataReg is
port (
        clk : in std_logic;
       -- address : in STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
        data_i : in std_ulogic_vector(width-1 downto 0);
        data_o : out std_ulogic_vector(width-1 downto 0)
     );
end memdataReg;

architecture Behavioral of memdataReg is

--type ram_t is array (0 to 255) of std_logic_vector(7 downto 0);
--signal ram : ram_t := (others => (others => '0'));

begin
       process(clk)
		 begin
		  if(rising_edge(clk)) then
     --    ram(address) <= data_i;
       --  data_o <= ram(address);
         data_o <= data_i;
		  end if;	
       end process;
end Behavioral;


