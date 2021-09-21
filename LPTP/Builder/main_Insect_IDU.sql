@"C:\Users\User\Desktop\DDS Project\LPTP\Builder\Insert_Insect.sql";
@"C:\Users\User\Desktop\DDS Project\LPTP\Builder\Delete_Insect.sql";
@"C:\Users\User\Desktop\DDS Project\LPTP\Builder\Update_Insect.sql";
clear screen;
set linesize 500;

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE

BEGIN
	DBMS_OUTPUT.PUT_LINE('Insects List : ');
	DBMS_OUTPUT.PUT_LINE('1. Bee  2. Blue Morpho Butterfly  3. Fire Ant  4. Firefly  5. Jezebel Butterfly  6. Katydid  7. Ladybug  8. Luna Moth  9. Mosquito  10. Stink Bug');
	DBMS_OUTPUT.PUT_LINE('11. Termite  12. Dragonfly  13. Jewel Beetle  14. Locust  15. Mantis  16. Monarch Butterfly  17. Walking Stick  18. Dragon Dragonfly  19. Dust Spirit  20. Rainbow Firefly  21. Will-o-the-Wisp');
	DBMS_OUTPUT.PUT_LINE('	');
	DBMS_OUTPUT.PUT_LINE('Choices:');
	DBMS_OUTPUT.PUT_LINE('1. Insert');
	DBMS_OUTPUT.PUT_LINE('2. Delete');
	DBMS_OUTPUT.PUT_LINE('3. Update');
	
	
End;
/



@"C:\Users\User\Desktop\DDS Project\LPTP\Builder\Selection_Insect_IDU.sql";

commit;