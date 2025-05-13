----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 02:00:19
-- Design Name: 
-- Module Name: ALU_st - Structural
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

entity ALU_st is
    Port ( A : in unsigned (3 downto 0);
           B : in unsigned (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Res : out unsigned (3 downto 0));
end ALU_st;

architecture Structural of ALU_st is

component ALU_ADD_df is
    Port ( X : in unsigned (3 downto 0);
           Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_SUB_df is
    Port ( X : in unsigned (3 downto 0);
           Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_INC_df is
    Port ( X : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_DEC_df is
    Port ( Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_AND_df is
    Port ( X : in unsigned (3 downto 0);
           Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_OR_df is
    Port ( X : in unsigned (3 downto 0);
           Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_NOT_df is
    Port ( X : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_XOR_df is
    Port ( X : in unsigned (3 downto 0);
           Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end component;

component ALU_MUX_8_1_df is
    Port ( D0, D1, D2, D3, D4, D5, D6, D7 : in unsigned(3 downto 0);
           Sel : in STD_LOGIC_VECTOR(2 downto 0);
           Res : out unsigned(3 downto 0));
end component;

signal R_add, R_sub, R_inc, R_dec, R_and, R_or, R_not, R_xor: unsigned (3 downto 0);

begin
L1: ALU_ADD_df Port Map(A, B, R_add);
L2: ALU_SUB_df Port Map(A, B, R_sub);
L3: ALU_INC_df Port Map(A, R_inc);
L4: ALU_DEC_df Port Map(B, R_dec);
L5: ALU_AND_df Port Map(A, B, R_and);
L6: ALU_OR_df Port Map(A, B, R_or);
L7: ALU_NOT_df Port Map(A, R_not);
L8: ALU_XOR_df Port Map(A, B, R_xor);
L9: ALU_MUX_8_1_df Port Map(R_add, R_sub, R_inc, R_dec, R_and, R_or, R_not, R_xor, S, Res);
end Structural;
