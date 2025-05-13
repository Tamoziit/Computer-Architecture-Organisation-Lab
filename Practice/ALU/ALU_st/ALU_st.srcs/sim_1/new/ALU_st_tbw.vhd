----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 02:18:39
-- Design Name: 
-- Module Name: ALU_st_tbw - Structural
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_st_tbw is
--  Port ( );
end ALU_st_tbw;

architecture Structural of ALU_st_tbw is

component ALU_st is
    Port ( A : in unsigned (3 downto 0);
           B : in unsigned (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Res : out unsigned (3 downto 0));
end component;

signal A1 : unsigned (3 downto 0) := "0101";
signal B1 : unsigned (3 downto 0) := "0011";
signal S1 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal Res1 : unsigned (3 downto 0);

begin
uut: ALU_st Port Map(A => A1, B => B1, S => S1, Res => Res1);
stim_process: process
begin
wait for 50ns;
S1 <= "000";
wait for 50ns;
S1 <= "001";
wait for 50ns;
S1 <= "010";
wait for 50ns;
S1 <= "011";
wait for 50ns;
S1 <= "100";
wait for 50ns;
S1 <= "101";
wait for 50ns;
S1 <= "110";
wait for 50ns;
S1 <= "111";
wait;
end process;
end Structural;
