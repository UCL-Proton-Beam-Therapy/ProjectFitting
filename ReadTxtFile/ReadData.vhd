library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ReadData is
end ReadData;

architecture foo of ReadData is
    signal rst:     std_logic := '1';
    signal clk:     std_logic := '0';
    signal y:       integer;
begin

DUT:
    entity work.MainFitting
        port map (
            rst => rst,
            clk => clk,
            y => y
        );
CLOCK:
    process
    begin
        wait for 5 ns;
        clk <= not clk;
    end process;
STIMULUS:
    process 
    begin
        wait for 10 ns;
        rst <= '0';
        wait; 
    end process;
end architecture;
