----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:24:29 04/10/2017 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
 port(clk : in  STD_LOGIC;
      instruction : in  STD_uLOGIC_VECTOR (31 downto 0);
		MemRead: out STD_LOGIC;
		MemWrite: out STD_LOGIC;
		RegDst: out STD_LOGIC;
		RegWrite: out STD_LOGIC;
		AluSrcA: out STD_LOGIC;
		AluSrcB: out STD_LOGIC;
		MemtoReg: out STD_LOGIC;
		IRWrite: out STD_LOGIC;
		IRWriteClk: out STD_LOGIC;
		PCWrite: out STD_LOGIC;
		AluControl: out  STD_LOGIC_VECTOR (1 downto 0);
		AluOutControl: OUT std_logic );
end ControlUnit;


architecture Behavioral of ControlUnit is

component counter is
	port(clk: in STD_LOGIC;
			reset: in STD_LOGIC;
		  phase: out STD_LOGIC_VECTOR(2 downto 0));
end component;

signal phase: STD_LOGIC_VECTOR (2 downto 0); 
signal reset: STD_LOGIC:='1';
begin

	COUNTERPART: counter port map (clk => clk,
										    reset => reset,
											 phase => phase);
											 
	process(phase)
	begin
		--fetch
		 case phase is
		 when "000" =>   MemWrite<='0';	  
							  MemRead<='1';
							  RegDst<='0';
							  RegWrite<='0';
							  AluSrcA<='0';
							  AluSrcB<='0';
							  AluControl<="00";
							  AluOutControl <='0';
							  PCWrite<='1';
							  IRWrite<='1';
							  IRWriteClk <= '1';
							  MemToReg<='0';
							  reset <= '0';
		 --decode
		 when "001"  =>
			  MemWrite<='0';	  
			  MemRead<='1';
			  RegDst<='0';
			  RegWrite<='0';
			  AluSrcA<='0';
			  AluSrcB<='0';
			  AluControl<="00";
			  AluOutControl <='0';
			  PCWrite<='0';
			  IRWrite<='0';
			  IRWriteClk <= '0';
			  MemToReg<='0';
		
		--execution
		when "010" =>
			if instruction(31 downto 26) = "000000" then
				if instruction (25 downto 19)="100000" then 
					  MemRead<='0';
					  PCWrite<='0';
					  IRWrite<='0';
					  IRWriteClk <= '0';
					  MemWrite<='0';
					  RegDst<='0';
					  RegWrite<='0';
					  AluSrcA<='1';
					  AluSrcB<='1';
					  MemToReg<='0';
					  AluControl<="00";
					  AluOutControl <='1';
				else
					if instruction (25 downto 19)="100010" then
						  MemRead<='0';
						  PCWrite<='0';
						  IRWrite<='0';
						  MemWrite<='0';
						  RegDst<='0';
						  RegWrite<='0';
						  AluSrcA<='1';
						  AluSrcB<='1';
						  MemToReg<='0';
						  AluControl<="01";
						  AluOutControl <='1';
						  IRWriteClk <= '0';
					elsif instruction (25 downto 19)="100101" then
						  MemRead<='0';
						  PCWrite<='0';
						  IRWrite<='0';
						  MemWrite<='0';
						  RegDst<='0';
						  RegWrite<='0';
						  AluSrcA<='1';
						  AluSrcB<='1';
						  MemToReg<='0';
						  AluControl<="10"; 
						  AluOutControl <='1';
						  IRWriteClk <= '0';
					else
						  MemRead<='0';
						  PCWrite<='0';
						  IRWrite<='0';
						  MemWrite<='0';
						  RegDst<='0';
						  RegWrite<='0';
						  AluSrcA<='1';
						  AluSrcB<='1';
						  MemToReg<='0';
						  AluControl<="11"; 
						  AluOutControl <='1';
						  IRWriteClk <= '0';
				   end if; 
				  end if;						
			  else
					if instruction(31 downto 26) = "100011" then	     
						MemRead<='1';
						PCWrite<='0';
						IRWrite<='0';
						MemWrite<='0';
						RegDst<='0';
						RegWrite<='0';
						AluSrcA<='1';
						AluSrcB<='0';
						MemToReg<='0';
						AluControl<="00";
						AluOutControl <='0';
						IRWriteClk <= '0';
					else
						MemRead<='1';
						PCWrite<='0';
						IRWrite<='0';
						MemWrite<='0';
						RegDst<='0';
						RegWrite<='0';
						AluSrcA<='1';
						AluSrcB<='0';
						MemToReg<='0';
						AluControl<="00";
						AluOutControl <='0';
						IRWriteClk <= '0';
					end if;
				end if;
			WHEN others =>MemWrite<='0';	  
							  MemRead<='1';
							  RegDst<='0';
							  RegWrite<='0';
							  AluSrcA<='0';
							  AluSrcB<='0';
							  AluControl<="00";
							  AluOutControl <='0';
							  PCWrite<='1';
							  IRWrite<='1';
							  IRWriteClk <= '1';
							  MemToReg<='0';
							  reset <= '0';
			 end case;
	end process;
end Behavioral;

