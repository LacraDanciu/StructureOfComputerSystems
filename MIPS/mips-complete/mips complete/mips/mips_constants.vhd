package mips_constants is
-- globals
CONSTANT width : NATURAL := 32;

-- definitions for regfile
CONSTANT regfile_depth : positive := 32; -- register file depth = 2**adrsize
CONSTANT regfile_adrsize : positive := 5; -- address vector size = log2(depth) 
	
end package mips_constants;
