-- MEM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MEM is
  generic (
    instruction_size : natural := 32
  );
  port (
    clk : in std_logic;
    MEM_in : in std_logic_vector(106 downto 0);
	 
	 PCSrc : out std_logic;
	 mux_no_jump_in_B : out std_logic_vector(instruction_size-1 downto 0);
	 MEM_out : out std_logic_vector(70 downto 0)
  );
end entity;

architecture Behavioral of MEM is
  signal RAM_out : std_logic_vector(instruction_size-1 downto 0);
  signal M : std_logic_vector (2 downto 0);
  signal WB : std_logic_vector (1 downto 0);
begin

-- RAM MIPS
  ram_mips : entity work.RAMMIPS generic map (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
    port map (
	   clk => clk,
      Endereco => MEM_in(68 downto 37),
      Dado_in => MEM_in(36 downto 5),
      Dado_out => RAM_out,
		re => M(1), 
		we => M(0), 
		habilita => '1'
	 );

M <= MEM_in(104 downto 102);
WB <= MEM_in(106 downto 105);
PCSrc <= (M(2) and MEM_in(69));
mux_no_jump_in_B <= MEM_in(101 downto 70);
MEM_out <= WB & RAM_out & MEM_in(68 downto 37) & MEM_in(4 downto 0); -- 2 + 32 + 32 + 5 = 71
end architecture;