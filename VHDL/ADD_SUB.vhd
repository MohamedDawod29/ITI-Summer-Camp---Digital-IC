LIBRARY IEEE;
LIBRARY WORK;
LIBRARY std;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_bit.ALL;
USE IEEE.std_logic_arith.all;
USE IEEE.numeric_std.all;
USE IEEE.std_logic_signed.all;

entity ADD_SUB is
    port (
        A, B: in  std_logic_vector (3 DOWNTO 0);
		  M: in std_logic;
        S: out std_logic_vector (3 downto 0); 
        Cout: out std_logic
    );
end entity;

architecture behav of ADD_SUB is
begin
    process (A,B,M)
	 variable result : std_logic_vector (4 downto 0);
    begin
			if (M ='0') then
            result := ('0' & A) + ('0' & B);
				S <= result (3 downto 0);
	         Cout <= result (4);
			else
				result := ('0' & A) - ('0' & B);
				S <= result (3 downto 0);
	         Cout <= result (4);
			end if;
    end process;
end architecture;

