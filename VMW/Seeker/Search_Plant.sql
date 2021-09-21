CREATE OR REPLACE PACKAGE PlantPack AS

	PROCEDURE SearchPlant(pName IN PlantV.Name%TYPE);
	
END PlantPack;
/

CREATE OR REPLACE PACKAGE BODY PlantPack AS

	PROCEDURE SearchPlant(pName IN PlantV.Name%TYPE)
	IS
		isFound NUMBER := 0;
	

	BEGIN

		FOR R IN (select * from ViewPlant) LOOP
			IF R.Plant_Name = pName THEN
				isFound := 1;
				
				DBMS_OUTPUT.PUT_LINE('Rarity  = ' || R.Plant_Rarity);
				DBMS_OUTPUT.PUT_LINE('Simoleons  = ' || R.Plant_Simoleons);
				DBMS_OUTPUT.PUT_LINE('Seasons  = ' || R.Plant_Seasons);
				DBMS_OUTPUT.PUT_LINE('Place  = ' || R.Plant_Place);

			
			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select * from ViewPlant) LOOP
				IF R.Plant_Name <> pName THEN
					RAISE NO_DATA_FOUND;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Wrong Input!!!');
		

	END SearchPlant;
	
	
End PlantPack;
/
