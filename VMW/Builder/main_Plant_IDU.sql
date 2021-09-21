@"C:\Users\VMWare Rums\Desktop\DDS Project VMW\VMW\Builder\Insert_Plant.sql";
@"C:\Users\VMWare Rums\Desktop\DDS Project VMW\VMW\Builder\Delete_Plant.sql";
@"C:\Users\VMWare Rums\Desktop\DDS Project VMW\VMW\Builder\Update_Plant.sql";
clear screen;
set linesize 500;

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE

BEGIN

	DBMS_OUTPUT.PUT_LINE('Plants List: ');
	DBMS_OUTPUT.PUT_LINE('1. Apple  2. Blue Bells  3. Grapes  4. Sage  5. Snapdragon  6. Noxious Elderberry  7. Lily  8. Potato  9. Muckleberry  10. Fireleaf'); 
	DBMS_OUTPUT.PUT_LINE('11. Plasma Fruit  12. Black Beans  13. Cherry  14. Blackberry  15. Bonsai Buds  16. Death Flower  17. Orchid  18. Pomegranate  19. Bizarre Fruit  20. Mandrake Root');
	DBMS_OUTPUT.PUT_LINE('	');
	DBMS_OUTPUT.PUT_LINE('Choices:');
	DBMS_OUTPUT.PUT_LINE('1. Insert');
	DBMS_OUTPUT.PUT_LINE('2. Delete');
	DBMS_OUTPUT.PUT_LINE('3. Update');
	
	
End;
/


@"C:\Users\VMWare Rums\Desktop\DDS Project VMW\VMW\Builder\Selection_Plant_IDU.sql";

COMMIT;