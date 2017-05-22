----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:07:33 05/15/2017 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

entity Top is
	Port(addressBus: in STD_LOGIC_VECTOR(24 downto 0);
	     dataBus: in STD_LOGIC_VECTOR(15 downto 0);
		  RD: in STD_LOGIC;
		  WR: in STD_LOGIC;
		  BHE: in STD_LOGIC;
		  dataOut: out STD_LOGIC_VECTOR(15 downto 0)
		  );
	
end Top;

architecture Behavioral of Top is

component TopDecoder is
Port (E2: in STD_LOGIC;
		Address: in STD_LOGIC_VECTOR(6 downto 0);
		Sel: out STD_LOGIC_VECTOR(7 downto 0);
		E1: out STD_LOGIC);

end component;

component submodule 
Port (address : in  STD_LOGIC_VECTOR (5 downto 0);
           MWR : in  STD_LOGIC;
			  SELI: in  STD_LOGIC;
			  A0: in STD_LOGIC;
			  BHE : in  STD_LOGIC;
			  dataIn: in STD_LOGIC_VECTOR (15 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component CommandCircuit is
	Port( RD: in STD_LOGIC;
			WR: in STD_LOGIC;
			E1: in STD_LOGIC;
			E2: inout STD_LOGIC;
			SelMode: out STD_LOGIC);
end component;

signal E1aux, E2aux, SelmodeAux: STD_LOGIC;
signal SelModAux : STD_LOGIC_VECTOR(7 downto 0);
signal dataBus0, dataBus1, dataBus2, dataBus3, dataBus4, dataBus5, dataBus6, dataBus7: STD_LOGIC_VECTOR(15 downto 0);

begin

	command: CommandCircuit port map(RD, WR, E1aux, E2aux, SelmodeAux);
	decoderCirc: TopDecoder port map (E2aux, addressBus(23 downto 17), SelModAux, E1aux);
	
	SUBMODULE0: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(0), addressBus(0), BHE, dataBus, dataBus0);
	SUBMODULE1: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(1), addressBus(0), BHE, dataBus, dataBus1);
	SUBMODULE2: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(2), addressBus(0), BHE, dataBus, dataBus2);
	SUBMODULE3: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(3), addressBus(0), BHE, dataBus, dataBus3);
	SUBMODULE4: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(4), addressBus(0), BHE, dataBus, dataBus4);
	SUBMODULE5: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(5), addressBus(0), BHE, dataBus, dataBus5);
	SUBMODULE6: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(6), addressBus(0), BHE, dataBus, dataBus6);
	SUBMODULE7: SUBMODULE PORT MAP (addressBus(6 downto 1), SelmodeAux, selmodaux(7), addressBus(0), BHE, dataBus, dataBus7);

	process(selmodaux)
	begin
		if selmodaux(0)= '1' then
			dataOut <= dataBus0;
		elsif selmodaux(1)= '1' then
			dataOut <= dataBus1;
		elsif selmodaux(2)= '1' then
			dataOut <= dataBus2;
		elsif selmodaux(3)= '1' then
			dataOut <= dataBus3;
		elsif selmodaux(4)= '1' then
			dataOut <= dataBus4;
		elsif selmodaux(5)= '1' then
			dataOut <= dataBus5;
		elsif selmodaux(6)= '1' then
			dataOut <= dataBus6;
		elsif selmodaux(7)= '1' then
			dataOut <= dataBus7;
		end if;
	end process;
end Behavioral;

