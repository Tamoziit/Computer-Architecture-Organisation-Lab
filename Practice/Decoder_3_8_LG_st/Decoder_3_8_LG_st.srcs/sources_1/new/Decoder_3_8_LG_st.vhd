----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 10:43:11
-- Design Name: 
-- Module Name: Decoder_3_8_LG_st - Structural
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

entity Decoder_3_8_LG_st is
    Port ( IP : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_8_LG_st;

architecture Structural of Decoder_3_8_LG_st is

component AND_3ip_df is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

component NOT_df is
    Port ( X : in STD_LOGIC;
           Z : out STD_LOGIC);
end component;

signal A, B, C: STD_LOGIC;
signal AN, BN, CN: STD_LOGIC;

begin
A <= IP(2);
B <= IP(1);
C <= IP(0);

L1_NOT: NOT_df Port Map(A, AN);
L2_NOT: NOT_df Port Map(B, BN);
L3_NOT: NOT_df Port Map(C, CN);

L1_D: AND_3ip_df Port Map(AN, BN, CN, OP(0));
L2_D: AND_3ip_df Port Map(AN, BN, C, OP(1));
L3_D: AND_3ip_df Port Map(AN, B, CN, OP(2));
L4_D: AND_3ip_df Port Map(AN, B, C, OP(3));
L5_D: AND_3ip_df Port Map(A, BN, CN, OP(4));
L6_D: AND_3ip_df Port Map(A, BN, C, OP(5));
L7_D: AND_3ip_df Port Map(A, B, CN, OP(6));
L8_D: AND_3ip_df Port Map(A, B, C, OP(7));
end Structural;
