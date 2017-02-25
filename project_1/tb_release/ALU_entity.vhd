library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ARM_alu is
	port (
		operand1 : in std_logic_vector (31 downto 0);
		operand2 : in std_logic_vector (31 downto 0);
		result : out std_logic_vector (31 downto 0);
		instruction : in std_logic_vector (31 downto 0);
		N_in, Z_in, C_in, V_in, shifter_carry : in std_logic;
		next_N, next_Z, next_C, next_V : out std_logic;
		predicate : out std_logic
	);
end;
architecture behavioural of ARM_alu is
------------------------------------------------------------------------------------------------------------------------
--IMPORTANT INSTRUCTIONS FOR STUDENTS
--fill up the below portion of the code as a part of assignment-5
--No change in any other part of the code is expected from this assignment and will cause unwanted failures.
------------------------------------------------------------------------------------------------------------------------
end behavioural;
