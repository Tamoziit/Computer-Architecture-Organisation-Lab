----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 22:55:54
-- Design Name: 
-- Module Name: Decoder_4_16_st - Structural
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

entity Decoder_4_16_st is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           OP : out STD_LOGIC_VECTOR (15 downto 0));
end Decoder_4_16_st;

architecture Structural of Decoder_4_16_st is

component Decoder_3_8_df is
    Port ( IP : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal En_low, En_high: STD_LOGIC;
signal D_low: STD_LOGIC_VECTOR (7 downto 0);
signal D_high: STD_LOGIC_VECTOR (7 downto 0);

begin
En_low <= NOT IP(3);
En_high <= IP(3);

L1: Decoder_3_8_df Port Map(IP(2 downto 0), D_low(7 downto 0));
L2: Decoder_3_8_df Port Map(IP(2 downto 0), D_high(7 downto 0));

OP(7 downto 0) <= D_low when En_low = '1' else (others => '0');
OP(15 downto 8) <= D_high when En_high = '1' else (others => '0');
end Structural;
