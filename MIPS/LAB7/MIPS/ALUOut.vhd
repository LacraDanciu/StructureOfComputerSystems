----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:33:54 04/24/2017 
-- Design Name: 
-- Module Name:    ALUOut - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
USE work.procmem_definitions.ALL; 


entity ALUOut is
port (
        clk : in std_logic;
        InA: in std_ulogic_vector(width-1 downto 0);
        OutB: out std_ulogic_vector(width-1 downto 0)
     );
end ALUOut;

architecture Behavioral of ALUOut is

begin
       process(clk)
		 begin
		  if(rising_edge(clk)) then
         OutB <= InA;
		  end if;	
       end process;
end Behavioral;

