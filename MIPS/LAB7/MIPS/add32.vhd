----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:28:27 04/10/2017 
-- Design Name: 
-- Module Name:    add32 - Behavioral 
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

entity add32 is
port(a    : in  std_ulogic_vector(31 downto 0);
       b    : in  std_ulogic_vector(31 downto 0);
       cin  : in  std_logic; 
       sum  : out std_ulogic_vector(31 downto 0);
       cout : out std_logic);
end add32;

architecture Behavioral of add32 is

component fadd is
 port(a    : in  std_logic;
       b    : in  std_logic;
       cin  : in  std_logic;
       s    : out std_logic;
       cout : out std_logic);

end component;

 signal c : std_logic_vector(0 to 30); -- internal carry signals
	begin  -- circuits of add32
  a0: fadd port map(a(0), b(0), cin, sum(0), c(0));
  stage: for I in 1 to 30 generate
             as: fadd port map(a(I), b(I), c(I-1) , sum(I), c(I));
         end generate stage;
  a31: fadd port map(a(31), b(31), c(30) , sum(31), cout);


end Behavioral;

