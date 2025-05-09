----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 21:34:32
-- Design Name: 
-- Module Name: MUX_2_1_bh_tbw - Behavioral
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

entity MUX_2_1_bh_tbw is
--  Port ( );
end MUX_2_1_bh_tbw;

architecture Behavioral of MUX_2_1_bh_tbw is

component MUX_2_1_bh is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sel : in STD_LOGIC;
           z : out STD_LOGIC);
end component;

signal x1 : STD_LOGIC := '1';
signal y1 : STD_LOGIC := '0';
signal sel1 : STD_LOGIC := '0';
signal z1 : STD_LOGIC;

begin
uut: MUX_2_1_bh Port Map(x => x1, y => y1, sel => sel1, z => z1);
stim_proc: process
begin
wait for 100ns;
sel1 <= '0';
wait for 100ns;
sel1 <= '1';
wait;
end process;
end Behavioral;
