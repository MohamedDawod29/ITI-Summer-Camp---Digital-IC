library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for half adder

entity HALF_ADDER is
    port (
        A, B : in  bit;   
        Sum  : out bit;   
        Cout: out bit    
    );
end entity;

architecture behavior of HALF_ADDER is
begin
    Sum <= A xor B;
    Cout <= A and B;
end architecture;





--Entity of FULL ADDER


entity FULL_ADD_1bit is
    port (
        A, B, Cin : in  bit;
        Sum, Cout : out bit
    );
end entity;

architecture structural of FULL_ADD_1bit is
    component HALF_ADDER
        port (
            A, B : in  bit;
            Sum, Cout : out bit
        );
    end component;

    signal S1, C1, S2 : bit;
begin
    HALF_ADDER_1: HALF_ADDER port map (A => A, B => B, Sum => S1, Cout => C1);
    HALF_ADDER_2: HALF_ADDER port map (A => S1, B => Cin, Sum => Sum, Cout => S2);
    Cout <= C1 or S2;
end architecture;





--Entity of ADDER/SUBTRACTOR


entity SUB_ADD_struct is
    port (
        A, B: in bit_vector (3 downto 0);
        M: in bit; 
        S: out bit_vector(3 downto 0); 
        Cout: out bit 
    );
end entity;

architecture structural of SUB_ADD_struct is
    component FULL_ADD_1bit is
        port (
            A, B, Cin: in bit;
            Sum, Cout: out bit
        );
    end component;
    
    signal C: bit_vector(3 downto 0);
begin
    FA0: FULL_ADD_1bit port map (A(0), B(0), M, S(0), C(0));
    FA1: FULL_ADD_1bit port map (A(1), B(1), C(0), S(1), C(1));
    FA2: FULL_ADD_1bit port map (A(2), B(2), C(1), S(2), C(2));
    FA3: FULL_ADD_1bit port map (A(3), B(3), C(2), S(3), Cout);
end architecture;