----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 20:00:23
-- Design Name: 
-- Module Name: Decoder_3_8_LG_df - dataflow
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

entity Decoder_3_8_LG_df is
    Port ( IP : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_8_LG_df;

architecture dataflow of Decoder_3_8_LG_df is

begin
OP(0) <= (NOT IP(2)) AND (NOT IP(1)) AND (NOT IP(0));
OP(1) <= (NOT IP(2)) AND (NOT IP(1)) AND IP(0);
OP(2) <= (NOT IP(2)) AND IP(1) AND (NOT IP(0));
OP(3) <= (NOT IP(2)) AND IP(1) AND IP(0);
OP(4) <= IP(2) AND (NOT IP(1)) AND (NOT IP(0));
OP(5) <= IP(2) AND (NOT IP(1)) AND IP(0);
OP(6) <= IP(2) AND IP(1) AND (NOT IP(0));
OP(7) <= IP(2) AND IP(1) AND IP(0);
end dataflow;
