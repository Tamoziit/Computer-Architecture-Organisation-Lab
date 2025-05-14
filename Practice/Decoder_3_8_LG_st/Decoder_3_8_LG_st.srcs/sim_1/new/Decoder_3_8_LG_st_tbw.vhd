----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 10:56:12
-- Design Name: 
-- Module Name: Decoder_3_8_LG_st_tbw - Structural
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

entity Decoder_3_8_LG_st_tbw is
--  Port ( );
end Decoder_3_8_LG_st_tbw;

architecture Structural of Decoder_3_8_LG_st_tbw is

component Decoder_3_8_LG_st is
    Port ( IP : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal IP1 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal OP1 : STD_LOGIC_VECTOR (7 downto 0);

begin
uut: Decoder_3_8_LG_st Port Map(IP => IP1, OP => OP1);
stim_proc: process
begin
wait for 50ns;
IP1 <= "000";
wait for 50ns;
IP1 <= "001";
wait for 50ns;
IP1 <= "010";
wait for 50ns;
IP1 <= "011";
wait for 50ns;
IP1 <= "100";
wait for 50ns;
IP1 <= "101";
wait for 50ns;
IP1 <= "110";
wait for 50ns;
IP1 <= "111";
wait;
end process;
end Structural;
