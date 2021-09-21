CREATE OR REPLACE PACKAGE InsectPack AS

	PROCEDURE SearchInsect(iName IN PlantV.Name%TYPE);
	
END InsectPack;
/

CREATE OR REPLACE PACKAGE BODY InsectPack AS

	PROCEDURE SearchInsect(iName IN PlantV.Name%TYPE)
	IS
		isFound NUMBER := 0;
	

	BEGIN

		FOR R IN (select * from ViewInsect) LOOP
			IF R.Insect_Name = iName THEN
				isFound := 1;
				
				DBMS_OUTPUT.PUT_LINE('Rarity  = ' || R.Insect_Rarity);
				DBMS_OUTPUT.PUT_LINE('Simoleons  = ' || R.Insect_Simoleons);
				DBMS_OUTPUT.PUT_LINE('Times  = ' || R.Insect_Time);
				DBMS_OUTPUT.PUT_LINE('Place  = ' || R.Insect_Place);

			
			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select * from ViewInsect) LOOP
				IF R.Insect_Name <> iName THEN
					RAISE NO_DATA_FOUND;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Wrong Input!!!');
		

	END SearchInsect;
	
	
End InsectPack;
/
