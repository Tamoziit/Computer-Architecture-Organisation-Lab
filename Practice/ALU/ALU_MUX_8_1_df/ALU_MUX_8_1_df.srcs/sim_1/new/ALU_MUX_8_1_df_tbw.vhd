----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 01:49:22
-- Design Name: 
-- Module Name: ALU_MUX_8_1_df_tbw - dataflow
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

entity ALU_MUX_8_1_df_tbw is
--  Port ( );
end ALU_MUX_8_1_df_tbw;

architecture dataflow of ALU_MUX_8_1_df_tbw is

component ALU_MUX_8_1_df is
    Port ( D0, D1, D2, D3, D4, D5, D6, D7 : in unsigned(3 downto 0);
           Sel : in STD_LOGIC_VECTOR(2 downto 0);
           Res   : out unsigned(3 downto 0));
end component;

signal D0_1: unsigned(3 downto 0) := "0110";
signal D1_1: unsigned(3 downto 0) := "0100";
signal D2_1: unsigned(3 downto 0) := "0111";
signal D3_1: unsigned(3 downto 0) := "0010";
signal D4_1: unsigned(3 downto 0) := "1010";
signal D5_1: unsigned(3 downto 0) := "1100";
signal D6_1: unsigned(3 downto 0) := "1110";
signal D7_1: unsigned(3 downto 0) := "1000";
signal Sel1: STD_LOGIC_VECTOR(2 downto 0) := "000";
signal Res1: unsigned(3 downto 0);

begin
uut: ALU_MUX_8_1_df Port Map(D0 => D0_1, D1 => D1_1, D2 => D2_1, D3 => D3_1, D4 => D4_1, D5 => D5_1, D6 => D6_1, D7 => D7_1, Sel => Sel1, Res => Res1);
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
end dataflow;
