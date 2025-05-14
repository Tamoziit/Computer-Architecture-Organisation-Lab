----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 02:39:54
-- Design Name: 
-- Module Name: Func1_df_tbw - dataflow
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

entity Func1_df_tbw is
--  Port ( );
end Func1_df_tbw;

architecture dataflow of Func1_df_tbw is

component Func1_df is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           R : out STD_LOGIC);
end component;

signal A1 : STD_LOGIC := '0';
signal B1 : STD_LOGIC := '0';
signal C1 : STD_LOGIC := '0';
signal R1 : STD_LOGIC;

begin
uut: Func1_df Port Map(A => A1, B => B1, C => C1, R => R1);
stim_proc: process
begin
wait for 50ns;
A1 <= '0';
B1 <= '0';
C1 <= '0';
wait for 50ns;
A1 <= '0';
B1 <= '0';
C1 <= '1';
wait for 50ns;
A1 <= '0';
B1 <= '1';
C1 <= '0';
wait for 50ns;
A1 <= '0';
B1 <= '1';
C1 <= '1';
wait for 50ns;
A1 <= '1';
B1 <= '0';
C1 <= '0';
wait for 50ns;
A1 <= '1';
B1 <= '0';
C1 <= '1';
wait for 50ns;
A1 <= '1';
B1 <= '1';
C1 <= '0';
wait for 50ns;
A1 <= '1';
B1 <= '1';
C1 <= '1';
wait;
end process;
end dataflow;
