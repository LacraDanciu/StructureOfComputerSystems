----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:24:07 04/04/2016 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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

entity control_unit is
    Port ( 
    	   func : in  std_logic_vector (5 downto 0);
           phase : in  std_logic_vector (2 downto 0);
           op_code : in  std_logic_vector (5 downto 0);
		   shift_in : in  std_logic_vector (4 downto 0);
           pc_write : out  std_logic;
           reg_dst : out  std_logic; -- '0' -> rd else 'rt'
           a_src : out  std_logic; -- '0' -> rs else "0000..0"
           b_src : out  std_logic; -- '0' -> rt else ext(imm)
           a_write : out  std_logic;
           b_write : out  std_logic;
           alu_code : out  std_logic_vector(2 downto 0);
           mem_write : out  std_logic;
           out_write : out  std_logic;
           mem_read : out  std_logic;
           mem_2_reg : out  std_logic; -- '1' -> mem else alu out 
           reg_write : out  std_logic;
           ir_write : out  std_logic; 
           shift_out : out  std_logic_vector (4 downto 0));
end control_unit;

architecture Behavioral of control_unit is

begin

process(op_code, phase, shift_in, func)
begin

case op_code is
	-- r-type instr
	when "000000" =>
		case func is
			-- add
			when "000000" =>
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
			-- sub
			when "000001" =>
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "001";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
			-- and	
			when "000010" =>
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "010";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
			-- or
			when "000011" =>
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "011";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
			-- shl
			when "000100" =>
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "100";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
			-- shr
			when "000101" =>
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "101";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
				when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
			end case;
		-- ld
		when "000001" =>	
				case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '1';
					  b_src 		<= '1';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '1';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '1';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '1';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
		-- st
		when "000010" =>
			case phase is 
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '1';
					  b_src 		<= '1';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '1';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
		-- addi
		when "000011" =>
			case phase is 
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '1';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
		-- subi
		when "000100" =>
			case phase is 
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '1';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "001";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
		-- andi
		when "000101" =>
			case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '1';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "010";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
		-- ori
		when "000110" =>
			case phase is
					-- if
					when "000" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '1';					
					-- id
					when "001" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '1';
					  a_write 	<= '1';
					  b_write 	<= '1';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- ex
					when "010" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "011";
					  mem_write <= '0';
					  out_write <= '1';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
					-- mem
				 	when "011" =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				  	-- wb
				 	when "100" =>
					  pc_write 	<= '1';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '1';
					  ir_write 	<= '0';
				   when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
				end case;
		-- others
		when others =>
					  pc_write 	<= '0';
					  reg_dst 	<= '0';
					  a_src 		<= '0';
					  b_src 		<= '0';
					  a_write 	<= '0';
					  b_write 	<= '0';
					  alu_code 	<= "000";
					  mem_write <= '0';
					  out_write <= '0';
					  mem_read 	<= '0';
					  mem_2_reg <= '0';
					  reg_write <= '0';
					  ir_write 	<= '0';
		end case;
end process;

shift_out <= shift_in;
				
					

end Behavioral;