----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2024 05:19:27
-- Design Name: 
-- Module Name: FSM - Behavioral
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


entity FSM is
  Port (bp_r           : in STD_LOGIC;
        clk            : in STD_LOGIC;
        reset          : in STD_LOGIC;
        counter_end    : in STD_LOGIC;
        bp_s_r         : out STD_LOGIC;
        start_counter  : out STD_LOGIC
  );
end FSM;


architecture Behavioral of FSM is

type state_type is (E0,E1,E2);
signal current_state, next_state: state_type;

begin
    --Block F
    process(counter_end,bp_r,current_state)
    begin
        Case current_state is
        when E0 => if bp_r='1' then
            next_state <= E1;
            else
            next_state <= E0;
            end if;
        
        when E1 => if bp_r='1' and counter_end='1' then
            next_state <= E2;
            else
            next_state <= E1;
            end if;
            
        when E2 => if bp_r='0' then 
            next_state <= E0;
            else
            next_state <= E2;
            end if;
        
        when others =>
            next_state <=E0;       
        end case;    
    end process;
    
    --Block M
    
    process(clk,reset)
    begin
        if reset='0' then
            current_state <= E0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if; 
    end process;
    
    --Block G
    bp_s_r <= '1' when current_state = E1 or current_state = E2 else
              '0';    
              
    start_counter <= '1' when current_state = E1 else
              '0';       
 
end Behavioral;
