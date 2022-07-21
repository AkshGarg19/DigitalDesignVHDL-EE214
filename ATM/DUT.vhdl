library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
   component atm is
    port(d: in std_logic_vector(7 downto 0); p1, p0, b, a1, a0, c5, c4, c3, c2, c1, c0: out std_logic); 
end component atm;
begin

   add_instance: atm 
			port map (
					d(7) => input_vector(7),
					d(6)   => input_vector(6),
					d(5)   => input_vector(5),
					d(4) => input_vector(4),
					d(3) => input_vector(3),
					d(2)   => input_vector(2),
					d(1)   => input_vector(1),
					d(0) => input_vector(0),
    --b  = n2(0)
	 --a1 = n1(1)
	 --a0 = n1(0)
	 --c5 = n2(13)
	 --c4 = n2(12)
	 --c3 = n2(11)
	 --c2 = n2(10)
	 --c1 = n2(9)
	 --c0 = n2(8)
					p1 => output_vector(10),
					p0 => output_vector(9),
					a1 => output_vector(8),
					a0 => output_vector(7),
					b  => output_vector(6),
					c5 => output_vector(5),
					c4 => output_vector(4),
					c3 => output_vector(3),
					c2 => output_vector(2),
					c1 => output_vector(1),
					c0 => output_vector(0));

end DutWrap;

