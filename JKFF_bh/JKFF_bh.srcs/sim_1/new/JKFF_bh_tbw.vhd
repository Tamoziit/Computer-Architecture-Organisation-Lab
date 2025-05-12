----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 01:20:26
-- Design Name: 
-- Module Name: JKFF_bh_tbw - Behavioral
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

entity JKFF_bh_tbw is
--  Port ( );
end JKFF_bh_tbw;

architecture Behavioral of JKFF_bh_tbw is

component JKFF_bh is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC;
           QN : inout STD_LOGIC);
end component;

constant clock_period : time := 50ns;

signal J1 : STD_LOGIC := '0';
signal K1 : STD_LOGIC := '0';
signal CLK1 : STD_LOGIC := '0';
signal Q1 : STD_LOGIC;
signal QN1 : STD_LOGIC;

begin
uut: JKFF_bh Port Map(J => J1, K => K1, CLK => CLK1, Q => Q1, QN => QN1);
CLK1 <= NOT CLK1 after clock_period/2;
stim_proc: process
begin
wait for 50ns;
J1 <= '0';
K1 <= '1';
wait for 50ns;
J1 <= '0';
K1 <= '0';
wait for 50ns;
J1 <= '1';
K1 <= '0';
wait for 50ns;
J1 <= '1';
K1 <= '1';
wait for 50ns;
J1 <= '1';
K1 <= '0';
wait for 50ns;
J1 <= '0';
K1 <= '1';
wait for 50ns;
J1 <= '0';
K1 <= '0';
wait for 50ns;
J1 <= '1';
K1 <= '0';
wait for 50ns;
J1 <= '1';
K1 <= '1';
wait for 50ns;
J1 <= '0';
K1 <= '0';
wait for 50ns;
J1 <= '0';
K1 <= '1';
wait for 50ns;
J1 <= '1';
K1 <= '0';
wait for 50ns;
J1 <= '1';
K1 <= '1';
wait;
end process;
end Behavioral;
