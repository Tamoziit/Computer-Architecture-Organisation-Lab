----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 08:44:44
-- Design Name: 
-- Module Name: MUX_4_1_3sel_bh_tbw - Behavioral
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

entity MUX_4_1_3sel_bh_tbw is
--  Port ( );
end MUX_4_1_3sel_bh_tbw;

architecture Behavioral of MUX_4_1_3sel_bh_tbw is

component MUX_4_1_3sel_bh is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end component;

signal IP1 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
signal Sel1 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal Y1 : STD_LOGIC;

begin
uut: MUX_4_1_3sel_bh Port Map(IP => IP1, Sel => Sel1, Y => Y1);
stim_proc: process
begin
wait for 50ns;
Sel1 <= "000";
wait for 50ns;
Sel1 <= "001";
wait for 50ns;
Sel1 <= "010";
wait for 50ns;
Sel1 <= "011";
wait for 50ns;
Sel1 <= "100";
wait for 50ns;
Sel1 <= "101";
wait for 50ns;
Sel1 <= "110";
wait for 50ns;
Sel1 <= "111";
wait;
end process;
end Behavioral;
