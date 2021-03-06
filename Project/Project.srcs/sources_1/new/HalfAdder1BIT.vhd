----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2017 08:12:38 PM
-- Design Name: 
-- Module Name: HalfAdder1BIT - Behavioral
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

entity HalfAdder1BIT is
    Port ( A : in  STD_LOGIC;
          B : in  STD_LOGIC;
          CIN : in  STD_LOGIC;
          S : out  STD_LOGIC);
end HalfAdder1BIT;

architecture Behavioral of HalfAdder1BIT is

begin

    S <= A xor B xor CIN;
    
end Behavioral;
