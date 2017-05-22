----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2017 02:37:25 PM
-- Design Name: 
-- Module Name: ADDControl - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDControl is
  Port (A, B: in STD_LOGIC_VECTOR(15 downto 0);
        OP: in STD_LOGIC_VECTOR(1 downto 0);
        RES: out STD_LOGIC_VECTOR(15 downto 0));
end ADDControl;

architecture Behavioral of ADDControl is

component ADD16BITS is
  Port (A, B: in STD_LOGIC_VECTOR(15 downto 0);
        CIN: in STD_LOGIC;
        SUM: out STD_LOGIC_VECTOR(15 downto 0);
        COUT: out STD_LOGIC);
end component;

component NOT16BITS is
  Port (A: in STD_LOGIC_VECTOR(15 downto 0);
        F : out STD_LOGIC_VECTOR(15 downto 0));
end component;

signal complement, first, second, result, AUXRES, secondAUX: STD_LOGIC_VECTOR(15 downto 0):= "0000000000000000";
signal cout: STD_LOGIC;

begin 
    process(op, complement, A, B)
    begin
        case op is
            when "00" => first <= A;
                         second <= X"0001";
                         secondAUX <= X"0000";
                        
            when "01" => first <= A;
                         secondAUX <= X"0001";
                         second <= complement + '1';
                         
            when "10" => first <= A;
                         second <= B;
                         secondAUX <= X"0000";
                        
            when "11" => first <= A; 
                         secondAUX <= B;
                         second <= complement + '1';
                         
            when others => 
                        first <= X"0000";
                        second <= X"0000";
                        AUXRES <= X"0000";
                        secondAUX <= X"0000";
        end case;
    end process;

NEGATE: NOT16BITS port map (A => secondAUX, F => complement);
ADDC: ADD16BITS port map (A => first, B => second, CIN => '0', SUM => result, COUT => cout);

    RES <= result;
end Behavioral;