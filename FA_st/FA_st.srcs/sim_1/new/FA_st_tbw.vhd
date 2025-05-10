----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 18:20:34
-- Design Name: 
-- Module Name: FA_st_tbw - Structural
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

entity FA_st_tbw is
--  Port ( );
end FA_st_tbw;

architecture Structural of FA_st_tbw is

component FA_st is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end component;

signal X1 : STD_LOGIC := '0';
signal Y1 : STD_LOGIC := '0';
signal Z1 : STD_LOGIC := '0';
signal S1 : STD_LOGIC;
signal C1 : STD_LOGIC;

begin
uut: FA_st Port Map(X => X1, Y => Y1, Z => Z1, S => S1, C => C1);
stim_proc: process
begin
wait for 50ns;
X1 <= '0';
Y1 <= '0';
Z1 <= '0';
wait for 50ns;
X1 <= '0';
Y1 <= '0';
Z1 <= '1';
wait for 50ns;
X1 <= '0';
Y1 <= '1';
Z1 <= '0';
wait for 50ns;
X1 <= '0';
Y1 <= '1';
Z1 <= '1';
wait for 50ns;
X1 <= '1';
Y1 <= '0';
Z1 <= '0';
wait for 50ns;
X1 <= '1';
Y1 <= '0';
Z1 <= '1';
wait for 50ns;
X1 <= '1';
Y1 <= '1';
Z1 <= '0';
wait for 50ns;
X1 <= '1';
Y1 <= '1';
Z1 <= '1';
wait;
end process;
end Structural;
