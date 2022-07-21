library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Scrabble  is
  port (x3, x2, x1, x0: in std_logic; Y: out std_logic);
end entity Scrabble;
architecture Struct of Scrabble is
  signal n1, n2: std_logic;
begin
  -- component instances
  c1: XOR_2 
       port map (A => x1, B => x0, Y => n2);
  c2: XNOR_2 
       port map (A => x3, B => x2, Y => n1);

  aN1: AND_2 port map (A => n1, B => n2, Y => Y);
  
end Struct;
