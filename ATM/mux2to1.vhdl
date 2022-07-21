library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX2to1 is
  port (In0, In1, S: in std_logic; Y: out std_logic);
end entity MUX2to1;
architecture Struct of MUX2to1 is
  signal N2, N1, N0: std_logic;
begin
  -- component instances
  i0: INVERTER 
       port map (A => S, Y => N0);

  aN2: AND_2 port map (A => In0, B => N0, Y => N2);
  aN1: AND_2 port map (A => In1, B => S,  Y => N1);
  o1:  OR_2  port map (A => N1,  B => N2, Y => Y);
  
end Struct;
