library ieee;
use ieee.std_logic_1164.all;

entity Adil_Register_N_VHDL is 
    generic (N : integer := 32);
    port(
        Adil_clk : in std_logic;
        Adil_wren : in std_logic;
        Adil_rden : in std_logic;
        Adil_chen : in std_logic;
        Adil_data : in std_logic_vector (N-1 downto 0);
        Adil_q : out std_logic_vector (N - 1 downto 0)
        );
end Adil_Register_N_VHDL;

architecture arch of Adil_Register_N_VHDL is

    signal Adil_storage : std_logic_vector(N - 1 downto 0);
    
    
begin 
    process (Adil_clk)
    begin 
        if (rising_edge(Adil_clk) and Adil_wren = '1')
            then Adil_storage <= Adil_data;
        end if;
    end process;
    
    process (Adil_rden , Adil_chen , Adil_storage)
    begin
        if (Adil_rden = '1' and Adil_chen = '1')
            then Adil_q <= Adil_storage;
        elsif (Adil_chen = '0')
            then Adil_q <= (others => 'Z');
        end if;
    end process;
end arch;