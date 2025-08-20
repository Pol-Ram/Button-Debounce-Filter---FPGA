----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2024 06:00:38
-- Design Name: 
-- Module Name: Counter - Behavioral
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


entity Counter is
    Port ( clk           : in STD_LOGIC;
           reset         : in STD_LOGIC;
           start_counter : in STD_LOGIC;
           counter_end   : out STD_LOGIC);
end Counter;

architecture Behavioral of Counter is
    signal   count          : integer := 0;  -- contador para dividir el reloj
    constant MAX_COUNT      : integer := 100000;  -- contador para dividir 100 MHz a 500Hz / 2ms 100.000
    signal   clk_int        : STD_LOGIC := '0';  -- señal interna para controlar el clk dividido
begin

    process(clk, reset)
    begin
        if reset = '0' then
            count <= 0;
            clk_int <= '0';  -- Resetear la señal interna
        elsif rising_edge(clk) and start_counter = '1' then
            if count = MAX_COUNT then
                clk_int <= not clk_int;  -- Toggle la señal interna
                count <= 0;  -- Reiniciar contador
            else
                count <= count + 1;  -- Incrementar contador
            end if;
        end if;
    end process;

    counter_end <= clk_int;  -- Asignar la señal interna a la salida

end Behavioral;
