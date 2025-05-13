----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 21:10:20
-- Design Name: 
-- Module Name: Comparator_4bit_LG_df_tbw - dataflow
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

entity Comparator_4bit_LG_df_tbw is
--  Port ( );
end Comparator_4bit_LG_df_tbw;

architecture dataflow of Comparator_4bit_LG_df_tbw is

component Comparator_4bit_LG_df is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           eq : out STD_LOGIC;
           lt : out STD_LOGIC;
           gt : out STD_LOGIC);
end component;

signal A1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal B1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal eq1 : STD_LOGIC;
signal lt1 : STD_LOGIC;
signal gt1 : STD_LOGIC;

begin
uut: Comparator_4bit_LG_df Port Map(A => A1, B => B1, eq => eq1, lt => lt1, gt => gt1);
stim_proc: process
begin
wait for 100ns;
A1 <= "0100";
B1 <= "0000";
wait for 100ns;
A1 <= "1000";
B1 <= "1000";
wait for 100ns;
A1 <= "1000";
B1 <= "1111";
wait for 100ns;
A1 <= "0110";
B1 <= "0101";
wait;
end process;
end dataflow;
