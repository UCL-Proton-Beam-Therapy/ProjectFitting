-- FPGA Curve Fitting
-- Author: Febian
-- Date created 14/10/2024 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

entity MainFitting is
    port(
        clk : in std_logic;
        rst : in std_logic;
        y : out integer 
    );
end MainFitting;

architecture Behavioral of MainFitting is

begin
    
--    "C:\Users\Protons\Documents\viv\viv\project_fitting\input.txt";
--    int := integer'value(str);
    process (rst, clk) 
        file file_pointer:         text;
        variable line_content:  character;
        variable line_num:      line;
        variable str:          character := '0'; 
        variable cnt:           integer range 0 to 5 := 0;
        type integer_array is array(0 to 4) of integer;
        variable data: integer_array;
        
        begin
        if rst = '1' then
            cnt := 0;
        elsif rising_edge(clk) then 
            if cnt < 5 then
                if cnt = 0 then  -- open file once
                    file_open (file_pointer, "C:\Users\Protons\Documents\viv\viv\project_fitting\input.txt", READ_MODE);
                end if;
                readline (file_pointer, line_num); 
                read (line_num, line_content);  
               
                str := line_content;
                data(cnt) := character'pos(str)- character'pos('0');
                y <= data(cnt); 
                cnt := cnt + 1;
            end if;
            
            if cnt = 5 then     -- variable updated immediately
                file_close (file_pointer);   -- close only once
            end if;  
        end if;
    end process;
    

end Behavioral;
