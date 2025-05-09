----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 13:24:10
-- Design Name: 
-- Module Name: HA_bh_tbw - Behavioral
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

entity HA_bh_tbw is
--  Port ( );
end HA_bh_tbw;

architecture Behavioral of HA_bh_tbw is

component HA_bh is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end component;

signal x1 : STD_LOGIC := '0';
signal y1 : STD_LOGIC := '0';
signal s1 : STD_LOGIC;
signal c1 : STD_LOGIC;

begin
uut: HA_bh Port Map(x => x1, y => y1, s => s1, c => c1);
stim_proc: process
begin
wait for 50ns;
x1 <= '0';
y1 <= '0';
wait for 50ns;
x1 <= '0';
y1 <= '1';
wait for 50ns;
x1 <= '1';
y1 <= '0';
wait for 50ns;
x1 <= '1';
y1 <= '1';
wait;
end process;
end Behavioral;
