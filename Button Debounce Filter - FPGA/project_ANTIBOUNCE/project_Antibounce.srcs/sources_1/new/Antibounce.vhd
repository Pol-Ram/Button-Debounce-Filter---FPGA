----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2024 08:58:39
-- Design Name: 
-- Module Name: Antibounce - Behavioral
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


entity Antibounce is
  Port (bp_r           : in STD_LOGIC;
        clk            : in STD_LOGIC;
        reset          : in STD_LOGIC;
        bp_s_r         : out STD_LOGIC
  );
end Antibounce;

architecture Behavioral of Antibounce is

signal start_counter_signal : STD_LOGIC;
signal counter_end_signal   : STD_LOGIC;


    component FSM is
      Port (bp_r           : in STD_LOGIC;
            clk            : in STD_LOGIC;
            reset          : in STD_LOGIC;
            counter_end    : in STD_LOGIC;
            bp_s_r         : out STD_LOGIC;
            start_counter  : out STD_LOGIC
      );
    end component;
    
    component Counter is
    Port ( clk           : in STD_LOGIC;
           reset         : in STD_LOGIC;
           start_counter : in STD_LOGIC;
           counter_end   : out STD_LOGIC);
    end component;

begin

    U1:FSM
        Port map(
        bp_r=>bp_r,
        clk=>clk,
        reset=>reset,
        counter_end=>counter_end_signal,        
        bp_s_r=>bp_s_r,
        start_counter=>start_counter_signal
        );
        
     U2:Counter
        Port map(
        clk=>clk,
        reset=>reset,
        start_counter=>start_counter_signal,
        counter_end=>counter_end_signal
        );


end Behavioral;
