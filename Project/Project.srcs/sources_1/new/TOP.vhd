----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2017 10:36:25 AM
-- Design Name: 
-- Module Name: TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP is
    port(CLK:in std_logic;
		btn:in STD_LOGIC_VECTOR(4 downto 0);
		sw:in STD_LOGIC_VECTOR (15 downto 0);
		led : out STD_LOGIC_VECTOR(15 downto 0);
		an:out STD_LOGIC_VECTOR(3 downto 0);
		cat:out STD_LOGIC_VECTOR(6 downto 0));
		--dp:out std_logic);
end TOP;

architecture Behavioral of TOP is

component DISPLAY is
    PORT ( digit0: in STD_LOGIC_VECTOR(3 downto 0);
           digit1: in STD_LOGIC_VECTOR(3 downto 0);
           digit2: in STD_LOGIC_VECTOR(3 downto 0);
           digit3: in STD_LOGIC_VECTOR(3 downto 0);
           clk: in STD_LOGIC;
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           cat : out  STD_LOGIC_VECTOR (6 downto 0) );
end component;

component MPG is
	Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (4 downto 0);
           enable : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component SSD is
	port(digit0: in std_logic_vector(3 downto 0);
		digit1: in std_logic_vector(3 downto 0);
		digit2: in std_logic_vector(3 downto 0);
		digit3: in std_logic_vector(3 downto 0);
		clk: in std_logic;
		an: out std_logic_vector(3 downto 0);
		cat: out std_logic_vector(6 downto 0));
end component;

component ALUControl is
  Port (clk: in STD_LOGIC;
        A: in STD_LOGIC_VECTOR(15 downto 0);
        B: in STD_LOGIC_VECTOR(15 downto 0); 
        AluOp: in STD_LOGIC_VECTOR(3 downto 0);
        RES: out STD_LOGIC_VECTOR(16 downto 0));
end component;

component MONOIMPULS is
    port ( btn: in std_logic;
		clock: in std_logic;
		enable: out std_logic);
end component;

signal enable : STD_LOGIC_VECTOR(4 downto 0):= "00000";
signal opcode:  STD_LOGIC_VECTOR(3 downto 0):= "0000";
signal Y, YAUX: STD_LOGIC_VECTOR(15 downto 0):= "0000000000000000";
signal X, XAUX: STD_LOGIC_VECTOR(16 downto 0):= "00000000000000000";
signal result: STD_LOGIC_VECTOR(16 downto 0):= "00000000000000000";

begin

B0: MONOIMPULS port map (btn(0), clk, enable(0));
B1: MONOIMPULS port map (btn(1), clk, enable(1));
B2: MONOIMPULS port map (btn(2), clk, enable(2));
B3: MONOIMPULS port map (btn(3), clk, enable(3));
B4: MONOIMPULS port map (btn(4), clk, enable(4));


C2: process(enable, sw, X, Y)
	begin
		if (enable(0)='1') then
		-- can be a counter for the opcode
			opcode <= sw(15 downto 12);
			
		elsif (enable(1)='1') then
			X(15 downto 0) <= sw;
			
		elsif (enable(2)='1') then
			Y <= sw;
	   elsif (enable(3) = '1') then
	       XAUX <= X;
	       YAUX <= Y;

--		elsif (enable(4)='1') then
--			opcode <= "0000";
--			X(15 downto 0) <= x"0000";
--			Y <= x"0000";
		end if;
	end process C2;
	
	-- XAUX , YAUX - > registers given to the ALU only when I press a button
ALUMAP: ALUControl port map (clk => clk, A => XAUX(15 downto 0), B => YAUX, AluOp => opcode, RES => result);
    
    --XAUX <= result;
   led <= result(15 downto 0);
    
    
SSDMAP: SSD port map (result(3 downto 0),result(7 downto 4),result( 11 downto 8),result(15 downto 12), clk, an, cat);

end Behavioral;