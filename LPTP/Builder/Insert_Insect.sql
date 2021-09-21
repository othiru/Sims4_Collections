CREATE OR REPLACE PACKAGE InsectPackIn AS

	FUNCTION InsertInsect(iNameIn IN Insect.Name%TYPE, iRarityIn IN Insect.Rarity%TYPE, iSimoleonsIn IN Insect.Simoleons%TYPE, iTimesIn IN Insect.Name%TYPE, iPlaceIn IN Plant.Place%TYPE)
	RETURN NUMBER;
	
	PROCEDURE InsertInsectProc(iNameIn IN Insect.Name%TYPE, iRarityIn IN Insect.Rarity%TYPE, iSimoleonsIn IN Insect.Simoleons%TYPE, iTimesIn IN Insect.Name%TYPE, iPlaceIn IN Plant.Place%TYPE);

END InsectPackIn;
/

CREATE OR REPLACE PACKAGE BODY InsectPackIn AS

	FUNCTION InsertInsect(iNameIn IN Insect.Name%TYPE, iRarityIn IN Insect.Rarity%TYPE, iSimoleonsIn IN Insect.Simoleons%TYPE, iTimesIn IN Insect.Name%TYPE, iPlaceIn IN Plant.Place%TYPE)
	RETURN NUMBER
	IS
		isFound NUMBER := 0;
		WrongInsert EXCEPTION;

	BEGIN

		FOR R IN (select Name from Insect) LOOP
			IF R.Name = iNameIn THEN
				isFound := 1;
				RAISE WrongInsert;
			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select Name from Insect) LOOP
				IF R.Name <> iNameIn THEN
					InsertInsectProc(iNameIn,iRarityIn,iSimoleonsIn,iTimesIn,iPlaceIn);
					return isFound;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN WrongInsert THEN
			DBMS_OUTPUT.PUT_LINE('Data is already there!!!');
			return isFound;
		

	END InsertInsect;
	
	
	PROCEDURE InsertInsectProc(iNameIn IN Insect.Name%TYPE, iRarityIn IN Insect.Rarity%TYPE, iSimoleonsIn IN Insect.Simoleons%TYPE, iTimesIn IN Insect.Name%TYPE, iPlaceIn IN Plant.Place%TYPE)
	IS
	
	iinidIn Number;
				
	BEGIN
		Select MAX (inid) into iinidIn from Insect;
		iinidIn := iinidIn + 1;
		Insert into Insect(inid,Name,Rarity,Simoleons) values(iinidIn,iNameIn,iRarityIn,iSimoleonsIn);
		Insert into InsectV@vmw(inid,Times,Place) values(iinidIn,iTimesIn,iPlaceIn);
		DBMS_OUTPUT.PUT_LINE('New data is inserted.');

	END InsertInsectProc;
	
	
End InsectPackIn;
/

