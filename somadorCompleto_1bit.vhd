library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity somadorCompleto_1bit is
    port
    (
        A : in  STD_LOGIC;
        B :   in STD_LOGIC;
		  C_in :   in STD_LOGIC;
		  C_out :   out STD_LOGIC;
		  soma : out STD_LOGIC
    );
end entity;

architecture comportamento of somadorCompleto_1bit is
    begin
        soma <= C_in xor (A xor B);
		  C_out <= ( (A xor B) and C_in ) or (A and B);
end architecture;