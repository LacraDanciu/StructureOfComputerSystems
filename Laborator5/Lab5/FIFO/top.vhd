library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
    Port ( dataIn : in  STD_LOGIC_VECTOR (7 downto 0);
           btn_rd : in  STD_LOGIC;
           btn_wr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           empty : out  STD_LOGIC;
           full : out  STD_LOGIC;
           sseg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end top;

architecture Behavioral of top is

component debounce is
	Port (
           d_in : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  q_out: out STD_LOGIC);
	end component debounce;
	
	component fifo_ctrl is
    Port ( rd : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           rdinc : out  STD_LOGIC;
           wrinc : out  STD_LOGIC;
           empty : out  STD_LOGIC;
           full : out  STD_LOGIC);
	end component fifo_ctrl;
	
	component fifomem is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           rd : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           rdinc : in  STD_LOGIC;
           wrinc : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
	end component fifomem;
	
	component displ_7seg is
	port ( clk, rst : in std_logic;
		    data : in std_logic_vector (15 downto 0);
		    sseg : out std_logic_vector (6 downto 0);
		    an : out std_logic_vector (3 downto 0));
	end component displ_7seg;
	
signal rd_i, wr_i, rdinc_i, wrinc_i: STD_LOGIC;
signal data_out_i: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";

begin

	process (rst, clk, btn_rd, btn_wr, dataIn)
		begin

	end process;
	
	filtrrd: debounce port map (d_in => btn_rd, rst => rst, clk => clk, q_out => rd_i);
	filtrwr: debounce port map (d_in => btn_wr, rst => rst, clk => clk, q_out => wr_i);
	fifoCtrl: fifo_ctrl port map (rd => rd_i, wr => wr_i, clk => clk, rst => rst, rdinc => rdinc_i, wrinc => wrinc_i, empty => empty, full => full);
	fifo_mem: fifomem port map (data_in => dataIn, rd => rd_i, wr => wr_i, rdinc => rdinc_i, wrinc => wrinc_i, rst => rst, clk => clk, data_out => data_out_i(7 downto 0));
	data_out_i(15 downto 8) <= dataIn;
	diplay: displ_7seg port map (clk => clk, rst => rst, data => data_out_i, sseg => sseg, an => an);
	
end Behavioral;