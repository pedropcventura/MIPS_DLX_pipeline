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
    CLOCK_50 : in std_logic;
    KEY : in std_logic_vector(3 downto 0)
  );
end entity;

architecture Behavioral of MIPS_DLX_pipeline is
signal CLK : std_logic;


begin

gravar:  if simulacao generate
CLK <= KEY(0);
else generate
CLK <= CLOCK_50;
end generate;
  
end architecture;