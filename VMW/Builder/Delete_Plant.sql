CREATE OR REPLACE PACKAGE PlantPackDe AS

	FUNCTION DeletePlant(plNameDe IN PlantV.Name%TYPE, plRarityDe IN PlantV.Rarity%TYPE, plSimoleonsDe IN PlantV.Simoleons%TYPE, plSeasonsDe IN PlantV.Name%TYPE, plPlaceDe IN InsectV.Place%TYPE)
	RETURN NUMBER;
	
	PROCEDURE DeletePlantProc(plNameDe IN PlantV.Name%TYPE, plRarityDe IN PlantV.Rarity%TYPE, plSimoleonsDe IN PlantV.Simoleons%TYPE, plSeasonsDe IN PlantV.Name%TYPE, plPlaceDe IN InsectV.Place%TYPE);

END PlantPackDe;
/

CREATE OR REPLACE PACKAGE BODY PlantPackDe AS

	FUNCTION DeletePlant(plNameDe IN PlantV.Name%TYPE, plRarityDe IN PlantV.Rarity%TYPE, plSimoleonsDe IN PlantV.Simoleons%TYPE, plSeasonsDe IN PlantV.Name%TYPE, plPlaceDe IN InsectV.Place%TYPE)
	RETURN NUMBER
	IS
		isFound NUMBER := 0;

	BEGIN

		FOR R IN (select Name from PlantV) LOOP
			IF R.Name = plNameDe THEN
				isFound := 1;
				DeletePlantProc(plNameDe,plRarityDe,plSimoleonsDe,plSeasonsDe,plPlaceDe);
				return isFound;
			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select Name from PlantV) LOOP
				IF R.Name <> plNameDe THEN
					RAISE NO_DATA_FOUND;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Wrong Input!!!');
			return isFound;
		

	END DeletePlant;
	
	
	PROCEDURE DeletePlantProc(plNameDe IN PlantV.Name%TYPE, plRarityDe IN PlantV.Rarity%TYPE, plSimoleonsDe IN PlantV.Simoleons%TYPE, plSeasonsDe IN PlantV.Name%TYPE, plPlaceDe IN InsectV.Place%TYPE)
	IS
	
	pplidDe Number;
				
	BEGIN
		Select plid into pplidDe from PlantV where Name=plNameDe;
		Delete from PlantV where Name=plNameDe;
		Delete from Plant@lptp Where plid=pplidDe;
		DBMS_OUTPUT.PUT_LINE('Selected data is deleted.');

	END DeletePlantProc;
	
	
End PlantPackDe;
/

