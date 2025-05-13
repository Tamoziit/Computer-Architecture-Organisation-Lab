----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 15:16:14
-- Design Name: 
-- Module Name: gray_to_bin_bh_tbw - Behavioral
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

entity gray_to_bin_bh_tbw is
--  Port ( );
end gray_to_bin_bh_tbw;

architecture Behavioral of gray_to_bin_bh_tbw is

component gray_to_bin_bh is
    Port ( G : in STD_LOGIC_VECTOR (2 downto 0);
           B : inout STD_LOGIC_VECTOR (2 downto 0));
end component;

signal G1 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal B1 : STD_LOGIC_VECTOR (2 downto 0);

begin
uut: gray_to_bin_bh Port Map(G => G1, B => B1);
stim_proc: process
begin
wait for 50ns;
G1 <= "000";
wait for 50ns;
G1 <= "001";
wait for 50ns;
G1 <= "010";
wait for 50ns;
G1 <= "011";
wait for 50ns;
G1 <= "100";
wait for 50ns;
G1 <= "101";
wait for 50ns;
G1 <= "110";
wait for 50ns;
G1 <= "111";
wait;
end process;
end Behavioral;
