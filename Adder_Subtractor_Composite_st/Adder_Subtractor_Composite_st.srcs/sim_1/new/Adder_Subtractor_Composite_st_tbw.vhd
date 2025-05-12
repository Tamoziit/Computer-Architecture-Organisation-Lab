----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2025 22:55:02
-- Design Name: 
-- Module Name: Adder_Subtractor_Composite_st_tbw - Structural
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

entity Adder_Subtractor_Composite_st_tbw is
--  Port ( );
end Adder_Subtractor_Composite_st_tbw;

architecture Structural of Adder_Subtractor_Composite_st_tbw is

component Adder_Subtractor_Composite_st is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CS : in STD_LOGIC;
           Res : out STD_LOGIC_VECTOR (3 downto 0);
           CB : out STD_LOGIC);
end component;

signal A1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal B1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal CS1 : STD_LOGIC := '0';
signal Res1 : STD_LOGIC_VECTOR (3 downto 0);
signal CB1 : STD_LOGIC;

begin
uut: Adder_Subtractor_Composite_st Port Map(A => A1, B => B1, CS => CS1, Res => Res1, CB => CB1);
stiim_proc: process
begin
wait for 100ns;
A1 <= "0001";
B1 <= "0010";
CS1 <= '0';
wait for 100ns;
A1 <= "0101";
B1 <= "0101";
CS1 <= '1';
wait for 100ns;
A1 <= "0111";
B1 <= "0100";
CS1 <= '0';
wait for 100ns;
A1 <= "0101";
B1 <= "1010";
CS1 <= '1';
wait for 100ns;
A1 <= "1001";
B1 <= "1001";
CS1 <= '0';
wait for 100ns;
A1 <= "1101";
B1 <= "1100";
CS1 <= '1';
wait;
end process;
end Structural;
