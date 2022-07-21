--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity atm is
    port(d: in std_logic_vector(7 downto 0); p1, p0, b, a1, a0, c5, c4, c3, c2, c1, c0: out std_logic); 
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;

component MUX2to1 is
  port (In0, In1, S: in std_logic; Y: out std_logic);
end component MUX2to1;

  signal n1, n2: std_logic_vector(15 downto 0);
  signal n3, n4, n5: std_logic;

begin

    div1: div
	     port map (Nu(7) => d(7), Nu(6) => d(6), Nu(5) => d(5), Nu(4) => d(4), Nu(3) => d(3), Nu(2) => d(2), Nu(1) => d(1), Nu(0) => d(0),
		            D(7) => '0', D(6) => '1', D(5) => '1', D(4) => '0', D(3) => '0', D(2) => '1', D(1) => '0', D(0) => '0', 
						RQ(15) => n1(15), RQ(14) => n1(14), RQ(13) => n1(13), RQ(12) => n1(12), RQ(11) => n1(11), RQ(10) => n1(10), RQ(9) => n1(9), RQ(8) => n1(8), RQ(7) => n1(7), RQ(6) => n1(6), RQ(5) => n1(5), RQ(4) => n1(4), RQ(3) => n1(3), RQ(2) => n1(2), RQ(1) => n1(1), RQ(0) => n1(0));
						
    div2: div
	     port map (Nu(7) => n1(15), Nu(6) => n1(14), Nu(5) => n1(13), Nu(4) => n1(12), Nu(3) => n1(11), Nu(2) => n1(10), Nu(1) => n1(9), Nu(0) => n1(8),
		            D(7) => '0', D(6) => '0', D(5) => '1', D(4) => '1', D(3) => '0', D(2) => '0', D(1) => '1', D(0) => '0', 
						RQ(15) => n2(15), RQ(14) => n2(14), RQ(13) => n2(13), RQ(12) => n2(12), RQ(11) => n2(11), RQ(10) => n2(10), RQ(9) => n2(9), RQ(8) => n2(8), RQ(7) => n2(7), RQ(6) => n2(6), RQ(5) => n2(5), RQ(4) => n2(4), RQ(3) => n2(3), RQ(2) => n2(2), RQ(1) => n2(1), RQ(0) => n2(0));

	 --b  = n2(0);
	 --a1 = n1(1);
	 --a0 = n1(0);
	 --c5 = n2(13);
	 --c4 = n2(12);
	 --c3 = n2(11);
	 --c2 = n2(10);
	 --c1 = n2(9);
	 --c0 = n2(8);
	 m1: MUX2to1
	     port map (In0 => '0', In1 => n2(0), S => '1', Y => b);
	 m2: MUX2to1
	     port map (In0 => '0', In1 => n1(1), S => '1', Y => a1);
	 m3: MUX2to1
	     port map (In0 => '0', In1 => n1(0), S => '1', Y => a0);
	 m4: MUX2to1
	     port map (In0 => '0', In1 => n2(13), S => '1', Y => c5);
	 m5: MUX2to1
	     port map (In0 => '0', In1 => n2(12), S => '1', Y => c4);
	 m6: MUX2to1
	     port map (In0 => '0', In1 => n2(11), S => '1', Y => c3);
	 m7: MUX2to1
	     port map (In0 => '0', In1 => n2(10), S => '1', Y => c2);
	 m8: MUX2to1
	     port map (In0 => '0', In1 => n2(9), S => '1', Y => c1);
	 m9: MUX2to1
	     port map (In0 => '0', In1 => n2(8), S => '1', Y => c0);
		  
	 i1: INVERTER
	     port map (A => n2(0), Y => n4);
	 o8: OR_8
	     port map (A => d(7), B => d(6), C => d(5), D => d(4), E => d(3), F => d(2), G => d(1), H => d(0), Y => n3);
	 o1: OR_3
	     port map (A => n1(1), B => n1(0), C => n2(0), Y => p1);
	 or2: OR_3
	     port map (A => n1(1), B => n1(0), C => n4, Y => n5);
	 m: MUX2to1
	     port map (In0 => '0', In1 => n5, S => n3, Y => p0);
	 

end struct;
