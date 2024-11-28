library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico2x1_stdlogic is
  port (
    entrada_MUX_A, entrada_MUX_B : in std_logic;
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic
  );
end entity;

architecture comportamento of muxGenerico2x1_stdlogic is
  begin
    saida_MUX <= entrada_MUX_B when (seletor_MUX = '1') else entrada_MUX_A;
end architecture;