-- EX

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EX is
  generic (
    instruction_size : natural := 32
  );
  port (
    debug_incrementaPC_EX : out std_logic_vector(instruction_size-1 downto 0);
  
    EX_in : in std_logic_vector(151 downto 0);
	 EX_out : out std_logic_vector(106 downto 0)
  );
end entity;

architecture Behavioral of EX is

  signal EX : std_logic_vector(8 downto 0);
    signal opcode : std_logic_vector (5 downto 0);
	 
  signal funct : std_logic_vector (5 downto 0);
	 
  signal add_extended_signal_and_PC_out : std_logic_vector (instruction_size-1 downto 0);
  
  signal MUX_out_ULA_in_B : std_logic_vector (instruction_size-1 downto 0);
  signal ULA_out : std_logic_vector (instruction_size-1 downto 0);
  signal ULA_Z : std_logic;
  signal UCULA_operacao : std_logic_vector (3 downto 0);
  
  signal MUX_reg_address_out : std_logic_vector (4 downto 0);
  
  signal WB : std_logic_vector(1 downto 0);
  signal M : std_logic_vector(2 downto 0);

begin

-- Incrementa PC + imediato shiftado por 2
  add_extended_signal_and_PC : entity work.somadorGenerico generic map (larguraDados => 32)
    port map (
	   entradaA => EX_in(137 downto 106), 
		entradaB => EX_in(39 downto 10) & "00", -- extended imediate shifted 
		saida => add_extended_signal_and_PC_out
	 );
	 
-- MUX out reg bank in ULA
MUX_register_bank_out : entity work.muxGenerico2x1 generic map (larguraDados => 32)
    port map (
	   entrada_MUX_A => EX_in(73 downto 42), 
		entrada_MUX_B => EX_in(41 downto 10), 
		seletor_MUX => EX(0), 
	   saida_MUX => MUX_out_ULA_in_B
	);
	 
-- ULA MIPS
  ula_bit_a_bit_MIPS : entity work.ULAMIPS generic map (larguraDados => instruction_size)
    port map (
	   entradaA => EX_in(105 downto 74),
		entradaB => MUX_out_ULA_in_B,
		inverteA => UCULA_operacao(3),
		inverteB => UCULA_operacao(2),
      seletor => UCULA_operacao(1 downto 0),
      saida => ULA_out,
		Z => ULA_Z
  );
	 
  
-- Unidade de Controle ULA
  unidade_de_controle_ULA : entity work.UC_ULA
    port map(
	   funct => funct,
		opcode => opcode,
		tipoR => EX(1),
		ULActrl => UCULA_operacao
	);
  
-- MUX reg address
  MUX_register_bank_in : entity work.muxGenerico2x1 generic map (larguraDados => 5)
    port map (
	   entrada_MUX_A => EX_in(9 downto 5), 
		entrada_MUX_B => EX_in(4 downto 0), 
		seletor_MUX => EX(8), -- UCFD_mux_RdRt, 
	   saida_MUX => MUX_reg_address_out
	);

WB <= EX_in(151 downto 150);
M <= EX_in(149 downto 147);

EX <= EX_in(146 downto 138);
  opcode <= EX_in(145 downto 140);

funct <= EX_in(15 downto 10);

EX_out <= WB & M & add_extended_signal_and_PC_out & ULA_Z & ULA_out & EX_in(73 downto 42) & MUX_reg_address_out; -- 2 + 3 + 32 + 1 + 32 + 32 + 5 = 107

debug_incrementaPC_EX <= EX_in(137 downto 106);
end architecture;