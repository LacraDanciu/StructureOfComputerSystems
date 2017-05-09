--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:50:34 03/20/2017
-- Design Name:   
-- Module Name:   C:/Users/student/Documents/30431/MariaB/Lab4/Carry_save/Test2.vhd
-- Project Name:  Carry_save
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_save_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Test2 IS
END Test2;
 
ARCHITECTURE behavior OF Test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_save_adder
    	port(x, y, z: in unsigned (3 downto 0);
			cout: out std_logic;
			suma: out unsigned (4 downto 0));
    END COMPONENT;
    

   --Inputs
   signal x : unsigned (3 downto 0) := (others => '0');
   signal y : unsigned (3 downto 0) := (others => '0');
   signal z : unsigned(3 downto 0) := (others => '0');

 	--Outputs
   signal cout : std_logic;
   signal suma : unsigned (4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_save_adder PORT MAP (
          x => x,
          y => y,
          z => z,
          cout => cout,
          suma => suma
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
