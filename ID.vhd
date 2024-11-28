-- ID
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ID is
  generic (
    instruction_size : natural := 32
  );
  port (
    clk : in std_logic;
	 ID_in : in std_logic_vector (63 downto 0);
	 RegWrite : in std_logic;
	 write_register : in std_logic_vector (4 downto 0);
	 write_data : in std_logic_vector (instruction_size-1 downto 0);
	 
	 control_jump : out std_logic;
	 ID_out : out std_logic_vector(151 downto 0)
  );
end entity;

architecture Behavioral of ID is
  
  signal opcode : std_logic_vector(5 downto 0);
  signal UCFD_out : std_logic_vector(8 downto 0);

  signal rt : std_logic_vector(4 downto 0);
  signal rd : std_logic_vector(4 downto 0);
  
  signal imediate : std_logic_vector(15 downto 0);
  signal extended_imediate : std_logic_vector(instruction_size-1 downto 0);
  
  signal read_data_1 : std_logic_vector(instruction_size-1 downto 0);
  signal read_data_2 : std_logic_vector(instruction_size-1 downto 0);
  
  signal WB : std_logic_vector(1 downto 0);
  signal M : std_logic_vector(2 downto 0);
  signal EX : std_logic_vector(8 downto 0);
begin

-- Unidade de Controle FD
  unidade_de_controle_FD : entity work.UC_FD
    port map(
	   entrada => opcode,
		saida => UCFD_out
	);

-- banco de registradores
  banco_regs : entity work.bancoRegistradores generic map (larguraDados => instruction_size, larguraEndBancoRegs => 5)
    port map (
        clk => clk,        
        enderecoA => ID_in(25 downto 21),          
        enderecoB => rt,          
        enderecoC => write_register,         
        dadoEscritaC => write_data,      
        escreveC => RegWrite,          
        saidaA => read_data_1,            
        saidaB => read_data_2            
    );

-- signal externder for imediate use
  imediate_signal_extender : entity work.estendeSinalGenerico generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
    port map (
      estendeSinal_IN => imediate, 
	   estendeSinal_OUT => extended_imediate
    );

opcode <= ID_in(31 downto 26);
rt <= ID_in(20 downto 16);
rd <= ID_in(15 downto 11);
imediate <= ID_in(15 downto 0);

WB <= UCFD_out(6) & UCFD_out(3);
M <= UCFD_out(2) & UCFD_out(1) & UCFD_out(0);
EX <= UCFD_out(7) & opcode & UCFD_out(4) & UCFD_out(5);

control_jump <= UCFD_out(8);
ID_out <= WB & M & EX & ID_in(63 downto 32) & read_data_1 & read_data_2 & extended_imediate & rt & rd; -- 2 + 3 + 9 + 32 + 32 + 32 + 32 + 5 + 5 = 152
end architecture;