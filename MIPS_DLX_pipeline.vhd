-- MIPS DLX pipeline
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_DLX_pipeline is
  generic (
    instruction_size : natural := 32;
    simulacao : boolean := TRUE
  );
  port (
    debug_PC : out std_logic_vector(instruction_size-1 downto 0);
	 debug_incrementaPC_EX : out std_logic_vector(instruction_size-1 downto 0);
	 debug_ULA_out : out std_logic_vector(instruction_size-1 downto 0);
  
    CLOCK_50 : in std_logic;
    KEY : in std_logic_vector(3 downto 0)
  );
end entity;

architecture Behavioral of MIPS_DLX_pipeline is
signal CLK : std_logic;

  -- Registradores que dividem o pipeline 
  signal IF_ID_out : std_logic_vector(63 downto 0);
  signal ID_EX_out : std_logic_vector(151 downto 0);
  signal EX_MEM_out : std_logic_vector(106 downto 0);
  signal MEM_WB_out : std_logic_vector(70 downto 0);

-- IF
  signal mux_no_jump_in_B : std_logic_vector (instruction_size-1 downto 0);
  signal PCSrc : std_logic;
  signal control_jump : std_logic;
  signal IFF_out : std_logic_vector(63 downto 0);
-- ID
  signal RegWrite : std_logic;
  signal rd : std_logic_vector(4 downto 0);
  signal write_data_mux_out : std_logic_vector(instruction_size-1 downto 0);
  signal ID_out : std_logic_vector(151 downto 0);
-- EX
  signal EX_out : std_logic_vector(106 downto 0);
-- MEM
  signal MEM_out : std_logic_vector(70 downto 0);

begin

gravar:  if simulacao generate
CLK <= KEY(0);
else generate
CLK <= CLOCK_50;
end generate;
 
-- Registradores do Pipeline
  IF_ID : entity work.registradorGenerico generic map (larguraDados => 64)
	 port map(
		DIN => IFF_out,
		DOUT => IF_ID_out,
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	 );
  ID_EX : entity work.registradorGenerico generic map (larguraDados => 152)
	 port map(
		DIN => ID_out,
		DOUT => ID_EX_out,
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	 );
  EX_MEM : entity work.registradorGenerico generic map (larguraDados => 107)
	 port map(
		DIN => EX_out,
		DOUT => EX_MEM_out,
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	 );
  MEM_WB : entity work.registradorGenerico generic map (larguraDados => 71)
	 port map(
		DIN => MEM_out,
		DOUT => MEM_WB_out,
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	 );


-- Instanciando as etapas

inst_IFF : entity work.IFF
  port map (
      debug_PC => debug_PC,
      clk => CLK,
      mux_no_jump_in_B => mux_no_jump_in_B,
      PCSrc => PCSrc,
      seletor_MUX_proxPC => control_jump,
      IFF_out => IFF_out
  );

inst_ID : entity work.ID
  port map (
      clk => CLK,
      ID_in => IF_ID_out,
      RegWrite => RegWrite,
      write_register => rd,
      write_data => write_data_mux_out,
      control_jump => control_jump,
      ID_out => ID_out
  );

inst_EX : entity work.EX
  port map (
    debug_incrementaPC_EX => debug_incrementaPC_EX,
  
    EX_in => ID_EX_out,
    EX_out => EX_out
  );

inst_MEM : entity work.MEM
  port map (
      clk => CLK,
      MEM_in => EX_MEM_out,
      PCSrc => PCSrc,
      mux_no_jump_in_B => mux_no_jump_in_B,
      MEM_out => MEM_out
  );

inst_WB : entity work.WB
  port map (
      WB_in => MEM_WB_out,
      RegWrite => RegWrite,
      mux_ULA_mem_out => write_data_mux_out,
      rd => rd
  );

	 
debug_ULA_out <= EX_out(68 downto 37);	 
end architecture;