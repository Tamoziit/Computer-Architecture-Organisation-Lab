----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 09:05:18
-- Design Name: 
-- Module Name: AND_OR_XOR_4bit_bh_tbw - Behavioral
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

entity AND_OR_XOR_4bit_bh_tbw is
--  Port ( );
end AND_OR_XOR_4bit_bh_tbw;

architecture Behavioral of AND_OR_XOR_4bit_bh_tbw is

component AND_OR_XOR_4bit_bh is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           X : out STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0);
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal B1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal X1 : STD_LOGIC_VECTOR (3 downto 0);
signal Y1 : STD_LOGIC_VECTOR (3 downto 0);
signal Z1 : STD_LOGIC_VECTOR (3 downto 0);

begin
uut: AND_OR_XOR_4bit_bh Port Map(A => A1, B => B1, X => X1, Y => Y1, Z => Z1);
stim_proc: process
begin
wait for 50ns;
A1 <= "0011";
B1 <= "1100";
wait for 50ns;
A1 <= "1101";
B1 <= "1101";
wait for 50ns;
A1 <= "0001";
B1 <= "1000";
wait;
end process;
end Behavioral;
