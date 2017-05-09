library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity execution is
	port (
		-- Clock and reset --
		clk : in std_logic;
		rst : in std_logic;
		
		-- Control inputs --
		alu_op : in std_logic_vector(2 downto 0);
		sh_amount : in std_logic_vector(4 downto 0);
		alu_out_wr : in std_logic;
		
		-- Data inputs --
		a : in std_logic_vector(width - 1 downto 0);
		b : in std_logic_vector(width - 1 downto 0);
		
		-- Data outputs --
		zero : out std_logic;
		alu_out : out std_logic_vector(width - 1 downto 0)
	);
end entity execution;

architecture RTL of execution is
	-- Component declarations --
	component alu
		port(a, b      : in  std_logic_vector(width - 1 downto 0);
			 opcode    : in  std_logic_vector(2 downto 0);
			 sh_amount : in  std_logic_vector(4 downto 0);
			 result    : out std_logic_vector(width - 1 downto 0);
			 zero      : out std_logic);
	end component alu;
	
	-- Signal declarations --
	signal alu_res : std_logic_vector(width - 1 downto 0);
	
begin
	
	ALUInst: alu
		port map(
			a         => a,
			b         => b,
			opcode    => alu_op,
			sh_amount => sh_amount,
			result    => alu_res,
			zero      => zero
		);
		
	process(clk, rst)
	begin
		if rst = '1' then
			alu_out <= (others => '0');
		elsif rising_edge(clk) then
			if alu_out_wr = '1' then
				alu_out <= alu_res;
			end if;
		end if;		
	end process;

end architecture RTL;
