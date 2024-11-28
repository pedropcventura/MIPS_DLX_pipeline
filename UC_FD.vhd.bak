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
 
	 saida <= "000010110" when entrada = ANDD else
           "000010110" when entrada = ORR else
           "000010110" when entrada = ADD else
           "000010110" when entrada = SUB else
           "000010110" when entrada = SLT else
           "010101100" when entrada = LW else
           "100001000" when entrada = SW else
           "001000000" when entrada = BEQ else
           "000000001" when entrada = JMP else
           "000000000"; -- NOP para os entradas Indefinidas
	 
	 
end architecture;