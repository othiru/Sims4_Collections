CREATE OR REPLACE PACKAGE PlantPackIn AS

	FUNCTION InsertPlant(plNameIn IN PlantV.Name%TYPE, plRarityIn IN PlantV.Rarity%TYPE, plSimoleonsIn IN PlantV.Simoleons%TYPE, plSeasonsIn IN PlantV.Name%TYPE, plPlaceIn IN InsectV.Place%TYPE)
	RETURN NUMBER;
	
	PROCEDURE InsertPlantProc(plNameIn IN PlantV.Name%TYPE, plRarityIn IN PlantV.Rarity%TYPE, plSimoleonsIn IN PlantV.Simoleons%TYPE, plSeasonsIn IN PlantV.Name%TYPE, plPlaceIn IN InsectV.Place%TYPE);

END PlantPackIn;
/

CREATE OR REPLACE PACKAGE BODY PlantPackIn AS

	FUNCTION InsertPlant(plNameIn IN PlantV.Name%TYPE, plRarityIn IN PlantV.Rarity%TYPE, plSimoleonsIn IN PlantV.Simoleons%TYPE, plSeasonsIn IN PlantV.Name%TYPE, plPlaceIn IN InsectV.Place%TYPE)
	RETURN NUMBER
	IS
		isFound NUMBER := 0;
		WrongInsert EXCEPTION;

	BEGIN

		FOR R IN (select Name from PlantV) LOOP
			IF R.Name = plNameIn THEN
				isFound := 1;
				RAISE WrongInsert;
			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select Name from PlantV) LOOP
				IF R.Name <> plNameIn THEN
					InsertPlantProc(plNameIn,plRarityIn,plSimoleonsIn,plSeasonsIn,plPlaceIn);
					return isFound;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN WrongInsert THEN
			DBMS_OUTPUT.PUT_LINE('Data is already there!!!');
			return isFound;
		

	END InsertPlant;
	
	
	PROCEDURE InsertPlantProc(plNameIn IN PlantV.Name%TYPE, plRarityIn IN PlantV.Rarity%TYPE, plSimoleonsIn IN PlantV.Simoleons%TYPE, plSeasonsIn IN PlantV.Name%TYPE, plPlaceIn IN InsectV.Place%TYPE)
	IS
	
	pplidIn Number;
				
	BEGIN
		Select MAX (plid) into pplidIn from PlantV;
		pplidIn := pplidIn + 1;
		Insert into PlantV(plid,Name,Rarity,Simoleons) values(pplidIn,plNameIn,plRarityIn,plSimoleonsIn);
		Insert into Plant@lptp(plid,Seasons,Place) values(pplidIn,plSeasonsIn,plPlaceIn);
		DBMS_OUTPUT.PUT_LINE('New data is inserted.');

	END InsertPlantProc;
	
	
End PlantPackIn;
/

