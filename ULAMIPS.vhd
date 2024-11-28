library ieee;
use ieee.std_logic_1164.all;

entity ULAMIPS is 
  generic ( larguraDados : natural := 32 );
  port (
      entradaA :  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		entradaB :  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		inverteA :  in STD_LOGIC;
		inverteB :  in STD_LOGIC;
      seletor :  in STD_LOGIC_VECTOR(1 downto 0);
      saida :    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		Z : out STD_LOGIC
    );
end entity;

architecture comportamento of ULAMIPS is
  signal saida_mux_A_31 : std_logic;
  signal saida_mux_B_31 : std_logic;
  signal soma_31 : std_logic;
  signal carry_out_bit31 : std_logic;
  signal resultado_31 : std_logic;
  
  signal saida_mux_A_30 : std_logic;
  signal saida_mux_B_30 : std_logic;
  signal soma_30 : std_logic;
  signal carry_out_bit30 : std_logic;
  signal resultado_30 : std_logic;
  
  signal saida_mux_A_29 : std_logic;
  signal saida_mux_B_29 : std_logic;
  signal soma_29 : std_logic;
  signal carry_out_bit29 : std_logic;
  signal resultado_29 : std_logic;
  
  signal saida_mux_A_28 : std_logic;
  signal saida_mux_B_28 : std_logic;
  signal soma_28 : std_logic;
  signal carry_out_bit28 : std_logic;
  signal resultado_28 : std_logic;
  
  signal saida_mux_A_27 : std_logic;
  signal saida_mux_B_27 : std_logic;
  signal soma_27 : std_logic;
  signal carry_out_bit27 : std_logic;
  signal resultado_27 : std_logic;
  
  signal saida_mux_A_26 : std_logic;
  signal saida_mux_B_26 : std_logic;
  signal soma_26 : std_logic;
  signal carry_out_bit26 : std_logic;
  signal resultado_26 : std_logic;
  
  signal saida_mux_A_25 : std_logic;
  signal saida_mux_B_25 : std_logic;
  signal soma_25 : std_logic;
  signal carry_out_bit25 : std_logic;
  signal resultado_25 : std_logic;
  
  signal saida_mux_A_24 : std_logic;
  signal saida_mux_B_24 : std_logic;
  signal soma_24 : std_logic;
  signal carry_out_bit24 : std_logic;
  signal resultado_24 : std_logic;
  
  signal saida_mux_A_23 : std_logic;
  signal saida_mux_B_23 : std_logic;
  signal soma_23 : std_logic;
  signal carry_out_bit23 : std_logic;
  signal resultado_23 : std_logic;
  
  signal saida_mux_A_22 : std_logic;
  signal saida_mux_B_22 : std_logic;
  signal soma_22 : std_logic;
  signal carry_out_bit22 : std_logic;
  signal resultado_22 : std_logic;
  
  signal saida_mux_A_21 : std_logic;
  signal saida_mux_B_21 : std_logic;
  signal soma_21 : std_logic;
  signal carry_out_bit21 : std_logic;
  signal resultado_21 : std_logic;
  
  signal saida_mux_A_20 : std_logic;
  signal saida_mux_B_20 : std_logic;
  signal soma_20 : std_logic;
  signal carry_out_bit20 : std_logic;
  signal resultado_20 : std_logic;
  
  signal saida_mux_A_19 : std_logic;
  signal saida_mux_B_19 : std_logic;
  signal soma_19 : std_logic;
  signal carry_out_bit19 : std_logic;
  signal resultado_19 : std_logic;
  
  signal saida_mux_A_18 : std_logic;
  signal saida_mux_B_18 : std_logic;
  signal soma_18 : std_logic;
  signal carry_out_bit18 : std_logic;
  signal resultado_18 : std_logic;
  
  signal saida_mux_A_17 : std_logic;
  signal saida_mux_B_17 : std_logic;
  signal soma_17 : std_logic;
  signal carry_out_bit17 : std_logic;
  signal resultado_17 : std_logic;
  
  signal saida_mux_A_16 : std_logic;
  signal saida_mux_B_16 : std_logic;
  signal soma_16 : std_logic;
  signal carry_out_bit16 : std_logic;
  signal resultado_16 : std_logic;
  
  signal saida_mux_A_15 : std_logic;
  signal saida_mux_B_15 : std_logic;
  signal soma_15 : std_logic;
  signal carry_out_bit15 : std_logic;
  signal resultado_15 : std_logic;
  
  signal saida_mux_A_14 : std_logic;
  signal saida_mux_B_14 : std_logic;
  signal soma_14 : std_logic;
  signal carry_out_bit14 : std_logic;
  signal resultado_14 : std_logic;
  
  signal saida_mux_A_13 : std_logic;
  signal saida_mux_B_13 : std_logic;
  signal soma_13 : std_logic;
  signal carry_out_bit13 : std_logic;
  signal resultado_13 : std_logic;
  
  signal saida_mux_A_12 : std_logic;
  signal saida_mux_B_12 : std_logic;
  signal soma_12 : std_logic;
  signal carry_out_bit12 : std_logic;
  signal resultado_12 : std_logic;
  
  signal saida_mux_A_11 : std_logic;
  signal saida_mux_B_11 : std_logic;
  signal soma_11 : std_logic;
  signal carry_out_bit11 : std_logic;
  signal resultado_11 : std_logic;
  
  signal saida_mux_A_10 : std_logic;
  signal saida_mux_B_10 : std_logic;
  signal soma_10 : std_logic;
  signal carry_out_bit10 : std_logic;
  signal resultado_10 : std_logic;
  
  signal saida_mux_A_9 : std_logic;
  signal saida_mux_B_9 : std_logic;
  signal soma_9 : std_logic;
  signal carry_out_bit9 : std_logic;
  signal resultado_9 : std_logic;
  
  signal saida_mux_A_8 : std_logic;
  signal saida_mux_B_8 : std_logic;
  signal soma_8 : std_logic;
  signal carry_out_bit8 : std_logic;
  signal resultado_8 : std_logic;
  
  signal saida_mux_A_7 : std_logic;
  signal saida_mux_B_7 : std_logic;
  signal soma_7 : std_logic;
  signal carry_out_bit7 : std_logic;
  signal resultado_7 : std_logic;
  
  signal saida_mux_A_6 : std_logic;
  signal saida_mux_B_6 : std_logic;
  signal soma_6 : std_logic;
  signal carry_out_bit6 : std_logic;
  signal resultado_6 : std_logic;
  
  signal saida_mux_A_5 : std_logic;
  signal saida_mux_B_5 : std_logic;
  signal soma_5 : std_logic;
  signal carry_out_bit5 : std_logic;
  signal resultado_5 : std_logic;
  
  signal saida_mux_A_4 : std_logic;
  signal saida_mux_B_4 : std_logic;
  signal soma_4 : std_logic;
  signal carry_out_bit4 : std_logic;
  signal resultado_4 : std_logic;
  
  signal saida_mux_A_3 : std_logic;
  signal saida_mux_B_3 : std_logic;
  signal soma_3 : std_logic;
  signal carry_out_bit3 : std_logic;
  signal resultado_3 : std_logic;
  
  signal saida_mux_A_2 : std_logic;
  signal saida_mux_B_2 : std_logic;
  signal soma_2 : std_logic;
  signal carry_out_bit2 : std_logic;
  signal resultado_2 : std_logic;
  
  signal saida_mux_A_1 : std_logic;
  signal saida_mux_B_1 : std_logic;
  signal soma_1 : std_logic;
  signal carry_out_bit1 : std_logic;
  signal resultado_1 : std_logic;
  
  signal saida_mux_A_0 : std_logic;
  signal saida_mux_B_0 : std_logic;
  signal soma_0 : std_logic;
  signal carry_out_bit0 : std_logic;
  signal resultado_0 : std_logic;
    
  begin
  ------------------------------ Bit a bit inteiro -----------------------------------
 -- BIT 31
    MUX_A_31 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(31),
      entrada_MUX_B => not(entradaA(31)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_31);
	MUX_B_31 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(31),
      entrada_MUX_B => not(entradaB(31)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_31);
	SOMADOR_31 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_31,
		 B => saida_mux_B_31,
	    C_in => carry_out_bit30,
		 C_out => carry_out_bit31,
		 soma => soma_31);
	MUX_reseultado31 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_31 and saida_mux_A_31,
      entrada_MUX_B => saida_mux_B_31 or saida_mux_A_31,
      entrada_MUX_C => soma_31,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_31);

-- BIT 30
    MUX_A_30 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(30),
      entrada_MUX_B => not(entradaA(30)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_30);
	MUX_B_30 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(30),
      entrada_MUX_B => not(entradaB(30)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_30);
	SOMADOR_30 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_30,
		 B => saida_mux_B_30,
	    C_in => carry_out_bit29,
		 C_out => carry_out_bit30,
		 soma => soma_30);
	MUX_reseultado30 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_30 and saida_mux_A_30,
      entrada_MUX_B => saida_mux_B_30 or saida_mux_A_30,
      entrada_MUX_C => soma_30,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_30);

-- BIT 29
    MUX_A_29 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(29),
      entrada_MUX_B => not(entradaA(29)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_29);
	MUX_B_29 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(29),
      entrada_MUX_B => not(entradaB(29)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_29);
	SOMADOR_29 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_29,
		 B => saida_mux_B_29,
	    C_in => carry_out_bit28,
		 C_out => carry_out_bit29,
		 soma => soma_29);
	MUX_reseultado29 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_29 and saida_mux_A_29,
      entrada_MUX_B => saida_mux_B_29 or saida_mux_A_29,
      entrada_MUX_C => soma_29,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_29);

-- BIT 28
    MUX_A_28 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(28),
      entrada_MUX_B => not(entradaA(28)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_28);
	MUX_B_28 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(28),
      entrada_MUX_B => not(entradaB(28)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_28);
	SOMADOR_28 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_28,
		 B => saida_mux_B_28,
	    C_in => carry_out_bit27,
		 C_out => carry_out_bit28,
		 soma => soma_28);
	MUX_reseultado28 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_28 and saida_mux_A_28,
      entrada_MUX_B => saida_mux_B_28 or saida_mux_A_28,
      entrada_MUX_C => soma_28,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_28);

-- BIT 27
    MUX_A_27 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(27),
      entrada_MUX_B => not(entradaA(27)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_27);
	MUX_B_27 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(27),
      entrada_MUX_B => not(entradaB(27)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_27);
	SOMADOR_27 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_27,
		 B => saida_mux_B_27,
	    C_in => carry_out_bit26,
		 C_out => carry_out_bit27,
		 soma => soma_27);
	MUX_reseultado27 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_27 and saida_mux_A_27,
      entrada_MUX_B => saida_mux_B_27 or saida_mux_A_27,
      entrada_MUX_C => soma_27,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_27);

-- BIT 26
    MUX_A_26 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(26),
      entrada_MUX_B => not(entradaA(26)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_26);
	MUX_B_26 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(26),
      entrada_MUX_B => not(entradaB(26)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_26);
	SOMADOR_26 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_26,
		 B => saida_mux_B_26,
	    C_in => carry_out_bit25,
		 C_out => carry_out_bit26,
		 soma => soma_26);
	MUX_reseultado26 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_26 and saida_mux_A_26,
      entrada_MUX_B => saida_mux_B_26 or saida_mux_A_26,
      entrada_MUX_C => soma_26,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_26);

-- BIT 25
    MUX_A_25 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(25),
      entrada_MUX_B => not(entradaA(25)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_25);
	MUX_B_25 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(25),
      entrada_MUX_B => not(entradaB(25)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_25);
	SOMADOR_25 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_25,
		 B => saida_mux_B_25,
	    C_in => carry_out_bit24,
		 C_out => carry_out_bit25,
		 soma => soma_25);
	MUX_reseultado25 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_25 and saida_mux_A_25,
      entrada_MUX_B => saida_mux_B_25 or saida_mux_A_25,
      entrada_MUX_C => soma_25,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_25);

-- BIT 24
    MUX_A_24 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(24),
      entrada_MUX_B => not(entradaA(24)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_24);
	MUX_B_24 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(24),
      entrada_MUX_B => not(entradaB(24)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_24);
	SOMADOR_24 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_24,
		 B => saida_mux_B_24,
	    C_in => carry_out_bit23,
		 C_out => carry_out_bit24,
		 soma => soma_24);
	MUX_reseultado24 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_24 and saida_mux_A_24,
      entrada_MUX_B => saida_mux_B_24 or saida_mux_A_24,
      entrada_MUX_C => soma_24,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_24);

-- BIT 23
    MUX_A_23 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(23),
      entrada_MUX_B => not(entradaA(23)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_23);
	MUX_B_23 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(23),
      entrada_MUX_B => not(entradaB(23)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_23);
	SOMADOR_23 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_23,
		 B => saida_mux_B_23,
	    C_in => carry_out_bit22,
		 C_out => carry_out_bit23,
		 soma => soma_23);
	MUX_reseultado23 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_23 and saida_mux_A_23,
      entrada_MUX_B => saida_mux_B_23 or saida_mux_A_23,
      entrada_MUX_C => soma_23,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_23);

-- BIT 22
    MUX_A_22 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(22),
      entrada_MUX_B => not(entradaA(22)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_22);
	MUX_B_22 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(22),
      entrada_MUX_B => not(entradaB(22)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_22);
	SOMADOR_22 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_22,
		 B => saida_mux_B_22,
	    C_in => carry_out_bit21,
		 C_out => carry_out_bit22,
		 soma => soma_22);
	MUX_reseultado22 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_22 and saida_mux_A_22,
      entrada_MUX_B => saida_mux_B_22 or saida_mux_A_22,
      entrada_MUX_C => soma_22,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_22);

-- BIT 21
    MUX_A_21 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(21),
      entrada_MUX_B => not(entradaA(21)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_21);
	MUX_B_21 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(21),
      entrada_MUX_B => not(entradaB(21)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_21);
	SOMADOR_21 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_21,
		 B => saida_mux_B_21,
	    C_in => carry_out_bit20,
		 C_out => carry_out_bit21,
		 soma => soma_21);
	MUX_reseultado21 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_21 and saida_mux_A_21,
      entrada_MUX_B => saida_mux_B_21 or saida_mux_A_21,
      entrada_MUX_C => soma_21,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_21);

-- BIT 20
    MUX_A_20 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(20),
      entrada_MUX_B => not(entradaA(20)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_20);
	MUX_B_20 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(20),
      entrada_MUX_B => not(entradaB(20)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_20);
	SOMADOR_20 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_20,
		 B => saida_mux_B_20,
	    C_in => carry_out_bit19,
		 C_out => carry_out_bit20,
		 soma => soma_20);
	MUX_reseultado20 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_20 and saida_mux_A_20,
      entrada_MUX_B => saida_mux_B_20 or saida_mux_A_20,
      entrada_MUX_C => soma_20,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_20);

-- BIT 19
    MUX_A_19 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(19),
      entrada_MUX_B => not(entradaA(19)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_19);
	MUX_B_19 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(19),
      entrada_MUX_B => not(entradaB(19)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_19);
	SOMADOR_19 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_19,
		 B => saida_mux_B_19,
	    C_in => carry_out_bit18,
		 C_out => carry_out_bit19,
		 soma => soma_19);
	MUX_reseultado19 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_19 and saida_mux_A_19,
      entrada_MUX_B => saida_mux_B_19 or saida_mux_A_19,
      entrada_MUX_C => soma_19,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_19);

-- BIT 18
    MUX_A_18 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(18),
      entrada_MUX_B => not(entradaA(18)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_18);
	MUX_B_18 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(18),
      entrada_MUX_B => not(entradaB(18)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_18);
	SOMADOR_18 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_18,
		 B => saida_mux_B_18,
	    C_in => carry_out_bit17,
		 C_out => carry_out_bit18,
		 soma => soma_18);
	MUX_reseultado18 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_18 and saida_mux_A_18,
      entrada_MUX_B => saida_mux_B_18 or saida_mux_A_18,
      entrada_MUX_C => soma_18,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_18);

-- BIT 17
    MUX_A_17 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(17),
      entrada_MUX_B => not(entradaA(17)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_17);
	MUX_B_17 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(17),
      entrada_MUX_B => not(entradaB(17)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_17);
	SOMADOR_17 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_17,
		 B => saida_mux_B_17,
	    C_in => carry_out_bit16,
		 C_out => carry_out_bit17,
		 soma => soma_17);
	MUX_reseultado17 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_17 and saida_mux_A_17,
      entrada_MUX_B => saida_mux_B_17 or saida_mux_A_17,
      entrada_MUX_C => soma_17,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_17);

-- BIT 16
    MUX_A_16 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(16),
      entrada_MUX_B => not(entradaA(16)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_16);
	MUX_B_16 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(16),
      entrada_MUX_B => not(entradaB(16)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_16);
	SOMADOR_16 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_16,
		 B => saida_mux_B_16,
	    C_in => carry_out_bit15,
		 C_out => carry_out_bit16,
		 soma => soma_16);
	MUX_reseultado16 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_16 and saida_mux_A_16,
      entrada_MUX_B => saida_mux_B_16 or saida_mux_A_16,
      entrada_MUX_C => soma_16,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_16);

-- BIT 15
    MUX_A_15 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(15),
      entrada_MUX_B => not(entradaA(15)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_15);
	MUX_B_15 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(15),
      entrada_MUX_B => not(entradaB(15)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_15);
	SOMADOR_15 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_15,
		 B => saida_mux_B_15,
	    C_in => carry_out_bit14,
		 C_out => carry_out_bit15,
		 soma => soma_15);
	MUX_reseultado15 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_15 and saida_mux_A_15,
      entrada_MUX_B => saida_mux_B_15 or saida_mux_A_15,
      entrada_MUX_C => soma_15,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_15);

-- BIT 14
    MUX_A_14 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(14),
      entrada_MUX_B => not(entradaA(14)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_14);
	MUX_B_14 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(14),
      entrada_MUX_B => not(entradaB(14)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_14);
	SOMADOR_14 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_14,
		 B => saida_mux_B_14,
	    C_in => carry_out_bit13,
		 C_out => carry_out_bit14,
		 soma => soma_14);
	MUX_reseultado14 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_14 and saida_mux_A_14,
      entrada_MUX_B => saida_mux_B_14 or saida_mux_A_14,
      entrada_MUX_C => soma_14,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_14);

-- BIT 13
    MUX_A_13 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(13),
      entrada_MUX_B => not(entradaA(13)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_13);
	MUX_B_13 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(13),
      entrada_MUX_B => not(entradaB(13)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_13);
	SOMADOR_13 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_13,
		 B => saida_mux_B_13,
	    C_in => carry_out_bit12,
		 C_out => carry_out_bit13,
		 soma => soma_13);
	MUX_reseultado13 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_13 and saida_mux_A_13,
      entrada_MUX_B => saida_mux_B_13 or saida_mux_A_13,
      entrada_MUX_C => soma_13,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_13);

-- BIT 12
    MUX_A_12 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(12),
      entrada_MUX_B => not(entradaA(12)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_12);
	MUX_B_12 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(12),
      entrada_MUX_B => not(entradaB(12)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_12);
	SOMADOR_12 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_12,
		 B => saida_mux_B_12,
	    C_in => carry_out_bit11,
		 C_out => carry_out_bit12,
		 soma => soma_12);
	MUX_reseultado12 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_12 and saida_mux_A_12,
      entrada_MUX_B => saida_mux_B_12 or saida_mux_A_12,
      entrada_MUX_C => soma_12,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_12);

-- BIT 11
    MUX_A_11 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(11),
      entrada_MUX_B => not(entradaA(11)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_11);
	MUX_B_11 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(11),
      entrada_MUX_B => not(entradaB(11)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_11);
	SOMADOR_11 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_11,
		 B => saida_mux_B_11,
	    C_in => carry_out_bit10,
		 C_out => carry_out_bit11,
		 soma => soma_11);
	MUX_reseultado11 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_11 and saida_mux_A_11,
      entrada_MUX_B => saida_mux_B_11 or saida_mux_A_11,
      entrada_MUX_C => soma_11,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_11);

-- BIT 10
    MUX_A_10 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(10),
      entrada_MUX_B => not(entradaA(10)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_10);
	MUX_B_10 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(10),
      entrada_MUX_B => not(entradaB(10)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_10);
	SOMADOR_10 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_10,
		 B => saida_mux_B_10,
	    C_in => carry_out_bit9,
		 C_out => carry_out_bit10,
		 soma => soma_10);
	MUX_reseultado10 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_10 and saida_mux_A_10,
      entrada_MUX_B => saida_mux_B_10 or saida_mux_A_10,
      entrada_MUX_C => soma_10,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_10);

-- BIT 9
    MUX_A_9 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(9),
      entrada_MUX_B => not(entradaA(9)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_9);
	MUX_B_9 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(9),
      entrada_MUX_B => not(entradaB(9)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_9);
	SOMADOR_9 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_9,
		 B => saida_mux_B_9,
	    C_in => carry_out_bit8,
		 C_out => carry_out_bit9,
		 soma => soma_9);
	MUX_reseultado9 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_9 and saida_mux_A_9,
      entrada_MUX_B => saida_mux_B_9 or saida_mux_A_9,
      entrada_MUX_C => soma_9,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_9);

-- BIT 8
    MUX_A_8 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(8),
      entrada_MUX_B => not(entradaA(8)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_8);
	MUX_B_8 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(8),
      entrada_MUX_B => not(entradaB(8)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_8);
	SOMADOR_8 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_8,
		 B => saida_mux_B_8,
	    C_in => carry_out_bit7,
		 C_out => carry_out_bit8,
		 soma => soma_8);
	MUX_reseultado8 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_8 and saida_mux_A_8,
      entrada_MUX_B => saida_mux_B_8 or saida_mux_A_8,
      entrada_MUX_C => soma_8,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_8);

-- BIT 7
    MUX_A_7 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(7),
      entrada_MUX_B => not(entradaA(7)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_7);
	MUX_B_7 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(7),
      entrada_MUX_B => not(entradaB(7)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_7);
	SOMADOR_7 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_7,
		 B => saida_mux_B_7,
	    C_in => carry_out_bit6,
		 C_out => carry_out_bit7,
		 soma => soma_7);
	MUX_reseultado7 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_7 and saida_mux_A_7,
      entrada_MUX_B => saida_mux_B_7 or saida_mux_A_7,
      entrada_MUX_C => soma_7,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_7);

-- BIT 6
    MUX_A_6 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(6),
      entrada_MUX_B => not(entradaA(6)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_6);
	MUX_B_6 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(6),
      entrada_MUX_B => not(entradaB(6)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_6);
	SOMADOR_6 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_6,
		 B => saida_mux_B_6,
	    C_in => carry_out_bit5,
		 C_out => carry_out_bit6,
		 soma => soma_6);
	MUX_reseultado6 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_6 and saida_mux_A_6,
      entrada_MUX_B => saida_mux_B_6 or saida_mux_A_6,
      entrada_MUX_C => soma_6,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_6);

-- BIT 5
    MUX_A_5 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(5),
      entrada_MUX_B => not(entradaA(5)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_5);
	MUX_B_5 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(5),
      entrada_MUX_B => not(entradaB(5)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_5);
	SOMADOR_5 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_5,
		 B => saida_mux_B_5,
	    C_in => carry_out_bit4,
		 C_out => carry_out_bit5,
		 soma => soma_5);
	MUX_reseultado5 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_5 and saida_mux_A_5,
      entrada_MUX_B => saida_mux_B_5 or saida_mux_A_5,
      entrada_MUX_C => soma_5,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_5);

-- BIT 4
    MUX_A_4 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(4),
      entrada_MUX_B => not(entradaA(4)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_4);
	MUX_B_4 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(4),
      entrada_MUX_B => not(entradaB(4)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_4);
	SOMADOR_4 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_4,
		 B => saida_mux_B_4,
	    C_in => carry_out_bit3,
		 C_out => carry_out_bit4,
		 soma => soma_4);
	MUX_reseultado4 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_4 and saida_mux_A_4,
      entrada_MUX_B => saida_mux_B_4 or saida_mux_A_4,
      entrada_MUX_C => soma_4,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_4);

-- BIT 3
    MUX_A_3 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(3),
      entrada_MUX_B => not(entradaA(3)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_3);
	MUX_B_3 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(3),
      entrada_MUX_B => not(entradaB(3)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_3);
	SOMADOR_3 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_3,
		 B => saida_mux_B_3,
	    C_in => carry_out_bit2,
		 C_out => carry_out_bit3,
		 soma => soma_3);
	MUX_reseultado3 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_3 and saida_mux_A_3,
      entrada_MUX_B => saida_mux_B_3 or saida_mux_A_3,
      entrada_MUX_C => soma_3,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_3);

-- BIT 2
    MUX_A_2 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(2),
      entrada_MUX_B => not(entradaA(2)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_2);
	MUX_B_2 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(2),
      entrada_MUX_B => not(entradaB(2)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_2);
	SOMADOR_2 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_2,
		 B => saida_mux_B_2,
	    C_in => carry_out_bit1,
		 C_out => carry_out_bit2,
		 soma => soma_2);
	MUX_reseultado2 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_2 and saida_mux_A_2,
      entrada_MUX_B => saida_mux_B_2 or saida_mux_A_2,
      entrada_MUX_C => soma_2,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_2);

-- BIT 1
    MUX_A_1 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(1),
      entrada_MUX_B => not(entradaA(1)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_1);
	MUX_B_1 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(1),
      entrada_MUX_B => not(entradaB(1)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_1);
	SOMADOR_1 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_1,
		 B => saida_mux_B_1,
	    C_in => carry_out_bit0,
		 C_out => carry_out_bit1,
		 soma => soma_1);
	MUX_reseultado1 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_1 and saida_mux_A_1,
      entrada_MUX_B => saida_mux_B_1 or saida_mux_A_1,
      entrada_MUX_C => soma_1,
      entrada_MUX_D => '0',
      seletor_MUX => seletor,
      saida_MUX => resultado_1);

-- BIT 0
    MUX_A_0 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaA(0),
      entrada_MUX_B => not(entradaA(0)),
      seletor_MUX => inverteA,
      saida_MUX => saida_mux_A_0);
	MUX_B_0 : entity work.muxGenerico2x1_stdlogic
    port map(
      entrada_MUX_A => entradaB(0),
      entrada_MUX_B => not(entradaB(0)),
      seletor_MUX => inverteB,
      saida_MUX => saida_mux_B_0);
	SOMADOR_0 : entity work.somadorCompleto_1bit 
	  port map(
	    A => saida_mux_A_0,
		 B => saida_mux_B_0,
	    C_in => inverteB, -- aqui vai 1 a menos
		 C_out => carry_out_bit0,
		 soma => soma_0);
	MUX_reseultado0 : entity work.muxGenerico4x1_stdlogic generic map (larguraSelecao => 2)
    port map(
      entrada_MUX_A => saida_mux_B_0 and saida_mux_A_0,
      entrada_MUX_B => saida_mux_B_0 or saida_mux_A_0,
      entrada_MUX_C => soma_0,
      entrada_MUX_D => (carry_out_bit31 xor carry_out_bit30) xor soma_31,
      seletor_MUX => seletor,
      saida_MUX => resultado_0);

	

saida <= resultado_31 & resultado_30 & resultado_29 & resultado_28 & resultado_27 & resultado_26 & resultado_25 & resultado_24 & resultado_23 & resultado_22 & resultado_21 & resultado_20 & resultado_19 & resultado_18 & resultado_17 & resultado_16 & resultado_15 & resultado_14 & resultado_13 & resultado_12 & resultado_11 & resultado_10 & resultado_9 & resultado_8 & resultado_7 & resultado_6 & resultado_5 & resultado_4 & resultado_3 & resultado_2 & resultado_1 & resultado_0;	
z <= not (resultado_31 or resultado_30 or resultado_29 or resultado_28 or resultado_27 or resultado_26 or resultado_25 or resultado_24 or resultado_23 or resultado_22 or resultado_21 or resultado_20 or resultado_19 or resultado_18 or resultado_17 or resultado_16 or resultado_15 or resultado_14 or resultado_13 or resultado_12 or resultado_11 or resultado_10 or resultado_9 or resultado_8 or resultado_7 or resultado_6 or resultado_5 or resultado_4 or resultado_3 or resultado_2 or resultado_1 or resultado_0);	
end architecture;