
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is

    function sub(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
            variable carry : std_logic:= '1';
        begin
            for i in 0 to operand_width-1 loop
                diff(i) := A(i) xor (not B(i)) xor carry;
                carry := (A(i) and (not B(i) )) or (carry and ( A(i) xor (not B(i))) );
            end loop;
                diff(operand_width*2-1 downto operand_width):=(others => not carry);
            return diff;
    end sub;

     
    function rolf(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            variable shift,g2 : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
            variable tmp, r : integer := 0;
        begin
				g2(operand_width-1 downto 0):= A;
				x3: for i in 0 to 2 loop
                if B(i) = '1' then
		              r := 1;
				    else
		              r := 0;
					 end if;
			       tmp := tmp + (2**i)*r;
			   end loop x3;
				x4: for i in 0 to 7 loop
		          if i+tmp < 8 then
				        shift(i+tmp):= g2(i);
					 else
					     shift(i+tmp-8):= g2(i);
					 end if;
				end loop x4;	 
            -- Hint: use for loop to calculate value of shift variable
            -- shift(____ downto _____) & shift(____ downto ______)
            -- to calculate exponent, you can use double asterisk. ex: 2**i

        return shift;
    end rolf;
                
begin
alu : process( A, B, sel )
    variable g1: std_logic_vector(3 downto 0);

begin
-- complete VHDL code for various outputs of ALU based on select lines
   -- Hint: use if/else statement
    if sel = "00" then
        op <= rolf(A,B);
	 elsif sel = "10" then
		  g1 := not (A or B);
		  op <= "0000" & g1(3 downto 0);
    elsif sel = "01" then
	     op <= sub(A,B);
	 else
        op <= rolf(A, "0010");
end if;
end process alu;
end a1 ;
