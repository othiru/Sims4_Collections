CREATE OR REPLACE PACKAGE InsectPackDe AS

	FUNCTION DeleteInsect(iNameDe IN Insect.Name%TYPE, iRarityDe IN Insect.Rarity%TYPE, iSimoleonsDe IN Insect.Simoleons%TYPE, iTimesDe IN Insect.Name%TYPE, iPlaceDe IN Plant.Place%TYPE)
	RETURN NUMBER;
	
	PROCEDURE DeleteInsectProc(iNameDe IN Insect.Name%TYPE, iRarityDe IN Insect.Rarity%TYPE, iSimoleonsDe IN Insect.Simoleons%TYPE, iTimesDe IN Insect.Name%TYPE, iPlaceDe IN Plant.Place%TYPE);

END InsectPackDe;
/

CREATE OR REPLACE PACKAGE BODY InsectPackDe AS

	FUNCTION DeleteInsect(iNameDe IN Insect.Name%TYPE, iRarityDe IN Insect.Rarity%TYPE, iSimoleonsDe IN Insect.Simoleons%TYPE, iTimesDe IN Insect.Name%TYPE, iPlaceDe IN Plant.Place%TYPE)
	RETURN NUMBER
	IS
		isFound NUMBER := 0;

	BEGIN

		FOR R IN (select Name from Insect) LOOP
			IF R.Name = iNameDe THEN
				isFound := 1;
				DeleteInsectProc(iNameDe,iRarityDe,iSimoleonsDe,iTimesDe,iPlaceDe);
				return isFound;
			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select Name from Insect) LOOP
				IF R.Name <> iNameDe THEN
					RAISE NO_DATA_FOUND;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Wrong Input!!!');
			return isFound;
		

	END DeleteInsect;
	
	
	PROCEDURE DeleteInsectProc(iNameDe IN Insect.Name%TYPE, iRarityDe IN Insect.Rarity%TYPE, iSimoleonsDe IN Insect.Simoleons%TYPE, iTimesDe IN Insect.Name%TYPE, iPlaceDe IN Plant.Place%TYPE)
	IS
	
	iinidDe Number;
				
	BEGIN
		Select inid into iinidDe from Insect where Name=iNameDe;
		Delete from Insect where Name=iNameDe;
		Delete from InsectV@vmw Where inid=iinidDe;
		DBMS_OUTPUT.PUT_LINE('Selected data is deleted.');

	END DeleteInsectProc;
	
	
End InsectPackDe;
/

