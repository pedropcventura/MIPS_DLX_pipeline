library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxGenerico4x1_stdlogic is
  generic (
    larguraSelecao : natural := 2;
    invertido : boolean := FALSE);
  port (
    entrada_MUX_A, entrada_MUX_B, entrada_MUX_C, entrada_MUX_D : in std_logic;
    seletor_MUX : in std_logic_vector(larguraSelecao - 1 downto 0);
    saida_MUX : out std_logic
  );
end entity;

architecture Behavioral of muxGenerico4x1_stdlogic is
begin
  saida_MUX <= entrada_MUX_A when seletor_MUX = "00" else
    entrada_MUX_B when seletor_MUX = "01" else
    entrada_MUX_C when seletor_MUX = "10" else
    entrada_MUX_D;
end architecture;