LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY Adil_mymux21 IS
	PORT(x1, x2, S :IN STD_LOGIC ;
	f      			:OUT STD_LOGIC);
END Adil_mymux21 ;

ARCHITECTURE Logic OF Adil_mymux21 IS
BEGIN
	f <=    (x1 AND NOT S) OR (x2 AND S) ;
END Logic ;