----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2025 21:35:56
-- Design Name: 
-- Module Name: OR_NOR_df_tbw - dataflow
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

entity OR_NOR_df_tbw is
--  Port ( );
end OR_NOR_df_tbw;

architecture dataflow of OR_NOR_df_tbw is

component OR_NOR_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC);
end component;

signal x1 : STD_LOGIC := '0';
signal y1 : STD_LOGIC := '0';
signal z1 : STD_LOGIC;

begin
uut: OR_NOR_df Port Map(x => x1, y => y1, z => z1);
stim_proc: process
begin
wait for 50ns;
x1 <= '0';
y1 <= '0';
wait for 50ns;
x1 <= '0';
y1 <= '1';
wait for 50ns;
x1 <= '1';
y1 <= '0';
wait for 50ns;
x1 <= '1';
y1 <= '1';
wait;
end process;
end dataflow;
