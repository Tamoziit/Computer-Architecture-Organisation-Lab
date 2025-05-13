----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 23:03:42
-- Design Name: 
-- Module Name: Decoder_4_16_st_tbw - Structural
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

entity Decoder_4_16_st_tbw is
--  Port ( );
end Decoder_4_16_st_tbw;

architecture Structural of Decoder_4_16_st_tbw is

component Decoder_4_16_st is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           OP : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal IP1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal OP1 : STD_LOGIC_VECTOR (15 downto 0);

begin
uut: Decoder_4_16_st Port Map(IP => IP1, OP => OP1);
stim_proc: process
begin
wait for 50ns;
IP1 <= "0000";
wait for 50ns;
IP1 <= "0001";
wait for 50ns;
IP1 <= "0010";
wait for 50ns;
IP1 <= "0011";
wait for 50ns;
IP1 <= "0100";
wait for 50ns;
IP1 <= "0101";
wait for 50ns;
IP1 <= "0110";
wait for 50ns;
IP1 <= "0111";
wait for 50ns;
IP1 <= "1000";
wait for 50ns;
IP1 <= "1001";
wait for 50ns;
IP1 <= "1010";
wait for 50ns;
IP1 <= "1011";
wait for 50ns;
IP1 <= "1100";
wait for 50ns;
IP1 <= "1101";
wait for 50ns;
IP1 <= "1110";
wait for 50ns;
IP1 <= "1111";
wait;
end process;
end Structural;
