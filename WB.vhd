-- WB

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WB is
  generic (
    instruction_size : natural := 32
  );
  port (
    WB_in : in std_logic_vector(70 downto 0);
	 
	 RegWrite : out std_logic;
	 mux_ULA_mem_out : out std_logic_vector (instruction_size-1 downto 0);
	 rd : out std_logic_vector (4 downto 0)
  );
end entity;

architecture Behavioral of WB is

  signal WB : std_logic_vector (1 downto 0);
  
begin
-- MUX ULA MEM
  MUX_ULA_MEM : entity work.muxGenerico2x1 generic map (larguraDados => 32)
    port map (
	   entrada_MUX_A => WB_in(36 downto 5), 
		entrada_MUX_B => WB_in(68 downto 37), 
		seletor_MUX => WB(0),--UCFD_mux_ULA_mem, 
	   saida_MUX => mux_ULA_mem_out
	);

WB <= WB_in(70 downto 69);

-- saidas
  RegWrite <= WB(1);
  rd <= WB_in(4 downto 0);
end architecture;