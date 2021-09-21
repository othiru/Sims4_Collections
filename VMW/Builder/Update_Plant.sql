CREATE OR REPLACE TRIGGER rumstriggerUp3
AFTER UPDATE 
OF Rarity
ON PlantV
FOR EACH ROW
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Rarity of ' || :old.Name || ' Updated!!!');
END;
/

CREATE OR REPLACE TRIGGER rumstriggerUp4
AFTER UPDATE 
OF Simoleons
ON PlantV
FOR EACH ROW
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Simoleons of ' || :old.Name || ' Updated!!!');
END;
/


CREATE OR REPLACE PACKAGE PlantPackUp AS

	FUNCTION UpdatePlant(plNameUp IN PlantV.Name%TYPE, plRarityUp IN PlantV.Rarity%TYPE, plSimoleonsUp IN PlantV.Simoleons%TYPE, plSeasonsUp IN PlantV.Name%TYPE, plPlaceUp IN InsectV.Place%TYPE)
	RETURN NUMBER;
	
	PROCEDURE UpdatePlantProc(plNameUp IN PlantV.Name%TYPE, plRarityUp IN PlantV.Rarity%TYPE, plSimoleonsUp IN PlantV.Simoleons%TYPE, plSeasonsUp IN PlantV.Name%TYPE, plPlaceUp IN InsectV.Place%TYPE);

END PlantPackUp;
/

CREATE OR REPLACE PACKAGE BODY PlantPackUp AS

	FUNCTION UpdatePlant(plNameUp IN PlantV.Name%TYPE, plRarityUp IN PlantV.Rarity%TYPE, plSimoleonsUp IN PlantV.Simoleons%TYPE, plSeasonsUp IN PlantV.Name%TYPE, plPlaceUp IN InsectV.Place%TYPE)
	RETURN NUMBER
	IS
		isFound NUMBER := 0;
	

	BEGIN

		FOR R IN (select Name from PlantV) LOOP
			IF R.Name = plNameUp THEN
				isFound := 1;
				UpdatePlantProc(plNameUp,plRarityUp,plSimoleonsUp,plSeasonsUp,plPlaceUp);
				return isFound;

			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select Name from PlantV) LOOP
				IF R.Name <> plNameUp THEN
					RAISE NO_DATA_FOUND;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Wrong Input!!!');
			return isFound;
		

	END UpdatePlant;
	
	
	PROCEDURE UpdatePlantProc(plNameUp IN PlantV.Name%TYPE, plRarityUp IN PlantV.Rarity%TYPE, plSimoleonsUp IN PlantV.Simoleons%TYPE, plSeasonsUp IN PlantV.Name%TYPE, plPlaceUp IN InsectV.Place%TYPE)
	IS
		
	BEGIN
		
		IF plRarityUp is Not Null THEN 
			Update PlantV set Rarity = plRarityUp where PlantV.Name = plNameUp;
		END IF;
		IF plSimoleonsUp is Not Null THEN
			Update PlantV set Simoleons = plSimoleonsUp where PlantV.Name = plNameUp;
			
		END IF;
		IF plSeasonsUp is Not Null THEN
			Update Plant@lptp set Seasons = plSeasonsUp where plid = (SELECT PlantV.plid from PlantV where PlantV.Name = plNameUp);
			DBMS_OUTPUT.PUT_LINE('Seasons of ' || plNameUp || ' Updated!!!');
		END IF;
		IF plPlaceUp is Not Null THEN
			Update Plant@lptp set Place = plPlaceUp where plid = (SELECT PlantV.plid from PlantV where PlantV.Name = plNameUp);
			DBMS_OUTPUT.PUT_LINE('Place of ' || plNameUp || ' Updated!!!');
		END IF;
		
	END UpdatePlantProc;
	
	
End PlantPackUp;
/

