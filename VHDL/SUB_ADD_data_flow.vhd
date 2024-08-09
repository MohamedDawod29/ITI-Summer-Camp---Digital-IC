LIBRARY IEEE;
LIBRARY WORK;
LIBRARY std;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_bit.ALL;
USE IEEE.std_logic_arith.all;
USE IEEE.numeric_std.all;
USE IEEE.std_logic_signed.all;

entity SUB_ADD_data_flow is
    port (
        A, B: in std_logic_vector(3 downto 0);
        M: in std_logic; 
        S: out std_logic_vector(3 downto 0); 
        Cout: out std_logic 
    );
end entity;

architecture data_flow of SUB_ADD_data_flow is
		signal result : std_logic_vector (4 downto 0);
begin
    result <= ('0' & A) + ('0' & B) when (M = '0') else ('0' & A) - ('0' & B);
	 S <= result (3 downto 0);
	 Cout <= result (4);
end architecture;