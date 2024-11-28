-- IFF

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IFF is
  generic (
    instruction_size : natural := 32
  );
  port (
    clk : in std_logic;
	 mux_no_jump_in_B : in std_logic_vector(instruction_size-1 downto 0);
	 PCSrc : in std_logic;
	 seletor_MUX_proxPC : in std_logic;
	 
	 debug_PC : out std_logic_vector(instruction_size-1 downto 0);
	 IFF_out : out std_logic_vector(63 downto 0)
  );
end entity;

architecture Behavioral of IFF is
  signal MUX_no_jump_out : std_logic_vector(instruction_size-1 downto 0);
  signal MUX_proxPC_out : std_logic_vector(instruction_size-1 downto 0);
  
  signal PC_out : std_logic_vector(instruction_size-1 downto 0);
  signal incrementa_PC : std_logic_vector(instruction_size-1 downto 0);
  
  signal instruction : std_logic_vector(instruction_size-1 downto 0);
  
begin

-- (MUX Z and BEQ)
  MUX_no_jump : entity work.muxGenerico2x1 generic map (larguraDados => 32)
    port map (
	   entrada_MUX_A => incrementa_PC, 
		entrada_MUX_B => mux_no_jump_in_B, 
		seletor_MUX => PCSrc, 
	   saida_MUX => MUX_no_jump_out
	);
-- MUX proximo PC
  MUX_proxPC : entity work.muxGenerico2x1 generic map (larguraDados => 32)
    port map (
	   entrada_MUX_A => MUX_no_jump_out, 
		entrada_MUX_B => incrementa_PC(31 downto 28) & instruction(25 downto 0) & '0' & '0', 
		seletor_MUX => seletor_MUX_proxPC, 
	   saida_MUX => MUX_proxPC_out
	);

-- Program Counter	
  PC : entity work.registradorGenerico generic map (larguraDados => instruction_size)
    port map(
      DIN => MUX_proxPC_out,
      DOUT => PC_out,
      ENABLE => '1',
      CLK => clk,
      RST => '0'
    );
-- PC + 4
  proxPC :  entity work.somaConstante generic map (larguraDados => instruction_size, constante => 4)
        port map( 
		    entrada => PC_out, 
		    saida => incrementa_PC
		  );

-- ROM
  ROM_MIPS : entity work.ROMMIPS generic map (dataWidth => instruction_size, addrWidth => instruction_size, memoryAddrWidth => 6)
          port map (Endereco => PC_out, Dado => instruction);
 
IFF_out <= incrementa_PC & instruction; 

debug_PC <= PC_out;
end architecture;