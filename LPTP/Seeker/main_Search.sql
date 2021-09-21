@"C:\Users\User\Desktop\DDS Project\LPTP\Seeker\Search_Insect.sql";
@"C:\Users\User\Desktop\DDS Project\LPTP\Seeker\Search_Plant.sql";

clear screen;

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE

BEGIN
	DBMS_OUTPUT.PUT_LINE('Insects List : ');
	DBMS_OUTPUT.PUT_LINE('1. Bee  2. Blue Morpho Butterfly  3. Fire Ant  4. Firefly  5. Jezebel Butterfly  6. Katydid  7. Ladybug  8. Luna Moth  9. Mosquito  10. Stink Bug');
	DBMS_OUTPUT.PUT_LINE('11. Termite  12. Dragonfly  13. Jewel Beetle  14. Locust  15. Mantis  16. Monarch Butterfly  17. Walking Stick  18. Dragon Dragonfly  19. Dust Spirit  20. Rainbow Firefly  21. Will-o-the-Wisp');
	DBMS_OUTPUT.PUT_LINE('	');
	DBMS_OUTPUT.PUT_LINE('Plants List: ');
	DBMS_OUTPUT.PUT_LINE('1. Apple  2. Blue Bells  3. Grapes  4. Sage  5. Snapdragon  6. Noxious Elderberry  7. Lily  8. Potato  9. Muckleberry  10. Fireleaf'); 
	DBMS_OUTPUT.PUT_LINE('11. Plasma Fruit  12. Black Beans  13. Cherry  14. Blackberry  15. Bonsai Buds  16. Death Flower  17. Orchid  18. Pomegranate  19. Bizarre Fruit  20. Mandrake Root');

	DBMS_OUTPUT.PUT_LINE('	');
	DBMS_OUTPUT.PUT_LINE('Choices:');
	DBMS_OUTPUT.PUT_LINE('1. Insect Information');
	DBMS_OUTPUT.PUT_LINE('2. Plant Information');
	DBMS_OUTPUT.PUT_LINE('	');
	DBMS_OUTPUT.PUT_LINE('------------------------------Information Desk------------------------------');
	
	
End;
/



@"C:\Users\User\Desktop\DDS Project\LPTP\Seeker\Selection_Search.sql";