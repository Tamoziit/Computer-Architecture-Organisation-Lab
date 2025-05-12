----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2025 23:43:50
-- Design Name: 
-- Module Name: MUX_8_1_st_tbw - Structural
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

entity MUX_8_1_st_tbw is
--  Port ( );
end MUX_8_1_st_tbw;

architecture Structural of MUX_8_1_st_tbw is

component MUX_8_1_st is
    Port ( IP : in STD_LOGIC_VECTOR (7 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC);
end component;

signal IP1 : STD_LOGIC_VECTOR (7 downto 0) := "11001010";
signal Sel1 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal OP1 : STD_LOGIC;

begin
uut: MUX_8_1_st Port Map(IP => IP1, Sel => Sel1, OP => OP1);
stim_proc: process
begin
wait for 50ns;
Sel1 <= "000";
wait for 50ns;
Sel1 <= "001";
wait for 50ns;
Sel1 <= "010";
wait for 50ns;
Sel1 <= "011";
wait for 50ns;
Sel1 <= "100";
wait for 50ns;
Sel1 <= "101";
wait for 50ns;
Sel1 <= "110";
wait for 50ns;
Sel1 <= "111";
wait;
end process;
end Structural;
