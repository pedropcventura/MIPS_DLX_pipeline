library ieee;
use ieee.std_logic_1164.all;

entity UC_ULA is
  port (
    funct : in std_logic_vector(5 downto 0);
	 opcode : in std_logic_vector(5 downto 0);
	 tipoR : in std_logic;
    ULActrl : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of UC_ULA is

begin 
  ULActrl <= "0000" when funct = "100100" and tipoR = '1' else
    "0001" when funct = "100101" and tipoR = '1' else
    "0010" when funct = "100000" and tipoR = '1' else
    "0110" when funct = "100010" and tipoR = '1' else
    "0111" when funct = "101010" and tipoR = '1' else
	 "0010" when opcode = "100011" and tipoR = '0' else
	 "0010" when opcode = "101011" and tipoR = '0' else
	 "0110" when opcode = "000100" and tipoR = '0' else
    "0000"; -- NOP para os entradas Indefinidas
	 
end architecture;