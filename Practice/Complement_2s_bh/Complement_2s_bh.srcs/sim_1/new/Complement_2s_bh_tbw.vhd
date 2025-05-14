----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 10:15:21
-- Design Name: 
-- Module Name: Complement_2s_bh_tbw - Behavioral
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

entity Complement_2s_bh_tbw is
--  Port ( );
end Complement_2s_bh_tbw;

architecture Behavioral of Complement_2s_bh_tbw is

component Complement_2s_bh is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Res : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal A1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal B1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal Res1 : STD_LOGIC_VECTOR (7 downto 0);

begin
uut: Complement_2s_bh Port Map(A => A1, B => B1, Res => Res1);
stim_proc: process
begin
wait for 50ns;
A1 <= "00010110";
B1 <= "00000101";
wait for 50ns;
A1 <= "10000001";
B1 <= "00000011";
wait for 50ns;
A1 <= "11110000";
B1 <= "00001111";
wait;
end process;
end Behavioral;
