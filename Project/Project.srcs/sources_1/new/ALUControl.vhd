----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2017 01:16:13 PM
-- Design Name: 
-- Module Name: ALUControl - Behavioral
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

entity ALUControl is
  Port (clk: in STD_LOGIC;
        A: in STD_LOGIC_VECTOR(15 downto 0);
        B: in STD_LOGIC_VECTOR(15 downto 0); 
        AluOp: in STD_LOGIC_VECTOR(3 downto 0);
        RES: out STD_LOGIC_VECTOR(16 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is

component MULTIPLY is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           RES : out  STD_LOGIC_VECTOR (16 downto 0));
end component;

component DIVISION is
    Port (clk: in STD_LOGIC;
          reset: in STD_LOGIC;
          start: in STD_LOGIC;
          A: in STD_LOGIC_VECTOR(15 downto 0);
          B: in STD_LOGIC_VECTOR(7 downto 0);
          
          remainder: out STD_LOGIC_VECTOR(7 downto 0);
          quotient: out STD_LOGIC_VECTOR(7 downto 0);
          term: out STD_LOGIC);
end component;

component ADDControl is
  Port (A, B: in STD_LOGIC_VECTOR(15 downto 0);
        OP: in STD_LOGIC_VECTOR(1 downto 0);
        RES: out STD_LOGIC_VECTOR(15 downto 0));
end component;

component AND16BITS is
  Port (A, B : in STD_LOGIC_VECTOR(15 downto 0);
            F : out STD_LOGIC_VECTOR(15 downto 0));
end component;

component NOT16BITS is
  Port (A: in STD_LOGIC_VECTOR(15 downto 0);
        F : out STD_LOGIC_VECTOR(15 downto 0));
end component;

component OR16BITS is
    Port (A, B : in STD_LOGIC_VECTOR(15 downto 0);
            F : out STD_LOGIC_VECTOR(15 downto 0) );
end component;

component ShiftRegister is
   port(L: in STD_LOGIC; 
        Input: in STD_LOGIC_VECTOR(15 downto 0);
        Output: out STD_LOGIC_VECTOR(15 downto 0));
end component;

signal first, second, forDivisionA : STD_LOGIC_VECTOR(15 downto 0):= "0000000000000000";
signal forDivisionB : STD_LOGIC_VECTOR(7 downto 0):= "00000000";
signal result0, result1, result3, result4, resultADDCOMP: STD_LOGIC_VECTOR(15 downto 0);
signal result2: STD_LOGIC_VECTOR(16 downto 0);
signal mul1, mul2: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal remain, quoti: STD_LOGIC_VECTOR(7 downto 0);
signal start: STD_LOGIC:='0';
signal shift, reset, done : STD_LOGIC := '0';
signal op : STD_LOGIC_VECTOR(1 downto 0);
signal complement: STD_LOGIC_VECTOR(7 downto 0);

begin
    
Control: process(AluOp,A, B, result1, result0, result2, result3, result4, resultADDCOMP, remain,
                 quoti)
         begin
            case AluOp is
                -- multiply
                when "1000" => mul1 <= A(7 downto 0);
                               mul2 <= B(7 downto 0);
                               RES <= result2;
                               
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- division
                when "1001" => forDivisionA <= A;
                               forDivisionB <= B(7 downto 0);
                               start <= '1';
                               reset <= '0';
                               RES(7 downto 0) <= remain;
                               RES(15 downto 8) <= quoti;
                               RES(16) <= '0';
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                -- shift right
                when "1100" => first <= A;
                               shift <= '1';
                               RES <= '0' & result4;
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                               
                -- shift left
                when "1101" => first <= A;
                               shift <= '0'; 
                               RES <= '0' & result4; 
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- AND
                when "0000" => first <= A;
                               second <= B;
                               RES <= '0' & result0;
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- OR
                when "0001" => first <= A;
                               second <= B;
                               RES <= '0' & result1; 
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- NOT
                when "0010" => first <= A;
                               RES <= '0' & result3; 
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- Negate
               when "0011" => first <= X"0000";
                              second <= A;
                              op <= "11";
                              RES <= '0' & resultADDCOMP;    
                              
                              mul1 <= X"00";
                              mul2 <= X"00"; 
                              start <= '0';  
                              forDivisionA <= X"0000";
                              forDivisionB <= X"00";  
                -- INC
                when "0100" => first <= A;
                               RES <= '0' & resultADDCOMP; 
                               op <= "00";
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- DEC
                when "0101" => first <= A;
                               RES <= '0' & resultADDCOMP;
                               op <= "01";
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- ADD
                when "0110" => first <= A;
                               second <= B;
                               op <= "10";
                               RES <= '0' & resultADDCOMP;
                               
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
                -- SUB
                when "0111" => first <= A;
                               second <= B;
                               op <= "11";
                               RES <= '0' & resultADDCOMP;    
                               
                               mul1 <= X"00";
                               mul2 <= X"00"; 
                               start <= '0';  
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";                 
                -- rest
                when others => first <= A;
                               second <= B;
                               RES <= '0' & result1;
                               
                               mul1 <= X"00";
                               mul2 <= X"00";
                               start <= '0';                        
                               forDivisionA <= X"0000";
                               forDivisionB <= X"00";
            end case;
         end process Control;

ANDOP: AND16BITS port map (A => first, B => second, F => result0);
OROP: OR16BITS port map (A => first, B => second, F => result1);
NOTOP: NOT16BITS port map(A=> first, F => result3);
SHIFTOP: ShiftRegister port map (L => shift, Input => first, Output => result4);
MULOP: Multiply port map(A => mul1, B => mul2, RES => result2);
DIVOP: Division port map(clk => clk, reset => reset, start => start, A => forDivisionA, B => forDivisionB,
                        remainder => remain, quotient => quoti, term => done);
ADDCOMPONENT: ADDControl port map(A => first, B => second, op => op, RES => resultADDCOMP);

end Behavioral;
