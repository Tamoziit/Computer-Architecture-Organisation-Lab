----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2025 02:48:37
-- Design Name: 
-- Module Name: MUX_4_1_bh_tbw - Behavioral
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

entity MUX_4_1_bh_tbw is
--  Port ( );
end MUX_4_1_bh_tbw;

architecture Behavioral of MUX_4_1_bh_tbw is

component MUX_4_1_bh is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end component;

signal IP1: STD_LOGIC_VECTOR (3 downto 0) := "1011";
signal Sel1 : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal Y1: STD_LOGIC;

begin
uut: MUX_4_1_bh Port Map(IP => IP1, Sel => Sel1, Y => Y1);
stim_proc: process
begin
wait for 100ns;
Sel1 <= "00";
wait for 100ns;
Sel1 <= "01";
wait for 100ns;
Sel1 <= "10";
wait for 100ns;
Sel1 <= "11";
wait;
end process;
end Behavioral;
