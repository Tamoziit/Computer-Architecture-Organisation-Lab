----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 17:42:31
-- Design Name: 
-- Module Name: HS_bh_tbw - Behavioral
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

entity HS_bh_tbw is
--  Port ( );
end HS_bh_tbw;

architecture Behavioral of HS_bh_tbw is

component HS_bh is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           D : out STD_LOGIC;
           B : out STD_LOGIC);
end component;

signal X1 : STD_LOGIC := '0';
signal Y1 : STD_LOGIC := '0';
signal D1 : STD_LOGIC;
signal B1 : STD_LOGIC;

begin
uut: HS_bh Port Map(X => X1, Y => Y1, D => D1, B => B1);
stim_proc: process
begin
wait for 50ns;
X1 <= '0';
Y1 <= '0';
wait for 50ns;
X1 <= '0';
Y1 <= '1';
wait for 50ns;
X1 <= '1';
Y1 <= '0';
wait for 50ns;
X1 <= '1';
Y1 <= '1';
wait;
end process;
end Behavioral;
