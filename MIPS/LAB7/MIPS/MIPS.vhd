----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:25 04/10/2017 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
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
USE work.procmem_definitions.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MIPS is
	port(clk: IN STD_LOGIC;
		  reset: IN STD_LOGIC;
		  ALURESULTMIPS: OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
		  PCOUTMIPS: OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0); 
		  done: OUT STD_LOGIC);
end MIPS;

architecture Behavioral of MIPS is
 component ALU is
	PORT (
	a, b : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	result : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	zero : OUT STD_ULOGIC); 
 end component;
 
 component ControlUnit is
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
		IRWriteClk :out STD_LOGIC;
		PCWrite: out STD_LOGIC;
		AluControl: out  STD_LOGIC_VECTOR (1 downto 0);
		AluOutControl: out STD_LOGIC) ;
 end component;
 
 component IR is
	PORT (
	clk : IN STD_ULOGIC;
	rst_n : IN STD_ULOGIC;
	memdata : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	IRWrite : IN STD_ULOGIC;
	instr_31_26 : OUT STD_ULOGIC_VECTOR(5 DOWNTO 0);
	instr_25_21 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
	instr_20_16 : OUT STD_ULOGIC_VECTOR(4 DOWNTO 0);
	instr_15_0 : OUT STD_ULOGIC_VECTOR(15 DOWNTO 0) ); 
 end component;

 component PC is
	PORT (
	clk : IN STD_ULOGIC;
	rst_n : IN STD_ULOGIC;
	pc_in : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
	PC_en : IN STD_ULOGIC;
	pc_out : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0) );
 end component;
 
 component add32 is
	port(a    : in  std_ulogic_vector(31 downto 0);
       b    : in  std_ulogic_vector(31 downto 0);
       cin  : in  std_logic; 
       sum  : out std_ulogic_vector(31 downto 0);
       cout : out std_logic);
 end component;

 component regfile is
	PORT (clk,rst_n : IN std_ulogic;
	wen : IN std_ulogic; -- write control
	writeport : IN std_ulogic_vector(width-1 DOWNTO 0); -- register input
	adrwport : IN std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address write
	adrport0 : IN std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address port 0
	adrport1 : IN std_ulogic_vector(regfile_adrsize-1 DOWNTO 0);-- address port 1
	readport0 : OUT std_ulogic_vector(width-1 DOWNTO 0); -- output port 0
	readport1 : OUT std_ulogic_vector(width-1 DOWNTO 0) -- output port 1
	); 
 end component;
 
 component  MUX is
	 Port ( sel : in  STD_LOGIC;
           A   : in  STD_ULOGIC_VECTOR (31 downto 0);
           B   : in  STD_ULOGIC_VECTOR (31 downto 0);
           X   : out STD_ULOGIC_VECTOR (31 downto 0));
 end component;
 
 component MUX4 is
	 Port ( sel : in  STD_LOGIC;
           A   : in  STD_ULOGIC_VECTOR (regfile_adrsize-1 DOWNTO 0 );
           B   : in  STD_ULOGIC_VECTOR (regfile_adrsize-1 DOWNTO 0 );
           X   : out STD_ULOGIC_VECTOR (regfile_adrsize-1 DOWNTO 0 ));
end component;
 
component memdataReg is
port (
        clk : in std_logic;
        data_i : in std_ulogic_vector(width-1 downto 0);
        data_o : out std_ulogic_vector(width-1 downto 0) );
end component;

component ALUOut is
port (
        clk : in std_logic;
        InA: in std_ulogic_vector(width-1 downto 0);
        OutB: out std_ulogic_vector(width-1 downto 0)
     );
end component;

signal MemData :STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal instr_31_26 :  STD_ULOGIC_VECTOR(5 DOWNTO 0);
signal instr_25_21 :  STD_ULOGIC_VECTOR(4 DOWNTO 0);
signal instr_20_16 :  STD_ULOGIC_VECTOR(4 DOWNTO 0);
signal instr_15_0  :  STD_ULOGIC_VECTOR(15 DOWNTO 0);
signal PC_in  :  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal PC_en  :  STD_ULOGIC;
signal PC_out :  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal PC_outWith4 :  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal instruction :   STD_uLOGIC_VECTOR (31 downto 0);
signal MemRead    :  STD_LOGIC;
signal MemWrite   :  STD_LOGIC;
signal RegDst     :  STD_LOGIC;
signal RegWrite   :  STD_LOGIC;
signal AluSrcA    :  STD_LOGIC;
signal AluSrcB    :  STD_LOGIC;
signal MemToReg   :  STD_LOGIC;
signal IRWrite    :  STD_ULOGIC;
signal PCWrite    :  STD_LOGIC;
signal MRWrite    :  std_logic;
signal ALUControl :  STD_LOGIC_VECTOR (1 downto 0);
signal ALUresult : STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal zero : STD_LOGIC;
signal cout : STD_LOGIC;
signal ALUoperandB : STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal data_oMem: std_ulogic_vector(width-1 downto 0);
signal A: STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal B: STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal writeReg: STD_ULOGIC_VECTOR(4 DOWNTO 0);
signal writeDataReg :  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal ALUOutData:  STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
signal AluOutControl: STD_LOGIC;                     
signal bAux: STD_ULOGIC_VECTOR (width-1 DOWNTO 0):= "00000000000000000000000000000100"; 
signal memDataAux: STD_ULOGIC_VECTOR (width-1 DOWNTO 0):= "00000000001000100000000000000001";
signal IRWriteClk: STD_LOGIC;
signal address: STD_ULOGIC_VECTOR (width-1 DOWNTO 0);
begin

	PCPART: PC port map (clk => PCWrite,
								rst_n => reset, 
								pc_in => PC_in,
								PC_en => PC_en, 
								pc_out => PC_out);
	MUXFORPC: MUX port map(sel => '1',
							  A => ALUOutData,
							  B => PC_out,
							  X => address);
								
	MEMDATAMap: memdataReg port map(clk => MemToReg,
									  data_i => MemData,
									  data_o => data_oMem);
								
	PC4PART: add32 port map (a  => PC_out, 
									 b => bAux,
									 cin => '0',
									 sum  => PC_outWith4,
									 cout => cout);
							
--memdata  il initializam noi								 
	IRPART: IR port map (clk => '1', --IRWriteClk, 
								rst_n => reset,
								memdata => memDataAux,
								IRWrite => IRWrite,
								instr_31_26 => instr_31_26,
								instr_25_21 => instr_25_21,
								instr_20_16 => instr_20_16, 
								instr_15_0 => instr_15_0);
								
	instruction(31 downto 26) <= instr_31_26;
	instruction(25 downto 21) <= instr_25_21;
	instruction(20 downto 16) <= instr_20_16;
	instruction(15 downto 0) <= instr_15_0;
	
	MUX41: MUX4 port map(sel => RegDst,
							  A => instr_15_0(15 downto 11),
							  B => instr_20_16,
							  X => writeReg);		
							  
	MUX3: MUX port map(sel => MemToReg,
							  A => data_oMem,
							  B => ALUOutData,
							  X =>  writeDataReg);	
			
	REGFILEPART: regfile port map (clk => RegWrite,
											 rst_n => reset,
											 wen => '1', --write control, RegWrite 
											 writeport => writeDataReg, -- register input, out from mux3
											 adrwport => writeReg, -- address write
											 adrport0 => instr_25_21,-- address port 0
											 adrport1  => instr_20_16, -- address port 1
											 readport0 => A,  -- output port 0
											 readport1 => B); -- output port 1
	
	CONTROLUNITPART: ControlUnit port map (clk => clk,
														instruction => instruction,
														MemRead => MemRead,
														MemWrite => MemWrite,
														RegDst => RegDst, 
														RegWrite => RegWrite,
														AluSrcA => AluSrcA,
														AluSrcB => AluSrcB,
														MemtoReg => MemToReg,
														IRWrite => IRWrite,
														IRWriteClk => IRWriteClk,
														PCWrite => PCWrite,
														AluControl => ALUControl,
														AluOutControl => AluOutControl);
--	MUX1: MUX port map(ALUSrc => AluSrcA,
--							  A => -- read port 0
--							  B => PC_out,
--							  X => ALUoperandB);			
--	MUX2: MUX port map(ALUSrc => AluSrcB,
--							  A => -- read port 1
--							  B => "00000000000000000000000000000100",
--							  X => ALUoperandB);							
	
ALUPART: ALU port map (   a => A, --read port 0
								  b => B, -- read port 1
								  opcode => ALUControl,
								  result => ALUresult,
								  zero => zero); 
								  
ALUOUTMap: ALUOut port map(
								clk =>AluOutControl,
								InA => ALUresult, 
								OutB => ALUOutData);
	PCOUTMIPS <= PC_out;
	ALURESULTMIPS <= ALUresult;
	done <= zero;
end Behavioral;

