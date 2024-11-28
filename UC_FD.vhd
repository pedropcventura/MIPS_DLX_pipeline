library ieee;
use ieee.std_logic_1164.all;

entity UC_FD is
  port (
    entrada : in std_logic_vector(5 downto 0);
    saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of UC_FD is

  constant ANDD : std_logic_vector(5 downto 0) := "000000";
  constant ORR : std_logic_vector(5 downto 0) := "000000";
  constant ADD : std_logic_vector(5 downto 0) := "000000";
  constant SUB : std_logic_vector(5 downto 0) := "000000";
  constant SLT : std_logic_vector(5 downto 0) := "000000";
  constant LW : std_logic_vector(5 downto 0) := "100011";
  constant SW : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";

begin 
 
	 saida <= "011010000" when entrada = ANDD else
           "011010000" when entrada = ORR else
           "011010000" when entrada = ADD else
           "011010000" when entrada = SUB else
           "011010000" when entrada = SLT else
           "001101010" when entrada = LW else
           "000100001" when entrada = SW else
           "000000100" when entrada = BEQ else
           "100000000" when entrada = JMP else
           "000000000"; -- NOP para os entradas Indefinidas
	 
	 
end architecture;