library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity krypton is
port(inp:in std_logic_vector(4 downto 0);
        reset,clock:in std_logic;
        outp: out std_logic);
end krypton;

architecture rch of krypton is

---------------Define state type here-----------------------------
type state is (rst,s1, s2, s3, s4, s5, s6);     -- Fill the code here
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<= rst;    -- Fill the code here
        else
            y_present<= y_next;                -- Fill the code here
        end if;
    end if;
    
end process;

state_transition_proc:process(inp,y_present)
begin
    case y_present is
        when rst =>
            if(unsigned(inp)=11) then
                y_next <= s1;
            else
                y_next <= rst;       
            end if;
        when s1 =>
            if(unsigned(inp)=18) then
                y_next <= s2;
            else
                y_next <= s1;       
            end if;
        when s2 =>
            if(unsigned(inp)=25) then
                y_next <= s3;
            else
                y_next <= s2;     
            end if;
        when s3 =>
            if(unsigned(inp)=16) then
                y_next <= s4;
            else
                y_next <= s3;       
            end if;
        when s4 =>
            if(unsigned(inp)=20) then
                y_next <= s5;
            else
                y_next <= s4;       
            end if;
        when s5 =>
            if(unsigned(inp)=15) then
                y_next <= s6;
            else
                y_next <= s5;       
            end if;
        when s6 =>
            if(unsigned(inp)=14) then
                y_next <= rst;
            else
                y_next <= s6;       
            end if;		
	  end case;
end process;


outputs:process(inp, y_present)
begin
    outp <= '0';
    case y_present is
        when rst =>
            null;
        when s1 =>
            null;
        when s2 =>
            null;
        when s3 =>
            null;
        when s4 =>
            null;
        when s5 =>
            null;
        when s6 =>
            if(unsigned(inp)=14) then
                outp <= '1';      
            end if;		
	  end case;
end process;

end rch;