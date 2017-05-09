library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_constants.all;

entity top_level is
	port (
		clk : in std_logic;
		rst : in std_logic;
		tl_mem_out, tl_alu_out, tl_instruction, tl_a: out std_logic_vector(31 downto 0)
	);
end entity top_level;

architecture Structural of top_level is
	-- Component declarations --
	component phase_generator
		port(clk   : in  std_logic;
			 rst   : in  std_logic;
			 phase : out std_logic_vector(2 downto 0));
	end component phase_generator;
	
	component control_unit
		port(func      : in  std_logic_vector(5 downto 0);
			 phase     : in  std_logic_vector(2 downto 0);
			 op_code   : in  std_logic_vector(5 downto 0);
			 shift_in  : in  std_logic_vector(4 downto 0);
			 pc_write  : out std_logic;
			 reg_dst   : out std_logic;
			 a_src     : out std_logic;
			 b_src     : out std_logic;
			 a_write   : out std_logic;
			 b_write   : out std_logic;
			 alu_code  : out std_logic_vector(2 downto 0);
			 mem_write : out std_logic;
			 out_write : out std_logic;
			 mem_read  : out std_logic;
			 mem_2_reg : out std_logic;
			 reg_write : out std_logic;
			 ir_write  : out std_logic;
			 shift_out : out std_logic_vector(4 downto 0));
	end component control_unit;
	
	component instruction_fetch
		port(clk       : in  std_logic;
			 rst       : in  std_logic;
			 ir_write  : in  std_logic;
			 pc_write  : in  std_logic;
			 pc_out : out std_logic_vector(width - 1 downto 0);
			 instr_out : out std_logic_vector(width - 1 downto 0));
	end component instruction_fetch;
	
	component instruction_decode
		port(clk        : in  std_logic;
			 rst        : in  std_logic;
			 a_src      : in  std_logic;
			 b_src      : in  std_logic;
			 a_wr       : in  std_logic;
			 b_wr       : in  std_logic;
			 reg_wr     : in  std_logic;
			 reg_dst    : in  std_logic;
			 mem_to_reg : in  std_logic;
			 instr      : in  std_logic_vector(width - 1 downto 0);
			 mem_out    : in  std_logic_vector(width - 1 downto 0);
			 alu_out    : in  std_logic_vector(width - 1 downto 0);
			 rs : out std_logic_vector(4 downto 0);
			 rt : out std_logic_vector(4 downto 0);
			 rd : out std_logic_vector(4 downto 0);
			 a : out std_logic_vector(width - 1 downto 0);
			 b : out std_logic_vector(width - 1 downto 0);
			 b_exposed : out std_logic_vector(width - 1 downto 0));
	end component instruction_decode;
	
	component execution
		port(clk        : in  std_logic;
			 rst        : in  std_logic;
			 alu_op     : in  std_logic_vector(2 downto 0);
			 sh_amount  : in  std_logic_vector(4 downto 0);
			 alu_out_wr : in  std_logic;
			 a          : in  std_logic_vector(width - 1 downto 0);
			 b          : in  std_logic_vector(width - 1 downto 0);
			 zero 		: out std_logic;
			 alu_out    : out std_logic_vector(width - 1 downto 0));
	end component execution;
	
	component memory
		port(clk     : in  std_logic;
			 rst     : in  std_logic;
			 mem_rd  : in  std_logic;
			 mem_wr  : in  std_logic;
			 addr    : in  std_logic_vector(width - 1 downto 0);
			 data    : in  std_logic_vector(width - 1 downto 0);
			 mem_out : out std_logic_vector(width - 1 downto 0));
	end component memory;
	
	-- Control signals --
	signal phase : std_logic_vector(2 downto 0);
	
	signal pc_write  :  std_logic;
	signal reg_dst   :  std_logic;
	signal a_src     :  std_logic;
	signal b_src     :  std_logic;
	signal a_write   :  std_logic;
	signal b_write   :  std_logic;
	signal alu_code  :  std_logic_vector(2 downto 0);
	signal mem_write :  std_logic;
	signal out_write :  std_logic;
	signal mem_read  :  std_logic;
	signal mem_2_reg :  std_logic;
	signal reg_write :  std_logic;
	signal ir_write  :  std_logic;
	signal shift_out :  std_logic_vector(4 downto 0);
	
	-- Data signals --
	signal instruction : std_logic_vector(width - 1 downto 0);
	signal mem_out, alu_out : std_logic_vector(width - 1 downto 0);
	signal a, b, b_exposed : std_logic_vector(width - 1 downto 0);
	signal pc : std_logic_vector(width - 1 downto 0);
	signal rt : std_logic_vector(4 downto 0);
	signal rd : std_logic_vector(4 downto 0);
	signal zero_flag : std_logic;
	-- Pipeline registers --
	signal IF_ID : std_logic_vector(2*width - 1 downto 0);
	signal ID_EX : std_logic_vector(3*width + 9 downto 0);
	signal EX_MEM : std_logic_vector(2*width + 5 downto 0);
	signal MEM_WB : std_logic_vector(2*width + 4 downto 0);
	
begin
	
	PhaseGen: phase_generator
		port map(
			clk   => clk,
			rst   => rst,
			phase => phase
		);
		
	ControlUnit: control_unit
		port map(
			func      => instruction(5 downto 0),	
			phase     => phase,		
			op_code   => instruction(31 downto 26),	
			shift_in  => instruction(10 downto 6),	
			pc_write  => pc_write,
			reg_dst   => reg_dst,
			a_src     => a_src,
			b_src     => b_src,
			a_write   => a_write,
			b_write   => b_write,
			alu_code  => alu_code,
			mem_write => mem_write,
			out_write => out_write,
			mem_read  => mem_read,
			mem_2_reg => mem_2_reg,
			reg_write => reg_write,
			ir_write  => ir_write,
			shift_out => shift_out
		);
	
	InstructionFetch: instruction_fetch
		port map(
			clk       => clk,
			rst       => rst,
			ir_write  => ir_write,
			pc_write  => pc_write,
			pc_out 	=> pc,
			instr_out => instruction
		); 
	
	InstructionDecode: instruction_decode
		port map(
			clk        => clk,
			rst        => rst,
			a_src      => a_src,
			b_src      => b_src,
			a_wr       => a_write,
			b_wr       => b_write,
			reg_wr     => reg_write,
			reg_dst    => reg_dst,
			mem_to_reg => mem_2_reg,
			instr      => IF_ID(width - 1 downto 0), -- instruction form IF/ID
			mem_out    => mem_out,
			alu_out    => alu_out,
			rt				=> rt,
			rd				=> rd,
			a          => a,		
			b          => b,
			b_exposed => b_exposed
		);
		
	Execute: execution
		port map(
			clk        => clk,
			rst        => rst,
			alu_op     => alu_code,
			sh_amount  => shift_out,
			alu_out_wr => out_write,
			a          => ID_EX(2*width - 1 downto width),	--a from ID_EX
			b          => ID_EX(3*width - 1 downto 2*width),  --b from ID_EX
			zero  	  => zero_flag,
			alu_out    => alu_out
		);
		
	Mem: memory
		port map(
			clk     => clk,
			rst     => rst,
			mem_rd  => mem_read,
			mem_wr  => mem_write,
			addr    => alu_out,	-- todo
			data    => b_exposed,	-- todo
			mem_out => mem_out
		);
		
	--WriteBack -- -- todo
		
	process(clk)
	begin
			IF_ID(width - 1 downto 0) <= instruction;
			IF_ID(2*width - 1 downto width) <= pc;
			
			ID_EX(width - 1 downto 0) <= IF_ID(2*width - 1 downto width); --pc
			ID_EX(2*width - 1 downto width) <= a; --Reg[rs]
			ID_EX(3*width - 1 downto 2*width) <= b; --Reg[rt]
			ID_EX(3*width + 4 downto 3*width) <= rt; --rt
			ID_EX(3*width + 9 downto 3*width + 5) <= rd; --rd
			
			EX_MEM(0) <= zero_flag; -- zero flag
			EX_MEM(width downto 1) <= alu_out; -- alu result
			EX_MEM(2*width downto width + 1) <= ID_EX(3*width - 1 downto 2*width); -- Reg[rt]
			if reg_dst = '0' then -- destination register rt/rd
				EX_MEM(2*width + 5 downto 2*width + 1) <= ID_EX(3*width + 4 downto 3*width); --rt
			else
				EX_MEM(2*width + 5 downto 2*width + 1) <= ID_EX(3*width + 9 downto 3*width + 5); --rd
			end if;
		
			MEM_WB(width - 1 downto 0) <= EX_MEM(width downto 1); -- ALU result
			MEM_WB(2*width - 1 downto width) <= mem_out; -- Data from memory
			MEM_WB(2*width + 4 downto 2*width) <= EX_MEM(2*width + 5 downto 2*width + 1); -- destination register rt/rd
			
			
	
	end process;
	-- Output mapping --
	tl_mem_out <= mem_out;
	tl_alu_out <= alu_out;
	tl_instruction <= instruction;
	tl_a <= a;
	
end architecture Structural;









