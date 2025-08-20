----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2024 10:24:32
-- Design Name: 
-- Module Name: bounce_proobe - Behavioral

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity bounce_proobe is
    Port ( clk           : in STD_LOGIC;
           reset         : in STD_LOGIC;
           bp_r          : in STD_LOGIC;
           out_pulse     : out STD_LOGIC;
           led_pulse     : out STD_LOGIC;
           out_counter   : out STD_LOGIC;
           led_counter   : out STD_LOGIC);
end bounce_proobe;

architecture Behavioral of bounce_proobe is

    signal bp_s_r_signal    : STD_LOGIC := '0';  -- Estado anterior del botón
    signal led_1_out_signal : STD_LOGIC := '0';  -- Estado anterior del botón
    
    component Antibounce is
      Port (bp_r           : in STD_LOGIC;
            clk            : in STD_LOGIC;
            reset          : in STD_LOGIC;
            bp_s_r         : out STD_LOGIC
      );
      end component;
      
    component Pulse_Counter is
    Port ( clk           : in STD_LOGIC;
           reset         : in STD_LOGIC;
           bp_s_r        : in STD_LOGIC;
           led_pulse     : out STD_LOGIC;
           out_pulse     : out STD_LOGIC;
           led_counter   : out STD_LOGIC;
           out_counter   : out STD_LOGIC
          );
      end component;
begin
    U1:Antibounce
        Port map(
        bp_r=>bp_r,
        clk=>clk,
        reset=>reset,
        bp_s_r=>bp_s_r_signal
        );
        
    U2:Pulse_counter
        Port map(
        bp_s_r=>bp_s_r_signal,
        clk=>clk,
        reset=>reset,
        led_pulse=>led_pulse,
        out_pulse=>out_pulse,
        led_counter=>led_counter,
        out_counter=>out_counter
        );
     
end Behavioral;
