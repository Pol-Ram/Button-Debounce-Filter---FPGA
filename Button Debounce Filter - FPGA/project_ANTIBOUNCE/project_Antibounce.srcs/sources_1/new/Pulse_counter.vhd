----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2024 15:02:01
-- Design Name: 
-- Module Name: Pulse_counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Pulse_counter is
    Port ( clk           : in STD_LOGIC;
           reset         : in STD_LOGIC;
           bp_s_r        : in STD_LOGIC;
           led_pulse     : out STD_LOGIC;
           out_pulse     : out STD_LOGIC;
           led_counter   : out STD_LOGIC;
           out_counter   : out STD_LOGIC
          );
end Pulse_counter;

architecture Behavioral of Pulse_counter is

signal btn_prev    : STD_LOGIC := '0';  -- Estado anterior del botón
signal pulse_count : INTEGER range 0 to 10 := 0;  -- Contador de pulsos
signal led2_state  : STD_LOGIC := '0';  -- Estado del LED2
    
begin

    process(clk,reset)
    begin
        if rising_edge(clk) then
            -- Manejar el reset
            if reset = '0' then
                btn_prev <= '0';
                pulse_count <= 0;
                led2_state <= '0';
            else
                if bp_s_r = '1' and btn_prev = '0' then
                    pulse_count <= pulse_count + 1;
                    if pulse_count = 9 then
                        led2_state <= '1';
                        pulse_count <= 0;  -- Reiniciar el contador
                    end if;
                end if;
                btn_prev <= bp_s_r;
            end if;
        end if;
    end process;
    
--led_1_out2<=led_1_out;
--out_1<=led_1_out;

led_counter<=led2_state;
out_counter<=led2_state;

led_pulse  <= bp_s_r;
out_pulse  <= bp_s_r;

end Behavioral;
