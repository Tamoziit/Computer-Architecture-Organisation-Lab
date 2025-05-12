----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 11:01:16
-- Design Name: 
-- Module Name: TFF_bh_tbw - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TFF_bh_tbw is
--  Port ( );
end TFF_bh_tbw;

architecture Behavioral of TFF_bh_tbw is

component TFF_bh is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

constant clock_period : time := 50ns;

signal T1 : STD_LOGIC := '0';
signal CLK1 : STD_LOGIC := '0';
signal Q1 : STD_LOGIC;

begin
uut: TFF_bh Port Map(T => T1, CLK => CLK1, Q => Q1);
CLK1 <= NOT CLK1 after clock_period/2;
stim_proc: process
begin
wait for 50ns;
T1 <= '0';
wait for 50ns;
T1 <= '1';
wait;
end process;
end Behavioral;
