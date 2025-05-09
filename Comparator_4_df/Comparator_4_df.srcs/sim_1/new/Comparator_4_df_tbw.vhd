----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 23:12:17
-- Design Name: 
-- Module Name: Comparator_4_df_tbw - dataflow
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

entity Comparator_4_df_tbw is
--  Port ( );
end Comparator_4_df_tbw;

architecture dataflow of Comparator_4_df_tbw is

component Comparator_4_df is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           eq : out STD_LOGIC;
           lt : out STD_LOGIC;
           gt : out STD_LOGIC);
end component;

signal x1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal y1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal eq1 : STD_LOGIC;
signal lt1 : STD_LOGIC;
signal gt1 : STD_LOGIC;

begin
uut: Comparator_4_df Port Map(x => x1, y => y1, eq => eq1, lt => lt1, gt => gt1);
stim_proc: process
begin
wait for 100ns;
x1 <= "0100";
y1 <= "0000";
wait for 100ns;
x1 <= "1000";
y1 <= "1000";
wait for 100ns;
x1 <= "1000";
y1 <= "1111";
wait for 100ns;
x1 <= "0110";
y1 <= "0101";
wait;
end process;
end dataflow;
