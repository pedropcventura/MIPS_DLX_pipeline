library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TipoRIJ is
  generic(
    instruction_size : natural := 32;
	 simulacao : boolean := TRUE
  );
  port (
  CLOCK_50 : in std_logic;
  KEY : in std_logic_vector(3 downto 0);
  simu_ula_out : out std_logic_vector(31 downto 0);
  simu_decoder_out : out std_logic_vector(8 downto 0);
  simu_pc_out : out std_logic_vector(31 downto 0);
  simu_instru_out : out std_logic_vector(31 downto 0);
  
  simu_ula_A : out std_logic_vector(31 downto 0);
  simu_ula_B : out std_logic_vector(31 downto 0);
  simu_ula_z : out std_logic
  );

end entity;

architecture arquitetura of TipoRIJ is
-- CLOCK
  --alias CLK : std_logic is CLOCK_50;
  signal CLK : std_logic;
  
-- instruction
  signal opcode : std_logic_vector (5 downto 0);
  signal Rs : std_logic_vector (4 downto 0);
  signal Rt : std_logic_vector (4 downto 0);
  signal Rd : std_logic_vector (4 downto 0);
  signal shamt : std_logic_vector (4 downto 0);
  signal funct : std_logic_vector (5 downto 0);
  signal imediate : std_logic_vector (15 downto 0);
  

-- PC
  signal PC_out : std_logic_vector (instruction_size-1 downto 0);
  signal incrementa_PC : std_logic_vector (instruction_size-1 downto 0);
  
-- ROM 
  signal ROM_out : std_logic_vector (instruction_size-1 downto 0);

-- banco de registraddores
  signal bancoReg_reg1_out : std_logic_vector (instruction_size-1 downto 0);
  signal bancoReg_reg2_out : std_logic_vector (instruction_size-1 downto 0);
  signal reg_3_address : std_logic_vector (4 downto 0);
  signal mux_ULA_mem_out : std_logic_vector (instruction_size-1 downto 0);

-- ULA
  signal MUX_out_ULA_in_B : std_logic_vector (instruction_size-1 downto 0);
  signal ULA_out : std_logic_vector (instruction_size-1 downto 0);
  signal ULA_Z : std_logic;
  
  signal UCULA_operacao : std_logic_vector (3 downto 0);
  
-- Unidade de controle do fluxo de dados
  signal UCFD_mux_RdRt : std_logic;
  signal UCFD_habEscritaReg : std_logic;
  signal UCFD_mux_Rt_imediato : std_logic;
  signal UCFD_mux_ULA_mem : std_logic;
  signal UCFD_habLeituraMEM : std_logic;
  signal UCFD_habEscritaMEM : std_logic;
  signal UCFD_BEQ : std_logic;
  signal UCFD_proxPC_beqJump : std_logic;
  signal UCFD_tipoR : std_logic;
  signal UCFD_out : std_logic_vector (8 downto 0);
  
-- signal extender
  signal extended_imediate : std_logic_vector (instruction_size-1 downto 0);
  
-- RAM MIPS
  signal RAM_out : std_logic_vector (instruction_size-1 downto 0);

-- Jump related signals
  signal mux_pc_shiftedImediate_out : std_logic_vector (instruction_size-1 downto 0);
  signal add_extended_signal_and_PC_out : std_logic_vector (instruction_size-1 downto 0);
  signal MUX_proxPC_out : std_logic_vector (instruction_size-1 downto 0);
  
  
begin
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
CLK <= CLOCK_50;
end generate;

---- Program Counter
--  PC : entity work.registradorGenerico generic map (larguraDados => instruction_size)
--    port map(
--      DIN => MUX_proxPC_out,
--      DOUT => PC_out,
--      ENABLE => '1',
--      CLK => CLK,
--      RST => '0'
--    );
--  proxPC :  entity work.somaConstante generic map (larguraDados => instruction_size, constante => 4)
--        port map( 
--		    entrada => PC_out, 
--		    saida => incrementa_PC
--		  );
		  
---- Jump related components
--  add_extended_signal_and_PC : entity work.somadorGenerico generic map (larguraDados => 32)
--    port map (
--	   entradaA => incrementa_PC, 
--		entradaB => extended_imediate(29 downto 0) & "00", -- extended imediate shifted 
--		saida => add_extended_signal_and_PC_out
--	);	
----  MUX Z and BEQ
--  MUX_Z_and_BEQ : entity work.muxGenerico2x1 generic map (larguraDados => 32)
--    port map (
--	   entrada_MUX_A => incrementa_PC, 
--		entrada_MUX_B => add_extended_signal_and_PC_out, 
--		seletor_MUX => ULA_Z and UCFD_BEQ, 
--	   saida_MUX => mux_pc_shiftedImediate_out
--	);
----  MUX proximo PC
--  MUX_proxPC : entity work.muxGenerico2x1 generic map (larguraDados => 32)
--    port map (
--	   entrada_MUX_A => mux_pc_shiftedImediate_out, 
--		entrada_MUX_B => incrementa_PC(31 downto 28) & ROM_out(25 downto 0) & '0' & '0', 
--		seletor_MUX => UCFD_proxPC_beqJump, 
--	   saida_MUX => MUX_proxPC_out
--	);
	
---- ROM
--  ROM_MIPS : entity work.ROMMIPS generic map (dataWidth => instruction_size, addrWidth => instruction_size, memoryAddrWidth => 6)
--          port map (Endereco => PC_out, Dado => ROM_out);

---- MUX reg address
--  MUX_register_bank_in : entity work.muxGenerico2x1 generic map (larguraDados => 5)
--    port map (
--	   entrada_MUX_A => Rt, 
--		entrada_MUX_B => Rd, 
--		seletor_MUX => UCFD_mux_RdRt, 
--	   saida_MUX => reg_3_address
--	);
				  
			         
---- banco de registradores
--  banco_regs : entity work.bancoRegistradores generic map (larguraDados => instruction_size, larguraEndBancoRegs => 5)
--    port map (
--        clk => CLK,        
--        enderecoA => Rs,          
--        enderecoB => Rt,          
--        enderecoC => reg_3_address,         
--        dadoEscritaC => mux_ULA_mem_out,      
--        escreveC => UCFD_habEscritaReg,          
--        saidaA => bancoReg_reg1_out,            
--        saidaB => bancoReg_reg2_out            
--    );
--
---- signal externder for imediate use
--imediate_signal_extender : entity work.estendeSinalGenerico generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
--  port map (
--    estendeSinal_IN => imediate, 
--	 estendeSinal_OUT => extended_imediate
--  );

---- MUX out reg bank in ULA
--MUX_register_bank_out : entity work.muxGenerico2x1 generic map (larguraDados => 32)
--    port map (
--	   entrada_MUX_A => bancoReg_reg2_out, 
--		entrada_MUX_B => extended_imediate, 
--		seletor_MUX => UCFD_mux_Rt_imediato, 
--	   saida_MUX => MUX_out_ULA_in_B
--	);
--	 
---- ULA MIPS
--  ula_bit_a_bit_MIPS : entity work.ULAMIPS generic map (larguraDados => instruction_size)
--    port map (
--	   entradaA => bancoReg_reg1_out,
--		entradaB => MUX_out_ULA_in_B,
--		inverteA => UCULA_operacao(3),
--		inverteB => UCULA_operacao(2),
--      seletor => UCULA_operacao(1 downto 0),
--      saida => ULA_out,
--		Z => ULA_Z
--  );
  
-- RAM MIPS
  ram_mips : entity work.RAMMIPS generic map (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
    port map (
	   clk => CLK,
      Endereco => ULA_out,
      Dado_in => bancoReg_reg2_out,
      Dado_out => RAM_out,
      we => UCFD_habEscritaMEM, 
		re => UCFD_habLeituraMEM, 
		habilita => '1'
	 );
  
-- MUX ULA MEM
  MUX_ULA_MEM : entity work.muxGenerico2x1 generic map (larguraDados => 32)
    port map (
	   entrada_MUX_A => ULA_out, 
		entrada_MUX_B => RAM_out, 
		seletor_MUX => UCFD_mux_ULA_mem, 
	   saida_MUX => mux_ULA_mem_out
	);
	
---- Unidade de Controle FD
--  unidade_de_controle_FD : entity work.UC_FD
--    port map(
--	   entrada => opcode,
--		saida => UCFD_out
--	);

---- Unidade de Controle ULA
--  unidade_de_controle_ULA : entity work.UC_ULA
--    port map(
--	   funct => funct,
--		opcode => opcode,
--		tipoR => UCFD_tipoR,
--		ULActrl => UCULA_operacao
--	);

-- conexoes da instrucao
opcode <= ROM_out(31 downto 26);
Rs <= ROM_out(25 downto 21);
Rt <= ROM_out(20 downto 16);
Rd <= ROM_out(15 downto 11);
shamt <= ROM_out(10 downto 6);
funct <= ROM_out(5 downto 0);

imediate <= ROM_out (15 downto 0);

-- conexoes da unidade de controle do fluxo de dados
UCFD_proxPC_beqJump <= UCFD_out(8);
UCFD_mux_RdRt <= UCFD_out(7);
UCFD_habEscritaReg <= UCFD_out(6);
UCFD_mux_Rt_imediato <= UCFD_out(5);
UCFD_tipoR <= UCFD_out(4);
UCFD_mux_ULA_mem <= UCFD_out(3);
UCFD_BEQ <= UCFD_out(2);
UCFD_habLeituraMEM <= UCFD_out(1);
UCFD_habEscritaMEM <= UCFD_out(0);

-- saidas para visualizar na simulacao
simu_ula_out <= ULA_out;
simu_decoder_out <= UCFD_out;
simu_pc_out <= PC_out;
simu_instru_out <= ROM_out;

simu_ula_A <= bancoReg_reg1_out;
simu_ula_B <= MUX_out_ULA_in_B;
simu_ula_z <= ULA_Z;
end architecture;
