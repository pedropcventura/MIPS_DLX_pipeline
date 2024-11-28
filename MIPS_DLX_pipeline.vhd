---- MIPS DLX pipeline
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity MIPS_DLX_pipeline is
--  generic (
--    instruction_size : natural := 32;
--    simulacao : boolean := TRUE
--  );
--  port (
--    CLOCK_50 : in std_logic;
--    KEY : in std_logic_vector(3 downto 0)
--  );
--end entity;
--
--architecture Behavioral of MIPS_DLX_pipeline is
--signal CLK : std_logic;
--
--  -- Registradores que dividem o pipeline 
--  signal IF_ID_out : std_logic_vector(xxxx downto 0);
--  signal ID_EX_out : std_logic_vector(xxxx downto 0);
--  signal EX_MEM_out : std_logic_vector(xxxx downto 0);
--  signal MEM_WB_out : std_logic_vector(xxxx downto 0);
--
--begin
--
--gravar:  if simulacao generate
--CLK <= KEY(0);
--else generate
--CLK <= CLOCK_50;
--end generate;
-- 
---- Registradores do Pipeline
--  IF_ID : entity work.registradorGenerico generic map (larguraDados => 64)
--	 port map(
--		DIN => ,
--		DOUT => IF_ID_out,
--		ENABLE => '1',
--		CLK => CLK,
--		RST => '0'
--	 );
--  ID_EX : entity work.registradorGenerico generic map (larguraDados => 152)
--	 port map(
--		DIN => ,
--		DOUT => ID_EX_out,
--		ENABLE => '1',
--		CLK => CLK,
--		RST => '0'
--	 );
--  EX_MEM : entity work.registradorGenerico generic map (larguraDados => 107)
--	 port map(
--		DIN => ,
--		DOUT => EX_MEM_out,
--		ENABLE => '1',
--		CLK => CLK,
--		RST => '0'
--	 );
--  MEM_WB : entity work.registradorGenerico generic map (larguraDados => 71)
--	 port map(
--		DIN => ,
--		DOUT => MEM_WB_out,
--		ENABLE => '1',
--		CLK => CLK,
--		RST => '0'
--	 );
--	 
--	 
--end architecture;