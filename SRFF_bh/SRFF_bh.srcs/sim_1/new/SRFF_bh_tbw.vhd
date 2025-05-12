----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 00:53:02
-- Design Name: 
-- Module Name: SRFF_bh_tbw - Behavioral
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

entity SRFF_bh_tbw is
--  Port ( );
end SRFF_bh_tbw;

architecture Behavioral of SRFF_bh_tbw is

component SRFF_bh is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end component;

constant clock_period : time := 50ns;

signal S1 : STD_LOGIC := '0';
signal R1 : STD_LOGIC := '0';
signal CLK1 : STD_LOGIC := '0';
signal Q1 : STD_LOGIC;
signal QN1 : STD_LOGIC;

begin
uut: SRFF_bh Port Map(S => S1, R => R1, CLK => CLK1, Q => Q1, QN => QN1);
CLK1 <= NOT CLK1 after clock_period/2;
stim_proc: process
begin
wait for 50ns;
S1 <= '0';
R1 <= '1';
wait for 50ns;
S1 <= '0';
R1 <= '0';
wait for 50ns;
S1 <= '1';
R1 <= '0';
wait for 50ns;
S1 <= '1';
R1 <= '1';
wait for 50ns;
S1 <= '1';
R1 <= '0';
wait for 50ns;
S1 <= '0';
R1 <= '1';
wait for 50ns;
S1 <= '0';
R1 <= '0';
wait for 50ns;
S1 <= '1';
R1 <= '0';
wait for 50ns;
S1 <= '1';
R1 <= '1';
wait for 50ns;
S1 <= '0';
R1 <= '0';
wait for 50ns;
S1 <= '0';
R1 <= '1';
wait for 50ns;
S1 <= '1';
R1 <= '0';
wait for 50ns;
S1 <= '1';
R1 <= '1';
wait;
end process;
end Behavioral;
