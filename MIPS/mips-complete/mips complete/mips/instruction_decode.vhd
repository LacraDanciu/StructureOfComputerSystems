library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity instruction_decode is
	port (
		-- Clock and reset --
		clk : in std_logic;
		rst : in std_logic;
		
		-- Control inputs --
		a_src : in std_logic;
		b_src : in std_logic;
		a_wr : in std_logic;
		b_wr : in std_logic;
		reg_wr : in std_logic;
		reg_dst : in std_logic;
		mem_to_reg : in std_logic;
		
		-- Data inputs --
		instr : in std_logic_vector(width - 1 downto 0);
		mem_out : in std_logic_vector(width - 1 downto 0);
		alu_out : in std_logic_vector(width - 1 downto 0);
		
		-- Data outputs --
		rs : out std_logic_vector(4 downto 0);
		rt : out std_logic_vector(4 downto 0);
		rd : out std_logic_vector(4 downto 0);
		a : out std_logic_vector(width - 1 downto 0);
		b : out std_logic_vector(width - 1 downto 0);
		
		b_exposed : out std_logic_vector(width - 1 downto 0)
		
	);
end entity instruction_decode;

architecture RTL of instruction_decode is
	
	-- Component declarations --
	component register_file
		port(
			 clk, rst_n : in  std_logic;
			 wen        : in  std_logic;
			 writeport  : in  std_logic_vector(width - 1 downto 0);
			 adrwport   : in  std_logic_vector(regfile_adrsize - 1 downto 0);
			 adrport0   : in  std_logic_vector(regfile_adrsize - 1 downto 0);
			 adrport1   : in  std_logic_vector(regfile_adrsize - 1 downto 0);
			 readport0  : out std_logic_vector(width - 1 downto 0);
			 readport1  : out std_logic_vector(width - 1 downto 0));
	end component register_file;
	
	-- Signal declarations --
	signal rf_din : std_logic_vector(width-1 downto 0);
	signal addr_wr, addr_rd, addr_rs, addr_rt : std_logic_vector(regfile_adrsize-1 downto 0);
	signal data_rs, data_rt : std_logic_vector(width-1 downto 0);
	signal immediate : std_logic_vector(width-1 downto 0);
	
begin

--		instr_31_26 <= memdata(31 DOWNTO 26);
--		instr_25_21 <= memdata(25 DOWNTO 21);
--		instr_20_16 <= memdata(20 DOWNTO 16);
--		instr_15_0 <= memdata(15 DOWNTO 0);

	RegisterFile: register_file
		port map(
			clk       => clk,
			rst_n     => rst,
			wen       => reg_wr,
			writeport => rf_din,	
			adrwport  => addr_wr,	
			adrport0  => addr_rs,	
			adrport1  => addr_rt,	
			readport0 => data_rs,	
			readport1 => data_rt	
		);
		
	rf_din <= mem_out when mem_to_reg = '1' else
			  alu_out;
	
	addr_wr <= addr_rd when reg_dst = '0' else
			   addr_rt;
	
	addr_rs <= instr(25 downto 21);
	addr_rt <= instr(20 downto 16);
	addr_rd <= instr(15 downto 11);
	
	immediate <= "0000000000000000" & instr(15 downto 0);
	
	ARegister:
	process(clk, rst)
	begin
		if rst = '1' then
			a <= (others => '0');
		elsif rising_edge(clk) then 
			if a_wr = '1' then
				if a_src = '0' then
					a <= data_rs;
				else -- a_src = '1'
					a <= (others => '0');
				end if;
			end if;			
		end if;		
	end process;
		
	BRegister:
	process(clk, rst)
	begin
		if rst = '1' then
			b <= (others => '0');
		elsif rising_edge(clk) then 
			if b_wr = '1' then
				if b_src = '0' then
					b <= data_rt;
				else -- b_src = '1'
					b <= immediate;
				end if;
			end if;			
		end if;		
	end process;
	
	b_exposed <= data_rt;
	rs <= addr_rs;
	rt <= addr_rt;
	rd <= addr_rd;
end architecture RTL;


