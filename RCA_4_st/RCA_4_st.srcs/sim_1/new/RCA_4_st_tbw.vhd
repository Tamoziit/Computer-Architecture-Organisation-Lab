----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2025 21:17:43
-- Design Name: 
-- Module Name: RCA_4_st_tbw - Structural
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

entity RCA_4_st_tbw is
--  Port ( );
end RCA_4_st_tbw;

architecture Structural of RCA_4_st_tbw is

component RCA_4_st is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end component;

signal A1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal B1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal Cin1 : STD_LOGIC := '0';
signal Sum1 : STD_LOGIC_VECTOR (3 downto 0);
signal Cout1 : STD_LOGIC;

begin
uut: RCA_4_st Port Map(A => A1, B => B1, Cin => Cin1, Sum => Sum1, Cout => Cout1);
stiim_proc: process
begin
wait for 100ns;
A1 <= "0001";
B1 <= "0010";
Cin1 <= '0';
wait for 100ns;
A1 <= "0101";
B1 <= "0101";
Cin1 <= '1';
wait for 100ns;
A1 <= "0111";
B1 <= "0100";
Cin1 <= '0';
wait for 100ns;
A1 <= "0101";
B1 <= "1010";
Cin1 <= '1';
wait for 100ns;
A1 <= "1001";
B1 <= "1001";
Cin1 <= '0';
wait for 100ns;
A1 <= "1101";
B1 <= "1100";
Cin1 <= '1';
wait;
end process;
end Structural;
